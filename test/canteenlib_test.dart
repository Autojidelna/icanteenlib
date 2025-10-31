import 'dart:async';

import 'package:icanteenlib/canteenlib.dart';
import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart';

DotEnv? envSecrets;
Canteen? canteenInstance;
Future<bool>? prihlaseno;
Future<Jidelnicek>? jidelnicek;
Future<Jidelnicek>? druhaVydejnaJidelnicek;
Future<List<Jidelnicek>>? jidelnicekMesic;
Future<UzivatelskeUdaje>? uzivatel;
DateTime date = DateTime(2025, 11, 4);
Future<UzivatelskeUdaje> ziskatUzivatele() async {
  uzivatel ??= _ziskatUzivatele();
  return uzivatel!;
}

Future<StavUctu> _ziskejStavUctu() async {
  envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
  canteenInstance ??= await Canteen.create(envSecrets!["URL"]!);
  return canteenInstance!.aktualizujStavUctu();
}

Future<UzivatelskeUdaje> _ziskatUzivatele() async {
  envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
  canteenInstance ??= await Canteen.create(envSecrets!["URL"]!);
  return canteenInstance!.ziskejUzivatelskeUdaje();
}

Future<Jidelnicek> ziskatJidelnicek() async {
  jidelnicek ??= _ziskatJidelnicek();
  return jidelnicek!;
}

Future<Jidelnicek> _ziskatJidelnicek() async {
  envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
  canteenInstance ??= await Canteen.create(envSecrets!["URL"]!);
  DateTime funkcniDatum = date;
  //canteenInstance!.vydejna = 1;
  return await canteenInstance!.specifickyJidelnicek(funkcniDatum);
}

Future<Jidelnicek> ziskatDruhaVydejnaJidelnicek() async {
  druhaVydejnaJidelnicek ??= _ziskatDruhaVydejnaJidelnicek();
  return druhaVydejnaJidelnicek!;
}

Future<Jidelnicek> _ziskatDruhaVydejnaJidelnicek() async {
  envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
  canteenInstance ??= await Canteen.create(envSecrets!["URL"]!);
  DateTime funkcniDatum = date;
  await canteenInstance!.aktualizujStavUctu();
  canteenInstance!.zmenVydejnu = canteenInstance!.stavUctu!.vydejny.keys.last;
  return await canteenInstance!.specifickyJidelnicek(funkcniDatum);
}

Future<List<Jidelnicek>> ziskatJidelnicekMesic() async {
  jidelnicekMesic ??= _ziskatJidelnicekMesic();
  return jidelnicekMesic!;
}

Future<List<Jidelnicek>> _ziskatJidelnicekMesic() async {
  envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
  canteenInstance ??= await Canteen.create(envSecrets!["URL"]!);
  //canteenInstance!.vydejna = 1;
  List<Jidelnicek> jidelnickyProMesic = await canteenInstance!.vsechnyJidelnicky();
  return jidelnickyProMesic;
}

Future<bool> prihlasitSe() async {
  prihlaseno ??= _prihlasitSe();
  return prihlaseno!;
}

Future<bool> _prihlasitSe() async {
  envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
  canteenInstance ??= await Canteen.create(envSecrets!["URL"]!);
  if (canteenInstance!.$uzivatelPrihlasen) return true;
  return await canteenInstance!.login(envSecrets!["USER"]!, envSecrets!["PASS"]!);
}

