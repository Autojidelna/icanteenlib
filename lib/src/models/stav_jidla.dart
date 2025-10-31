/// Popisuje všechny možné stavy jídla
enum StavJidla {
  /// Je objednáno a lze odebrat
  objednano,

  /// Je objednáno a lze pouze dát na burzu
  objednanoPouzeNaBurzu,

  /// Bylo objednáno a pravděpodobně snězeno ;)
  objednanoVyprsenaPlatnost,

  /// Nabízíme jídlo na burze
  vlozenoNaBurze,

  /// Jídlo nemáme objednané, ale je dostupné na burze
  dostupneNaBurze,

  /// Jídlo nemáme objednané, ale můžeme stále ještě normálně objednat
  neobjednano,

  /// Jídlo nemáme objednané a není dostupné na burze, vypršela platnost nebo nemá uživatel dostatečný kredit
  nedostupne,

  /// Jídlo je na veřejném jídelníčku
  verejne;

  bool muzesObjednat() {
    switch (this) {
      case StavJidla.nedostupne:
      case StavJidla.objednanoVyprsenaPlatnost:
      case StavJidla.verejne:
        return false;
      case StavJidla.objednano:
      case StavJidla.objednanoPouzeNaBurzu:
      case StavJidla.vlozenoNaBurze:
      case StavJidla.dostupneNaBurze:
      case StavJidla.neobjednano:
        return true;
    }
  }
}
