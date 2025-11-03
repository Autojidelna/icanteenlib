# Changelog

## 5.0.1

- Opraven bug, kdy `stavUctu.vydejna == null`, když `stavUctu.vydejny` neobsahují `stavUctu.vydejna`
- Nastavit `stavUctuStream` na synchronní

## 5.0.0

- Generované soubory se nyní pokaždé generují do `generated` složky
- Úprava všech tříd
  - `Uzivatel` přejmenován na `UzivatelskeUdaje`
    - Nově podpora pro všechy údaje v nastavení
  - `JidloKategorizovano` přejmenováno na `SlozeniJidla`
  - `LoginData` přejmenováno na `PrihlasovaciUdaje`
  - `Burza` a `Jidlo` jsou nyní jeden objekt
    - Přidán enum `StavJidla`, který nahradí pole `objednano`, `naBurze` a `lzeObjednat`
    - `orderUrl` a `burzaUrl` spojeno v jedno pole `url`
  - Nová třída `StavUctu`
    - Přebýrá `kredit` z legacy třídy `Uzivatel`
    - Přebýrá `výdejny` z třídy `Jidelnicek`
    - Nově se také bude starat o vybranou výdejnu
  - Nová třída `FeatureSupport`
    - Obsahuje seznamy `missingInCode` a `unsupportedByCanteen`
    - Přidány pomocné metody `isAvailable()`, `isImplemented()` a `isSupported()`
  - Staré třídy odstraněny
  - Třída `Canteen` je nyní plně interface z které extenduje nová třída `BaseCanteen`, ta má všechnu logiku
  - Třídu `BaseCanteen` extendují třídy specifické pro verze a přepisují hodnoty, případně i metody používané v `BaseCanteen`
  - Přidána metoda `Canteen.create()`, která zjistí verzi iCanteen a vrátí nejvhodnější verzi tříd `Canteen2vXvX`, toto bylo přesunuto z `login()` metody
  - Odstaněna podpora pro verzi **2.10.27** z důvodu nepřístupu k verzi
  - Odstaněny třídy pro verze **2.18.19**, **2.19.13**, **2.20.13**, prtože byli stejné jako pro verzi **2.18.03**
  - Přidáno dynamické zjišťování podporovaných funkcí pro verze >= **2.15.x**
  - Testy aktualizovány

## 4.2.2

- Odstranění whitespace z názvů výdejen ve verzi 2.20.13
- Používání mobilního rozhraní pro získání všech obědů najednou
- Přejmenování metody `ziskejJidelnicek()` na `verejnyJidelnicek()`
- Nyní nejde změnit url bez vytvoření nové instance

## 4.2.1

