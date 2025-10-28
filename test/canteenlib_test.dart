import 'dart:async';

import 'package:icanteenlib/canteenlib.dart';
import 'package:icanteenlib/legacy.dart' as legacy;
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart';

DotEnv? envSecrets;
Canteen? canteenInstance;
Future<bool>? prihlaseno;
Future<legacy.Jidelnicek>? jidelnicek;
Future<legacy.Jidelnicek>? druhaVydejnaJidelnicek;
Future<List<legacy.Jidelnicek>>? jidelnicekMesic;
Future<legacy.Uzivatel>? uzivatel;
DateTime date = DateTime(2025, 11, 4);
Future<legacy.Uzivatel> ziskatUzivatele() async {
  uzivatel ??= _ziskatUzivatele();
  return uzivatel!;
}

Future<legacy.Uzivatel> _ziskatUzivatele() async {
  envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
  canteenInstance ??= Canteen(envSecrets!["URL"]!);
  return canteenInstance!.ziskejUzivatele();
}

Future<legacy.Jidelnicek> ziskatJidelnicek() async {
  jidelnicek ??= _ziskatJidelnicek();
  return jidelnicek!;
}

Future<legacy.Jidelnicek> _ziskatJidelnicek() async {
  envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
  canteenInstance ??= Canteen(envSecrets!["URL"]!);
  DateTime funkcniDatum = date;
  canteenInstance!.vydejna = 1;
  return await canteenInstance!.jidelnicekDen(den: funkcniDatum);
}

Future<legacy.Jidelnicek> ziskatDruhaVydejnaJidelnicek() async {
  druhaVydejnaJidelnicek ??= _ziskatDruhaVydejnaJidelnicek();
  return druhaVydejnaJidelnicek!;
}

Future<legacy.Jidelnicek> _ziskatDruhaVydejnaJidelnicek() async {
  envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
  canteenInstance ??= Canteen(envSecrets!["URL"]!);
  DateTime funkcniDatum = date;
  canteenInstance!.vydejna = 2;
  return await canteenInstance!.jidelnicekDen(den: funkcniDatum);
}

Future<List<legacy.Jidelnicek>> ziskatJidelnicekMesic() async {
  jidelnicekMesic ??= _ziskatJidelnicekMesic();
  return jidelnicekMesic!;
}

Future<List<legacy.Jidelnicek>> _ziskatJidelnicekMesic() async {
  envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
  canteenInstance ??= Canteen(envSecrets!["URL"]!);
  canteenInstance!.vydejna = 1;
  List<legacy.Jidelnicek> jidelnickyProMesic = await canteenInstance!.jidelnicekMesic();
  return jidelnickyProMesic;
}

Future<bool> prihlasitSe() async {
  prihlaseno ??= _prihlasitSe();
  return prihlaseno!;
}

Future<bool> _prihlasitSe() async {
  envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
  canteenInstance ??= Canteen(envSecrets!["URL"]!);
  if (canteenInstance!.prihlasen) return true;
  return await canteenInstance!.login(envSecrets!["USER"]!, envSecrets!["PASS"]!);
}

