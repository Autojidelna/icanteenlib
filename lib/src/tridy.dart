/// Reprezentuje informace o přihlášeném uživateli
class Uzivatel {
  /// Uživatelské jméno
  String? uzivatelskeJmeno;

  /// Jméno, jak je uvedené v základních údajích o uživateli
  String? jmeno;

  /// Příjmení, jak je uvedené v základních údajích o uživateli
  String? prijmeni;

  /// Kategorie uživatele
  String? kategorie;

  /// Účet jídelny pro zasílání plateb
  String? ucetProPlatby;

  /// Variabilní symbol
  String? varSymbol;

  /// Specifický symbol
  String? specSymbol;

  /// Aktuální stav kreditu
  double kredit;

  Uzivatel({
    this.uzivatelskeJmeno,
    this.jmeno,
    this.prijmeni,
    this.kategorie,
    this.ucetProPlatby,
    this.varSymbol,
    this.kredit = 0.0,
    this.specSymbol,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Uzivatel &&
        other.uzivatelskeJmeno == uzivatelskeJmeno &&
        other.jmeno == jmeno &&
        other.prijmeni == prijmeni &&
        other.kategorie == kategorie &&
        other.ucetProPlatby == ucetProPlatby &&
        other.varSymbol == varSymbol &&
        other.kredit == kredit &&
        other.specSymbol == specSymbol;
  }

  @override
  int get hashCode =>
      uzivatelskeJmeno.hashCode ^
      jmeno.hashCode ^
      prijmeni.hashCode ^
      kategorie.hashCode ^
      ucetProPlatby.hashCode ^
      varSymbol.hashCode ^
      kredit.hashCode ^
      specSymbol.hashCode;
}
