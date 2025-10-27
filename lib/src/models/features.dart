enum Features {
  /// zda má test očekávat vícero výdejen
  viceVydejen,

  /// zda má test očekávat variabilní/specifický symbol
  variabilniSymbol,

  /// Získat informace o přihlášeném uživateli
  ziskatUzivatele,

  /// Získat informace o jídelníčku zvěřejněném na webu bez nutnosti přihlášení
  jidelnicekBezCen,

  /// Získat informace o jídelníčku zvěřejněném na webu s nutností přihlášení + objednání obědů
  jidelnicekDen,

  // Informace o jídelníčku za měsíc
  jidelnicekMesic,

  /// burza
  burza,

  // dát počet jídel na burzu
  burzaAmount,

  /// alergeny
  alergeny,
}