void main() {
  test('Veřejný jídelníček', () async {
    envSecrets ??= DotEnv(includePlatformEnvironment: true)..load();
    canteenInstance ??= await Canteen.create(envSecrets!["URL"]!);
    List<Jidelnicek> jidelnicky = await canteenInstance!.verejneJidelnicky();

    print('--------------------Jídelníček--------------------');
    print('Jídlo: ${jidelnicky[0].nabidka[0].nazev}');
    print('Hlavní jídlo: ${jidelnicky[0].nabidka[0].slozeniJidla!.hlavniChod}');
    print('pití: ${jidelnicky[0].nabidka[0].slozeniJidla!.piti}');
    print('polévka: ${jidelnicky[0].nabidka[0].slozeniJidla!.polevka}');
    print('Salátový bar: ${jidelnicky[0].nabidka[0].slozeniJidla!.salatovyBar}');
    print('ostatní: ${jidelnicky[0].nabidka[0].slozeniJidla!.ostatni}');
    print('--------------------------------------------------');
    for (var alergen in jidelnicky[0].nabidka[0].alergeny) {
      print('${alergen.nazev}: ${alergen.popis}');
    }

    expect(jidelnicky[0].nabidka[0].slozeniJidla!.hlavniChod!.isNotEmpty, true);
  });

  group('Test přihlášený Uživatel:', () {
    test('Přihlášení', () async {
      expect(await prihlasitSe(), true);
    });

    group('Jídelníček:', () {
      test('Jídelníček není prázdný', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        expect((await jidelnicek!).nabidka.isNotEmpty, true);
      });

      test('Jídelníček má aspoň dva obědy', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        expect((await jidelnicek!).nabidka.length >= 2, true);
      });

      test('Jídelníček má název', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        print((await jidelnicek!).nabidka[0].nazev);
        expect((await jidelnicek!).nabidka[0].nazev.isNotEmpty, true);
      });

      test('Jídelníček má cenu', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        expect((await jidelnicek!).nabidka[0].cena! > 10, true);
      });

      test('Jídelníček má variantu', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        expect((await jidelnicek!).nabidka[0].varianta.isNotEmpty, true);
      });

      test('Jídelníček je kategorizovaný', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        print('--------------------Jídelníček--------------------');
        print('Jídlo: ${(await jidelnicek!).nabidka[0].nazev}');
        print('Hlavní jídlo: ${(await jidelnicek!).nabidka[0].slozeniJidla!.hlavniChod}');
        print('pití: ${(await jidelnicek!).nabidka[0].slozeniJidla!.piti}');
        print('polévka: ${(await jidelnicek!).nabidka[0].slozeniJidla!.polevka}');
        print('Salátový bar: ${(await jidelnicek!).nabidka[0].slozeniJidla!.salatovyBar}');
        print('ostatní: ${(await jidelnicek!).nabidka[0].slozeniJidla!.ostatni}');
        print('--------------------------------------------------');
        expect((await jidelnicek!).nabidka[0].slozeniJidla!.hlavniChod!.isNotEmpty, true);
      });
      test('Jídelníček má alergeny', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.alergeny)) return;
        await ziskatJidelnicek();
        expect((await jidelnicek!).nabidka[0].alergeny.isNotEmpty, true);
      });

      test('Jídelníček toJson() a fromJson()', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatJidelnicek();
        Jidelnicek? localJidelnicek = await jidelnicek;
        if (localJidelnicek == null) return;
        expect(localJidelnicek == Jidelnicek.fromJson(localJidelnicek.toJson()), true);
      });
    });
    group('Jídelníček, druhá výdejna:', () {
      test('Jídelníček není prázdný', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vydejny)) return;
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        expect((await jidelnicek!).nabidka.isNotEmpty, true);
      });

      test('Jídelníček má aspoň dva obědy', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vydejny)) return;
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        expect((await jidelnicek!).nabidka.length >= 2, true);
      });

      test('Jídelníček má název', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vydejny)) return;
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        print((await jidelnicek!).nabidka[0].nazev);
        expect((await jidelnicek!).nabidka[0].nazev.isNotEmpty, true);
      });

      test('Jídelníček má cenu', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vydejny)) return;
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        expect((await jidelnicek!).nabidka[0].cena! > 10, true);
      });

      test('Jídelníček má variantu', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vydejny)) return;
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        expect((await jidelnicek!).nabidka[0].varianta.isNotEmpty, true);
      });

      test('Jídelníček je kategorizovaný', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vydejny)) return;
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await ziskatDruhaVydejnaJidelnicek();
        print('--------------------Jídelníček--------------------');
        print('Jídlo: ${(await jidelnicek!).nabidka[0].nazev}');
        print('Hlavní jídlo: ${(await jidelnicek!).nabidka[0].slozeniJidla!.hlavniChod}');
        print('pití: ${(await jidelnicek!).nabidka[0].slozeniJidla!.piti}');
        print('polévka: ${(await jidelnicek!).nabidka[0].slozeniJidla!.polevka}');
        print('Salátový bar: ${(await jidelnicek!).nabidka[0].slozeniJidla!.salatovyBar}');
        print('ostatní: ${(await jidelnicek!).nabidka[0].slozeniJidla!.ostatni}');
        print('--------------------------------------------------');
        expect((await jidelnicek!).nabidka[0].slozeniJidla!.hlavniChod!.isNotEmpty, true);
      });
      test('Jídelníček má alergeny', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vydejny)) return;
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.alergeny)) return;
        await ziskatDruhaVydejnaJidelnicek();
        expect((await jidelnicek!).nabidka[0].alergeny.isNotEmpty, true);
      });
    });

    group('Jídelníček měsíc:', () {
      test('Jídelníček není prázdný', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        expect((await jidelnicekMesic!)[0].nabidka.isNotEmpty, true);
      });

      test('Jídelníček má aspoň jeden oběd', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        expect((await jidelnicekMesic!)[0].nabidka.isNotEmpty, true);
      });

      test('Jídelníček má název', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        print((await jidelnicekMesic!)[0].nabidka[0].nazev);
        expect((await jidelnicekMesic!)[0].nabidka[0].nazev.isNotEmpty, true);
      });

      test('Jídelníček má cenu', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        expect((await jidelnicekMesic!)[0].nabidka[0].cena! > 10, true);
      });

      test('Jídelníček má variantu', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        expect((await jidelnicekMesic!)[0].nabidka[0].varianta.isNotEmpty, true);
      });

      test('Jídelníček je kategorizovaný', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vsechnyJidelnicky)) return;
        await ziskatJidelnicekMesic();
        print('--------------------Jídelníček--------------------');
        print('Jídlo: ${(await jidelnicekMesic!)[0].nabidka[0].nazev}');
        print('Hlavní jídlo: ${(await jidelnicekMesic!)[0].nabidka[0].slozeniJidla!.hlavniChod}');
        print('pití: ${(await jidelnicekMesic!)[0].nabidka[0].slozeniJidla!.piti}');
        print('polévka: ${(await jidelnicekMesic!)[0].nabidka[0].slozeniJidla!.polevka}');
        print('Salátový bar: ${(await jidelnicekMesic!)[0].nabidka[0].slozeniJidla!.salatovyBar}');
        print('ostatní: ${(await jidelnicekMesic!)[0].nabidka[0].slozeniJidla!.ostatni}');
        print('--------------------------------------------------');
        expect((await jidelnicekMesic!)[0].nabidka[0].slozeniJidla!.hlavniChod!.isNotEmpty, true);
      });
      test('Jídelníček má alergeny', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vsechnyJidelnicky)) return;
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.alergeny)) return;
        await ziskatJidelnicekMesic();
        bool alergeny = false;
        for (int i = 0; i < (await jidelnicekMesic!).length; i++) {
          for (int k = 0; k < (await jidelnicekMesic!)[i].nabidka.length; k++) {
            if ((await jidelnicekMesic!)[i].nabidka[k].alergeny.isNotEmpty) {
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
      test('Uživatel má jméno', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.uzivatelskeUdaje)) return;
        await ziskatUzivatele();
        expect((await uzivatel!).jmeno!.isNotEmpty, true);
      });

      test('Uživatel má příjmení', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.uzivatelskeUdaje)) return;
        await ziskatUzivatele();
        expect((await uzivatel!).prijmeni!.isNotEmpty, true);
      });

      test('Uživatel má účet pro platby', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.uzivatelskeUdaje)) return;
        await ziskatUzivatele();
        expect((await uzivatel!).ucetProPlatbyDoJidelny!.isNotEmpty, true);
      });

      test('Uživatel má variablilní nebo specifický symbol', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.uzivatelskeUdaje)) return;
        await ziskatUzivatele();
        expect(((await uzivatel!).variabilniSymbol ?? "").isNotEmpty || ((await uzivatel!).specifickySymbol ?? "").isNotEmpty, true);
      });
    });

    group('Stav účtu', () {
      test('Uživatel má kredit', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.uzivatelskeUdaje)) return;
        await _ziskejStavUctu();
        expect(canteenInstance!.stavUctu!.kredit > -10000 && canteenInstance!.stavUctu!.kredit < 10000, true);
      });
      test('Jídelníček má více výdejen', () async {
        await prihlasitSe();
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.vydejny)) return;
        if (canteenInstance!.featureSupport.unsupportedByCanteen.contains(Features.jidelnicekDen)) return;
        await _ziskejStavUctu();
        expect(canteenInstance!.stavUctu!.vydejny.length > 1, true);
      });
    });
  });
}