- Přidána (opět) podpora pro [stavebkakolin.cz](https://obedy.stavebkakolin.cz) _(původně [ss-stavebnikolin.cz](https://obedy.ss-stavebnikolin.cz))_
- Přidána částečná podpora pro verzi 2.20.13

## 4.2.0

- Knihovna nyní používá [freezed](https://pub.dev/packages/freezed) pro generování `toJson` a `fromJson` metod

## 4.1.1

- Opravena chyba, kdy např. adresa <https://testing.autojidelna.cz/testing> se automaticky přepsala na <https://testing.autojidelna.cz>.
- Tato aktualizace tedy povoluje používat jakoukoliv adresu i s cestou.

## 4.1.0

- Přidány toJson a fromJson metody

## 4.0.3

- Hotfix: Opraven oversight kde se ukládaly testovací soubory.

## 4.0.2

- Vylepšen systém pro získávání verzí
- Přidána podpora pro `jidelna.cza-hu.cz`

## 4.0.1

- Error handling for login

## 4.0.0

- BREAKING: Přechod z `Future.error("String")` na `Future.error(enum)` v `canteen_lib_exceptions.dart`
- BREAKING: `objednat`, `doBurzy` a `objednatZBurzy` vrací `Jidelnicek` místo `Jidlo`

## 3.1.0

- Přidána podpora pro `obedy.ss-stavebnikolin.cz`
- Přidána methoda `jidelnicekMesic` pro získání jídelníčku pro měsíc
- Přidány lepší filtery pro kategorizaci jídel

## 3.0.6

- Fix pro kategorizaci

## 3.0.5

- Fix pro Range Error při získávání jídelníčku

## 3.0.4

- Breaking: změněna chyba `nejdříve se musíte přihlásit` na `Nejdříve se musíte přihlásit`
- přidána konzistence s touto chybou

## 3.0.3

- přidán dezert do kategorie ostatní
- opravena chyba u 2.18.03, kdy to občas crashlo po nenalezení data jídla.

## 3.0.2

- Opraven oversight kdy saláty se nemohly počítat jako hlavní jídlo

## 3.0.1

- Vyčištěn kód jidloparseru
- přidány případy pro kategorizování
- opraven crash při svátku ve verzi 2.18.19

## 3.0.0

- Kompletně překopán celý systém s podporou více verzí zároveň a to bez breaking changes
- přidán variable kategorizovano do třídy `Jidlo`, kde je jídlo rozzřazeno na hlavní jídlo, polévku...
- přidána třída JidloKategorizovano ve které se ukládá roztřízené jídlo
- plný support pro `https://jidelna.trebesin.cz` a `http://obedy.zs-mat5.cz`
- přidán lepší example
- aktualizovány dependencies

## 2.0.0

- Alergeny jsou nyní ve tříde `Alergen`
- Opravena chyba, kdy se HTML alergenů propisovalo do názvu jídla

## 1.1.4

- Opravit info o stavu na burze

## 1.1.3

- Opravit hledání burza URL u jídelen, kde je tlačítko ve tvaru `X ks do burzy`

## 1.1.2

- Opravit negativní čísla v kreditu, účet pro platby by @tpkowastaken in <https://github.com/hernikplays/canteenlib/pull/4>

## 1.1.1

- Opravit problém s burzou

## 1.1.0-alpha.1

- Experimentální podpora pro SPŠEI Ostrava
- Hezčí kód
- Alergeny

## 1.0.1

- změnit získávání názvu jídla

## 1.0.0

- Stabilizace

## 0.1.0-alpha.17

- Debug informace v `objednatZBurzy`

## 0.1.0-alpha.16

- Opravit zobrazení zda-li jde jídlo objednat, když není objednané žádné jídlo

## 0.1.0-alpha.15

- Úprava nakládání s chybami v `_getRequest`
- `fail` je chyba

## 0.1.0-alpha.14

- Oprava `ziskejBurzu`, kvůli špatnému parsování

## 0.1.0-alpha.13

- Další opravy
- Úprava metod `doBurzy` a `objednat`, aby opravdu mohly vracet aktualizované instance `Jidlo`

## 0.1.0-alpha.12

- Skutečná oprava

## 0.1.0-alpha.11

- Opravit nevkládání URL pro jídlo co má uživatel již v burze

## 0.1.0-alpha.10

- Doufám, že skutečně opraví získávání URL
- Lepší formátování názvu

## 0.1.0-alpha.9

- Vzít změny zpět

## 0.1.0-alpha.8

- Opravit získávání URL z burzy v `jidelnicekDen`
- tridy.dart - Burza: ~~jidlo~~ --> **nazev**

## 0.1.0-alpha.7

- Nastavovat `prihlasen` na `false` v případě chyby i u `ziskejUzivatele`
- Vylepšení dokumentace
- `getFirstSession` je nyní soukromá metoda
  [Všechny změny](https://github.com/hernikplays/canteenlib/compare/0.1.0-alpha.6...0.1.0-alpha.7)

## 0.1.0-alpha.6

- `return` místo `throw`
  [Všechny změny](https://github.com/hernikplays/canteenlib/compare/0.1.0-alpha.5...0.1.0-alpha.6)

## 0.1.0-alpha.5

- Přechod z `Exception` na `Future.error`
  [Všechny změny](https://github.com/hernikplays/canteenlib/compare/0.1.0-alpha.4...0.1.0-alpha.5)

## 0.1.0-alpha.4

- Přidáno získání a objednávání cizích jídel z burzy
- Třída `Jidlo`: ~~cislo~~ 👉 **varianta**
- Nová třída `Burza` pro cizí jídla z burzy
- Více Exceptionů

[Všechny změny](https://github.com/hernikplays/canteenlib/compare/0.1.0-alpha.3...0.1.0-alpha.4)

## 0.1.0-alpha.3

- Kontrolovat správný status kód u GET požadavků

[Všechny změny](https://github.com/hernikplays/canteenlib/compare/0.1.0-alpha.1...0.1.0-alpha.4)

## 0.1.0-alpha.2

- Nevytvářet debugovací soubor
- Místo ziskejKredit používáme ziskejUzivatele (Třída Uzivatel)
- Requesty by měly vyhazovat Exception při chybném požadavku (status kódu)

## 0.1.0-alpha.1

- Aktualizace licence

## 0.1.0-alpha

- Funkční přihlášení
- Funkční zobrazení jídelníčku
- Funkční objednávání jídel z jídelníčku
- Funkční zobrazení kreditu
