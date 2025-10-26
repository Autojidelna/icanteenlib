enum UzivatelskeUdaje {
  jmeno('jmeno'),
  prijmeni('prijmeni'),
  datumNarozeni('datum_narozeni'),
  kategorie('kategorie'),
  skupina('skupina'),
  trida('trida'),
  osobniCislo('osobni_cislo'),
  evidencniCislo('evidencni_cislo'),
  adresa('adresa'),
  mesto('mesto'),
  psc('psc'),
  telefon('telefon'),
  email('email'),
  variabilniSymbol('variabilni_symbol'),
  specifickySymbol('specificky_symbol'),
  ucetProPlatbyDoJidelny('ucet_pro_platby_do_jidelny'),
  ucetProVraceniPreplatkuJidelnou('ucet_pro_vraceni_preplatku_jidelnou');

  final String _key;
  const UzivatelskeUdaje(this._key);

  @override
  String toString() => _key;
}
