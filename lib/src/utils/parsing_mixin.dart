import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icanteenlib/canteenlib.dart';
import 'package:icanteenlib/src/utils/utils.dart';

import 'package:html/dom.dart' as dom;
import 'package:icanteenlib/legacy.dart' as legacy;

// TODO: refactor legacy code

mixin ParsingMixin {
  ///zpracuje jídlo a rozdělí ho na kategorie (hlavní jídlo, polévka, salátový bar, pití...)
  @protected
  SlozeniJidla $parseSlozeniJidla(String jidlo) {
    List<String> cistyListJidel = jidlo.split(',');
    for (int i = 0; i < cistyListJidel.length; i++) {
      cistyListJidel[i] = cistyListJidel[i].trimLeft();
    }
    //konstantní řetězce pro kategorizaci
    List<String> polevky = [
      'Polévka',
      'Polívka',
      'zeleninový krém',
      'fridátové nudle',
      'vývar',
      'frit. n' /*fritované nudle*/,
      'frit.n' /*fritované nudle*/,
    ];
    List<String> salatoveBary = ['salát', 'kompot'];
    List<String> piticka = [
      'nápoj',
      'napoj',
      'čaj',
      'caj',
      'káva',
      'kava',
      'mošt',
      'most',
      'sirup',
      'voda',
      'mléko',
      'mleko',
      'vit. nápoj' /*vitamínový nápoj*/,
      'vit.nápoj' /*vitamínový nápoj*/,
      'džus',
      'dzus',
      'kakao',
    ];
    List<String> ostatniVeci = [
      'ovoce',
      'pečivo',
      'pecivo',
      'chléb',
      'chleb',
      'rohlík',
      'rohlik',
      'tyčinka',
      'tycinka',
      'dezert',
      'termix',
      'tvarohá' /*Tvaroháček/Tvaroháčky*/,
      'tvaroha' /*tvaroháček/tvaroháčky*/,
      'šáteč' /*šáteček/šátečky */,
      'satec' /*šáteček/šátečky */,
      'šateč',
      'šatec',
      'sateč',
    ];

    bool kategorie(String vec, List<String> kategorie) {
      for (int i = 0; i < kategorie.length; i++) {
        if (vec.toLowerCase().contains(kategorie[i].toLowerCase())) {
          return true;
        }
      }
      return false;
    }

    String polevka = '';
    String hlavniJidlo = '';
    String salatovyBar = '';
    String piti = '';
    String ostatni = '';
    for (int i = 0; i < cistyListJidel.length; i++) {
      if (kategorie(cistyListJidel[i], polevky)) {
        if (polevka != '') {
          polevka += ', ';
        }
        polevka = '$polevka${cistyListJidel[i]}';
      } else if (kategorie(cistyListJidel[i], salatoveBary)) {
        if (salatovyBar != '') {
          salatovyBar += ', ';
        }
        salatovyBar = '$salatovyBar${cistyListJidel[i]}';
      } else if (kategorie(cistyListJidel[i], piticka)) {
        if (piti != '') {
          piti += ', ';
        }
        piti = '$piti${cistyListJidel[i]}';
      } else if (kategorie(cistyListJidel[i], ostatniVeci) && !cistyListJidel[i].contains('ovocem')) {
        if (ostatni != '') {
          ostatni += ', ';
        }
        ostatni = '$ostatni${cistyListJidel[i]}';
      } else {
        if (hlavniJidlo != '') {
          hlavniJidlo += ', ';
        }
        hlavniJidlo = '$hlavniJidlo${cistyListJidel[i]}';
      }
    }
    hlavniJidlo = hlavniJidlo.trimLeft();
    polevka = polevka.trimLeft();
    piti = piti.trimLeft();
    salatovyBar = salatovyBar.trimLeft();
    ostatni = ostatni.trimLeft();
    //jídelny mají prý rádi saláty jako hlavní jídlo. Tohle je pro to fix:
    if (hlavniJidlo == '') {
      for (String jidlo in salatovyBar.split(', ')) {
        if (jidlo.contains('salát')) {
          hlavniJidlo = jidlo;
          salatovyBar = salatovyBar.replaceAll('$jidlo, ', '');
          salatovyBar = salatovyBar.replaceAll(jidlo, '');
          break;
        }
      }
    }
    if (polevka != '') {
      //make first letter of polevka capital
      polevka = polevka.substring(0, 1).toUpperCase() + polevka.substring(1);
    }
    if (ostatni != '') {
      //make first letter of ostatni capital
      ostatni = ostatni.substring(0, 1).toUpperCase() + ostatni.substring(1);
    }
    if (hlavniJidlo != '') {
      //make first letter of hlavniJidlo capital
      hlavniJidlo = hlavniJidlo.substring(0, 1).toUpperCase() + hlavniJidlo.substring(1);
      if (hlavniJidlo.length > 3 && hlavniJidlo.substring(0, 3) == 'N. ') {
        hlavniJidlo = hlavniJidlo.substring(3);
      }
    }
    if (piti != '') {
      //make first letter of piti capital
      piti = piti.substring(0, 1).toUpperCase() + piti.substring(1);
    }
    if (salatovyBar != '') {
      //make first letter of salatovyBar capital
      salatovyBar = salatovyBar.substring(0, 1).toUpperCase() + salatovyBar.substring(1);
    }
    return SlozeniJidla(
      polevka: polevka.intrusiveTrim(),
      hlavniChod: hlavniJidlo.intrusiveTrim(),
      salatovyBar: salatovyBar.intrusiveTrim(),
      piti: piti.intrusiveTrim(),
      ostatni: ostatni.intrusiveTrim(),
    );
  }

  @protected
  String cleanString(String string) {
    string = string.replaceAll('\n', '');
    string = string.replaceAll('\t', '');
    string = string.replaceAll('\r', '');
    string = string.replaceAll('  ', ' ');
    string = string.replaceAll(' * ,', ',');
    string = string.replaceAll(' *,', ',');
    string = string.replaceAll(' *', '');
    string = string.replaceAll('*', '');
    string = string.replaceAll(' :', '');
    string = string.replaceAll(':', '');
    string = string.replaceAll(' ,', ',');
    string = string.trim();
    return string;
  }

  @protected
  Set<Alergen> $parseAlergeny(List<dom.Element> rawAlergenyList) {
    if (rawAlergenyList.isEmpty) return {};
    dom.Element rawAlergeny = rawAlergenyList.last;

    Set<Alergen> alergeny = {};
    for (dom.Element rawAlergen in rawAlergeny.children) {
      print(rawAlergen.attributes);
      List<String> alergenInfo = rawAlergen.attributes['title']?.split('-') ?? [];
      if (alergenInfo.isEmpty) continue;
      alergeny.add(
        Alergen(
          id: int.tryParse(rawAlergen.text),
          nazev: alergenInfo.first.intrusiveTrim(),
          popis: alergenInfo.length > 1 ? alergenInfo.last.intrusiveTrim() : null,
        ),
      );
    }
    return alergeny;
  }

  @protected
  StavJidla getStavJidla(legacy.Jidlo jidlo, List<Burza> burza) {
    // TODO: nahradit
    bool jidloJeNaBurze(legacy.Jidlo jidlo) {
      for (Burza jidloNaBurze in burza) {
        if (jidloNaBurze.datum == jidlo.den && jidloNaBurze.varianta == jidlo.varianta) return true;
      }

      return false;
    }

    if (jidlo.naBurze) {
      //pokud je od nás vloženo na burze, tak není potřeba kontrolovat nic jiného
      return StavJidla.vlozenoNaBurze;
    } else if (jidlo.objednano && jidlo.lzeObjednat) {
      return StavJidla.objednano;
    } else if (jidlo.objednano && !jidlo.lzeObjednat && (jidlo.burzaUrl == null || jidlo.burzaUrl!.isEmpty)) {
      //pokud nelze dát na burzu, tak už je po platnosti (nic už s tím neuděláme)
      return StavJidla.objednanoVyprsenaPlatnost;
    } else if (jidlo.objednano && !jidlo.lzeObjednat) {
      return StavJidla.objednanoPouzeNaBurzu;
    } else if (!jidlo.objednano && jidlo.lzeObjednat) {
      return StavJidla.neobjednano;
    } else if (jidloJeNaBurze(jidlo)) {
      return StavJidla.dostupneNaBurze;
    }
    return StavJidla.nedostupne;
  }

  @protected
  Jidlo $parsePrihlasenyJidlo(dom.Element obed, List<Burza> burza) {
    // TODO: nahradit
    Burza? ziskejJidloZBurzy(legacy.Jidlo jidlo) {
      for (Burza burzaJidlo in burza) {
        if (burzaJidlo.datum == jidlo.den && burzaJidlo.varianta == jidlo.varianta) return burzaJidlo;
      }
      return null;
    }

    // formátování do třídy
    String obedFormated = obed.innerHtml.replaceAll(RegExp(r'(   )+|([^>a-z]\n)'), '');
    bool objednano = obedFormated.contains("Máte objednáno");
    DateTime obedDen = DateTime.parse(RegExp(r'(?<=day-).+?(?=")', dotAll: true).firstMatch(obedFormated)!.group(0).toString());
    bool lzeObjednat = !(obedFormated.contains("nelze zrušit") || obedFormated.contains("nelze objednat") || obedFormated.contains("nelze změnit"));

    RegExpMatch? cenaMatch = RegExp(r'((?<=Cena objednaného jídla">).+?(?=&))').firstMatch(obedFormated);
    cenaMatch ??= RegExp(r'(?<=Cena při objednání jídla:&nbsp;).+?(?=&)').firstMatch(obedFormated);
    cenaMatch ??= RegExp(r'(?<=Cena při objednání jídla">).+?(?=&)').firstMatch(obedFormated);

    double cena = double.parse(cenaMatch!.group(0).toString().replaceAll(",", "."));
    String jidlaProDen = RegExp(
      r'<div class="jidWrapCenter.+?>(.+?)(?=<\/div>)',
      dotAll: true,
    ).firstMatch(obedFormated)!.group(1).toString().replaceAll(' ,', ",").replaceAll(" <br>", "").replaceAll("\n", "");
    Set<Alergen> alergeny = $parseAlergeny(obed.querySelectorAll('.textGrey'));

    String vydejna = RegExp(r'(?<=<span class="smallBoldTitle button-link-align">).+?(?=<)').firstMatch(obedFormated)!.group(0).toString();

    String? orderUrl;
    String? burzaUrl;
    if (lzeObjednat) {
      // pokud lze objednat, nastavíme adresu pro objednání
      RegExpMatch? match = RegExp(r"(?<=ajaxOrder\(this, ').+?(?=')").firstMatch(obedFormated);
      if (match != null) {
        orderUrl = match.group(0)!.replaceAll("amp;", "");
      }
    } else {
      // jinak nastavíme URL pro burzu
      RegExpMatch? match = RegExp(r"""db\/dbProcessOrder\.jsp.+?type=((plusburza)|(minusburza)|(multiburza)).+?(?=')""").firstMatch(obedFormated);
      if (match != null) {
        burzaUrl = match.group(0)!.replaceAll("amp;", "");
      }
    }
    String jidloJmeno = jidlaProDen.split('<sub>')[0];
    jidloJmeno = cleanString(jidloJmeno);

    SlozeniJidla sj = $parseSlozeniJidla(jidloJmeno);
    final kategorizovano = legacy.JidloKategorizovano(
      polevka: sj.polevka,
      hlavniJidlo: sj.hlavniChod,
      salatovyBar: sj.salatovyBar,
      piti: sj.piti,
      ostatni: sj.ostatni,
    );

    final legacy.Jidlo legacyJidlo = legacy.Jidlo(
      nazev: jidloJmeno.replaceAll(r' (?=[^a-zA-ZěščřžýáíéĚŠČŘŽÝÁÍÉŤŇťň])', ''),
      objednano: objednano,
      varianta: vydejna,
      lzeObjednat: lzeObjednat,
      cena: cena,
      orderUrl: orderUrl,
      den: obedDen,
      burzaUrl: burzaUrl,
      naBurze: (burzaUrl == null) ? false : burzaUrl.contains("minusburza"),
      kategorizovano: kategorizovano,
    );

    Burza? jidloZBurzy = ziskejJidloZBurzy(legacyJidlo);

    return Jidlo(
      datum: obedDen,
      stav: getStavJidla(legacyJidlo, burza),
      varianta: vydejna,
      nazev: jidloJmeno.replaceAll(r' (?=[^a-zA-ZěščřžýáíéĚŠČŘŽÝÁÍÉŤŇťň])', ''),
      slozeniJidla: sj,
      alergeny: alergeny,
      cena: cena,
      pocet: jidloZBurzy?.pocet,
      url: burzaUrl ?? jidloZBurzy?.url ?? orderUrl,
    );
    // KONEC formátování do třídy
  }

  @protected
  List<Jidelnicek> $parseVerejnyJidelnicky(dom.Document document) {
    final List<dom.Element> jidelnicekDays = document.getElementsByClassName("jidelnicekDen");

    List<Jidelnicek> jidelnicky = [];
    for (dom.Element day in jidelnicekDays) {
      List<Jidelnicek> jidelnickyPerDay = [];
      DateTime date = DateTime.parse(day.children.firstWhere((e) => e.id.contains('day-')).id.replaceAll('day-', ''));
      for (dom.Element jidloRaw in day.children.last.children) {
        String varianta = jidloRaw.children.first.text.trim();
        String? vydejna;
        for (final el in jidloRaw.querySelectorAll('[style]')) {
          final style = el.attributes['style']!;
          if (RegExp(r'(^|;)\s*color\s*:\s*green\s*(;|$)', caseSensitive: false).hasMatch(style)) {
            vydejna = el.text.intrusiveTrim();
          }
        }

        Set<Alergen> alergeny = $parseAlergeny(day.querySelectorAll('.textGrey'));

        // Známe ostatní pole, můžeme vzít celý text a odstanit je pro získání jídla
        String jidloTextRaw = jidloRaw.text
            .replaceFirst(varianta, '')
            .replaceFirst(vydejna ?? '', '')
            .replaceAll(RegExp(r'[\(\[]\s*\d+(?:\s*,\s*\d+)*\s*[\)\]]'), '') // Odstraní seznam alergenů
            .replaceAll('--', '')
            .intrusiveTrim();

        SlozeniJidla slozeniJidla = $parseSlozeniJidla(jidloTextRaw);

        final Jidlo jidlo = Jidlo(
          datum: date,
          stav: StavJidla.verejne,
          varianta: varianta.trim(),
          nazev: (slozeniJidla.hlavniChod ?? slozeniJidla.polevka ?? jidloTextRaw).trim(),
          slozeniJidla: slozeniJidla,
          alergeny: alergeny,
        );

        final Jidelnicek target = jidelnickyPerDay.firstWhere(
          (j) => j.vydejna == vydejna,
          orElse: () {
            Jidelnicek newJidelnicek = Jidelnicek(datum: date, vydejna: vydejna);
            jidelnickyPerDay.add(newJidelnicek);
            return newJidelnicek;
          },
        );
        final Jidelnicek updated = target.copyWith(nabidka: [...target.nabidka, jidlo]);

        final int index = jidelnickyPerDay.indexOf(target);
        jidelnickyPerDay[index] = updated;
      }
      jidelnicky.addAll(jidelnickyPerDay);
    }
    return jidelnicky;
  }

  @protected
  Map<UzivatelskeUdajeKeys, String?> $parseUzivatelskeUdaje(dom.Document document) {
    final map = <UzivatelskeUdajeKeys, String?>{};

    for (final dom.Element td in document.querySelectorAll('td')) {
      if (td.querySelector('table') != null) continue;

      final dom.Element? bold = td.querySelector('b');
      if (bold != null) {
        // Get only the text node directly inside <td>, excluding text from nested elements
        final String directTextNodes = td.nodes.whereType<dom.Text>().map((t) => t.text).join();
        if (directTextNodes.contains(':')) {
          final String label = directTextNodes.split(':').first.trim();
          final String normalized = label.normalize();

          UzivatelskeUdajeKeys? field;
          try {
            field = UzivatelskeUdajeKeys.values.firstWhere((f) => f.toString() == normalized);
          } catch (e) {
            field = null; // unknown label, skip
          }

          if (field != null) {
            map[field] = bold.text.trim().isEmpty ? null : bold.text.trim();
          }
        }
      }
    }

    return map;
  }

  @protected
  StavUctu $parseStavUctu(dom.Document document) {
    String kredit = document.getElementById('Kredit')?.text ?? '0.0';
    kredit = kredit.replaceAll(RegExp(r'[^0-9,.-]'), '').replaceAll(',', '.');

    DateTime? objednanoDo = DateTime.tryParse(document.getElementById('PoslObj')?.text.split('.').reversed.join('-') ?? '');

    String? vydejnaNazev = document.getElementById('Vydejna')?.text.trim();
    Map<int, String> vydejny = {};
    List<dom.Element> vydejnyRaw = document.querySelectorAll('.button-link-vydejna');
    for (dom.Element vydejnaRaw in vydejnyRaw) {
      String nazev = vydejnaRaw.text.trim();
      int id = int.tryParse(RegExp(r'vydejna=(\d+)').firstMatch(vydejnaRaw.attributes['onclick'] ?? '')?.group(1) ?? '') ?? 0;
      vydejny[id] = nazev;
    }

    (int, String)? vydejna;
    if (vydejnaNazev != null && vydejny.containsValue(vydejnaNazev)) {
      final int key = vydejny.keys.firstWhere(
        (k) => vydejny[k] == vydejnaNazev,
        orElse: () => 0, // optional, if value may not exist
      );
      vydejna = (key, vydejnaNazev);
    }

    return StavUctu(kredit: double.parse(kredit), objednanoDo: objednanoDo, vydejna: vydejna, vydejny: vydejny);
  }

  @protected
  List<Burza> $parseBurza(dom.Document document) {
    List<Burza> burza = [];

    Iterable<RegExpMatch> dostupnaJidla = RegExp(
      r'(?<=<tr class="mouseOutRow">).+?(?=<\/tr>)',
      dotAll: true,
    ).allMatches(document.body!.innerHtml); // vyfiltrujeme jednotlivá jídla
    if (dostupnaJidla.isNotEmpty) {
      for (RegExpMatch burzaMatch in dostupnaJidla) {
        String bu = burzaMatch.group(0)!;
        List<RegExpMatch> data = RegExp(
          r'((?<=<td>).+?(?=<))|(?<=<td align="left">).+?(?=<)|((?<=<td align="right">).+?(?=<))',
          dotAll: true,
        ).allMatches(bu).toList();

        // Získat datum
        List<String> datumRaw = RegExp(r'\d\d\.\d\d\.\d{4}').firstMatch(data[1].group(0)!)!.group(0)!.split(".");
        DateTime datum = DateTime.parse("${datumRaw[2]}-${datumRaw[1]}-${datumRaw[0]}");
        // Získat variantu
        String varianta = data[0].group(0)!;
        // Získat název jídla
        String nazev = data[2].group(0)!.replaceAll(RegExp(r'\n|  '), "");
        // Získat počet kusů
        int pocet = int.parse(data[4].group(0)!.replaceAll(" ks", ""));
        String url = RegExp(r"(?<=')db.+?(?=')").firstMatch(bu)!.group(0)!.replaceAll("&amp;", "&");

        Burza jidlo = Burza(datum: datum, varianta: varianta, popis: nazev, pocet: pocet, url: url);
        burza.add(jidlo);
      }
    }
    return burza;
  }

  List<dom.Element> $parseJidloWrapperElements(dom.Document dokument) {
    return dokument.querySelectorAll('.jidelnicekItemWrapper');
  }
}
