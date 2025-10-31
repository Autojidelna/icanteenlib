import 'package:icanteenlib/canteenlib.dart';

const String url = "jidelna.priklad.cz";
const String username = "uzivatel";
const String password = "heslo123";

void main(List<String> args) async {
  /// Vytvoření instance kantýny
  Canteen canteenInstance = await Canteen.create(url);

  /// Přihlášení (je nutné pro fungování všech funkcí krom tedy zíkání veřejného jídelníčku)
  try {
    print(await canteenInstance.login(username, password) ? "login succesful" : "login failed"); // přihlásit se
  } catch (e) {
    print('Login Failed - either bad url or no internet');
    return;
  }
  UzivatelskeUdaje? uzivatel;
  try {
    /// Získání informací o uživateli
    uzivatel = await canteenInstance.ziskejUzivatelskeUdaje();
    vytisknoutInfoOUzivateli(uzivatel);
  } catch (e) {
    print(e);
  }

  Jidelnicek? jidelnicek;
  try {
    /// Získání jídelníčku pro daný den
    jidelnicek = await canteenInstance.specifickyJidelnicek(DateTime.now());
    vytisknoutInfoOJidelnicku(jidelnicek);
  } catch (e) {
    print(e);
  }
  /*
  |------------------------------------------------------------------------------------------------------------------|
  |  Následující funkce objednávají obědy nebo dávají/odebírají jídla z burzy.                                       |
  |  Buďte si proto jistí, že je chcete spustit, ať nepřijdete o oběd.                                               |
  |                                                                                                                  |
  |------------------------------------------------------------------------------------------------------------------|
  */
  try {
    jidelnicek = await canteenInstance.provedObjednavku(jidelnicek!.nabidka[0]);
    vytisknoutInfoOJidelnicku(jidelnicek);
  } catch (e) {
    print(e);
  }
}

void vytisknoutInfoOJidelnicku(Jidelnicek jidelnicek) {
  print('--------------jídelníček pro den ${jidelnicek.datum}--------------');
  print('počet jídel: ${jidelnicek.nabidka.length}');
  for (int i = 0; i < jidelnicek.nabidka.length; i++) {
    print('------------Jídlo číslo $i------------');
    print('název: ${jidelnicek.nabidka[i].nazev}');
    print('cena: ${jidelnicek.nabidka[i].cena}');
    print('varianta: ${jidelnicek.nabidka[i].varianta}');
    print('datum: ${jidelnicek.nabidka[i].datum}');
    for (int k = 0; k < jidelnicek.nabidka[i].alergeny.length; k++) {
      print('alergen: ${jidelnicek.nabidka[i].alergeny.elementAt(k).nazev} - ${jidelnicek.nabidka[i].alergeny.elementAt(k).popis}');
    }
    print('url: ${jidelnicek.nabidka[i].url}');
    if (jidelnicek.nabidka[i].slozeniJidla != null) {
      print('Hlavní chod: ${jidelnicek.nabidka[i].slozeniJidla!.hlavniChod}');
      print('pití: ${jidelnicek.nabidka[i].slozeniJidla!.piti}');
      print('polévka: ${jidelnicek.nabidka[i].slozeniJidla!.polevka}');
      print('Salátový bar: ${jidelnicek.nabidka[i].slozeniJidla!.salatovyBar}');
      print('ostatní: ${jidelnicek.nabidka[i].slozeniJidla!.ostatni}');
    }
    print('--------------------------------------\n\n');
  }
  print('--------------konec jídelníčku--------------');
}

void vytisknoutInfoOUzivateli(UzivatelskeUdaje uzivatel) {
  print('Jméno: ${uzivatel.jmeno}');
  print('Příjmení: ${uzivatel.prijmeni}');
  print('Kategorie: ${uzivatel.kategorie}');
  print('Účet pro platby: ${uzivatel.ucetProPlatbyDoJidelny}');
  print('Variabilní symbol: ${uzivatel.variabilniSymbol}');
  print('Specifický symbol: ${uzivatel.specifickySymbol}');
}