void main() {
  group('Test přihlášený Uživatel:', () {
    test('Přihlášení', () async {
      expect(await prihlasitSe(), true);
    });

    group('Jídelníček:', () {
      test('Jídelníček má více výdejen', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vydejny)) return;
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        expect((await jidelnicek!).vydejny.length > 1, true);
      });
      test('Jídelníček není prázdný', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        expect((await jidelnicek!).jidla.isNotEmpty, true);
      });

      test('Jídelníček má aspoň dva obědy', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        expect((await jidelnicek!).jidla.length >= 2, true);
      });

      test('Jídelníček má název', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        print((await jidelnicek!).jidla[0].nazev);
        expect((await jidelnicek!).jidla[0].nazev.isNotEmpty, true);
      });

      test('Jídelníček má cenu', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        expect((await jidelnicek!).jidla[0].cena! > 10, true);
      });

      test('Jídelníček má variantu', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        expect((await jidelnicek!).jidla[0].varianta.isNotEmpty, true);
      });

      test('Jídelníček je kategorizovaný', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        print('--------------------Jídelníček--------------------');
        print('Jídlo: ${(await jidelnicek!).jidla[0].nazev}');
        print('Hlavní jídlo: ${(await jidelnicek!).jidla[0].kategorizovano!.hlavniJidlo}');
        print('pití: ${(await jidelnicek!).jidla[0].kategorizovano!.piti}');
        print('polévka: ${(await jidelnicek!).jidla[0].kategorizovano!.polevka}');
        print('Salátový bar: ${(await jidelnicek!).jidla[0].kategorizovano!.salatovyBar}');
        print('ostatní: ${(await jidelnicek!).jidla[0].kategorizovano!.ostatni}');
        print('--------------------------------------------------');
        expect((await jidelnicek!).jidla[0].kategorizovano!.hlavniJidlo!.isNotEmpty, true);
      });
      test('Jídelníček má alergeny', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        if (canteenInstance!.missingFeatures.contains(Features.alergeny)) return;
        await ziskatJidelnicek();
        expect((await jidelnicek!).jidla[0].alergeny.isNotEmpty, true);
      });

      test('Jídelníček toJson() a fromJson()', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        legacy.Jidelnicek? localJidelnicek = await jidelnicek;
        if (localJidelnicek == null) return;
        expect(localJidelnicek == legacy.Jidelnicek.fromJson(localJidelnicek.toJson()), true);
      });
    });
    group('Jídelníček, druhá výdejna:', () {
      test('Jídelníček má více výdejen', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vydejny)) return;
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        expect((await jidelnicek!).vydejny.length > 1, true);
      });
      test('Jídelníček není prázdný', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vydejny)) return;
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        expect((await jidelnicek!).jidla.isNotEmpty, true);
      });

      test('Jídelníček má aspoň dva obědy', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vydejny)) return;
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        expect((await jidelnicek!).jidla.length >= 2, true);
      });

      test('Jídelníček má název', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vydejny)) return;
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        print((await jidelnicek!).jidla[0].nazev);
        expect((await jidelnicek!).jidla[0].nazev.isNotEmpty, true);
      });

      test('Jídelníček má cenu', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vydejny)) return;
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        expect((await jidelnicek!).jidla[0].cena! > 10, true);
      });

      test('Jídelníček má variantu', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vydejny)) return;
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        expect((await jidelnicek!).jidla[0].varianta.isNotEmpty, true);
      });

      test('Jídelníček je kategorizovaný', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vydejny)) return;
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        print('--------------------Jídelníček--------------------');
        print('Jídlo: ${(await jidelnicek!).jidla[0].nazev}');
        print('Hlavní jídlo: ${(await jidelnicek!).jidla[0].kategorizovano!.hlavniJidlo}');
        print('pití: ${(await jidelnicek!).jidla[0].kategorizovano!.piti}');
        print('polévka: ${(await jidelnicek!).jidla[0].kategorizovano!.polevka}');
        print('Salátový bar: ${(await jidelnicek!).jidla[0].kategorizovano!.salatovyBar}');
        print('ostatní: ${(await jidelnicek!).jidla[0].kategorizovano!.ostatni}');
        print('--------------------------------------------------');
        expect((await jidelnicek!).jidla[0].kategorizovano!.hlavniJidlo!.isNotEmpty, true);
      });
      test('Jídelníček má alergeny', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vydejny)) return;
        if (canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) return;
        if (canteenInstance!.missingFeatures.contains(Features.alergeny)) return;
        await ziskatDruhaVydejnaJidelnicek();
        expect((await jidelnicek!).jidla[0].alergeny.isNotEmpty, true);
      });
    });

    group('Jídelníček měsíc:', () {
      test('Jídelníček má více výdejen', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vydejny)) return;
        if (canteenInstance!.missingFeatures.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        expect((await jidelnicekMesic!)[0].vydejny.length > 1, true);
      });
      test('Jídelníček není prázdný', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        expect((await jidelnicekMesic!)[0].jidla.isNotEmpty, true);
      });

      test('Jídelníček má aspoň jeden oběd', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        expect((await jidelnicekMesic!)[0].jidla.isNotEmpty, true);
      });

      test('Jídelníček má název', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        print((await jidelnicekMesic!)[0].jidla[0].nazev);
        expect((await jidelnicekMesic!)[0].jidla[0].nazev.isNotEmpty, true);
      });

      test('Jídelníček má cenu', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        expect((await jidelnicekMesic!)[0].jidla[0].cena! > 10, true);
      });

      test('Jídelníček má variantu', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        expect((await jidelnicekMesic!)[0].jidla[0].varianta.isNotEmpty, true);
      });

      test('Jídelníček je kategorizovaný', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        print('--------------------Jídelníček--------------------');
        print('Jídlo: ${(await jidelnicekMesic!)[0].jidla[0].nazev}');
        print('Hlavní jídlo: ${(await jidelnicekMesic!)[0].jidla[0].kategorizovano!.hlavniJidlo}');
        print('pití: ${(await jidelnicekMesic!)[0].jidla[0].kategorizovano!.piti}');
        print('polévka: ${(await jidelnicekMesic!)[0].jidla[0].kategorizovano!.polevka}');
        print('Salátový bar: ${(await jidelnicekMesic!)[0].jidla[0].kategorizovano!.salatovyBar}');
        print('ostatní: ${(await jidelnicekMesic!)[0].jidla[0].kategorizovano!.ostatni}');
        print('--------------------------------------------------');
        expect((await jidelnicekMesic!)[0].jidla[0].kategorizovano!.hlavniJidlo!.isNotEmpty, true);
      });
      test('Jídelníček má alergeny', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.vsechnyJidelnicky)) return;
        if (canteenInstance!.missingFeatures.contains(Features.alergeny)) return;
        await ziskatJidelnicekMesic();
        bool alergeny = false;
        for (int i = 0; i < (await jidelnicekMesic!).length; i++) {
          for (int k = 0; k < (await jidelnicekMesic!)[i].jidla.length; k++) {
            if ((await jidelnicekMesic!)[i].jidla[k].alergeny.isNotEmpty) {
              alergeny = true;
              break;
            }
          }
          if (alergeny) break;
        }
        expect(alergeny, true);
      });
    });

    group('Uživatel', () {
      test('Uživatel má kredit', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.uzivatelskeUdaje)) return;
        await ziskatUzivatele();
        expect((await uzivatel!).kredit > -10000 && (await uzivatel!).kredit < 10000, true);
      });

      test('Uživatel má jméno', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.uzivatelskeUdaje)) return;
        await ziskatUzivatele();
        expect((await uzivatel!).jmeno!.isNotEmpty, true);
      });

      test('Uživatel má příjmení', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.uzivatelskeUdaje)) return;
        await ziskatUzivatele();
        expect((await uzivatel!).prijmeni!.isNotEmpty, true);
      });

      test('Uživatel má účet pro platby', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.uzivatelskeUdaje)) return;
        await ziskatUzivatele();
        expect((await uzivatel!).ucetProPlatby!.isNotEmpty, true);
      });

      test('Uživatel má variablilní nebo specifický symbol', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.uzivatelskeUdaje)) return;
        await ziskatUzivatele();
        expect(((await uzivatel!).varSymbol ?? "").isNotEmpty || ((await uzivatel!).specSymbol ?? "").isNotEmpty, true);
      });
      test('Uživatel má uživatelské jméno', () async {
        await prihlasitSe();
        if (canteenInstance!.missingFeatures.contains(Features.uzivatelskeUdaje)) return;
        await ziskatUzivatele();
        expect(((await uzivatel!).uzivatelskeJmeno)!.isNotEmpty, true);
      });
    });
  });
}
