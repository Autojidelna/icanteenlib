# V tomto souboru je rozepsaná každá featura pro každou instituci. Je to takový to-do list

➖ - v instituci není featura potřeba nebo není v dané verzi icanteen

✅ - featura funguje

❌ - featura nefunguje

❓ - featura funguje částečně nebo nelze vyzkoušet

## Feature set

(featury na otestování u každé verze)

- Login
- Získej uživatele
  - kredit
  - jméno
  - Příjmení
  - Kategorie
  - Účet pro platby
  - Variabilní symbol
  - specifický symbol
  - Uživatelské jméno
- Jídelníček pro den
  - správný počet jídel
  - jídlo
    - název
    - cena
    - varianta
    - objednáno
    - lze objednat
    - na burze
    - alergeny
      - kódy
      - podrobnosti
      - název
    - rozdělení na kategorie
    - blokováno (vypršela platnost)
- Jídelníček pro měsíc
- Objednávání
  - funguje objednávání
  - funguje zrušení
- Burza
  - získání burzy
  - Objednávání z burzy
  - vložení jídla na burzu
  - zrušit vložení jídla na burzu
  - počet
- Výdejny (jiné lokace)

## Instituce

| Funkce                             | SPŠaG Na Třebešíně (2.18.03) | ZŠ Ostrava, Matiční 5 | SOŠ a SOU stavební Kolín | ČZA Humpolec |
| :--------------------------------- | :--------------------------: | :-------------------: | :----------------------: | :----------: |
| **Login**                          |              ✅              |          ✅           |            ❌            |      ✅      |
| **Získej uživatele**               |              ✅              |          ✅           |            ❌            |      ✅      |
| ├─ Kredit                          |              ✅              |          ✅           |            ❌            |      ✅      |
| ├─ Jméno                           |              ✅              |          ✅           |            ❌            |      ✅      |
| ├─ Příjmení                        |              ✅              |          ✅           |            ❌            |      ✅      |
| ├─ Kategorie                       |              ✅              |          ✅           |            ❌            |      ✅      |
| ├─ Účet pro platby                 |              ✅              |          ✅           |            ❌            |      ✅      |
| ├─ Variabilní symbol               |              ✅              |          ✅           |            ❌            |      ✅      |
| ├─ Specifický symbol               |              ❓              |          ❓           |            ❌            |      ➖      |
| └─ Uživatelské jméno               |              ✅              |          ✅           |            ❌            |      ✅      |
| **Jídelníček pro den**             |              ✅              |          ✅           |            ❌            |      ✅      |
| ├─ Správný počet jídel             |              ✅              |          ✅           |            ❌            |      ✅      |
| ├─ Jídlo                           |              ✅              |          ✅           |            ❌            |      ✅      |
| │ ├─ Název                         |              ✅              |   ✅ _(dvě mezery)_   |            ❌            |      ✅      |
| │ ├─ Cena                          |              ✅              |          ✅           |            ❌            |      ✅      |
| │ ├─ Varianta                      |              ✅              |          ✅           |            ❌            |      ✅      |
| │ ├─ Objednáno                     |              ✅              |          ✅           |            ❌            |      ✅      |
| │ ├─ Lze objednat                  |              ✅              |          ✅           |            ❌            |      ✅      |
| │ ├─ Na burze                      |              ✅              |          ✅           |            ❌            |      ➖      |
| │ ├─ Alergeny                      |              ✅              |          ✅           |            ❌            |      ➖      |
| │ │ ├─ Kódy                        |      ➖ _(nedostupné)_       |          ✅           |            ❌            |      ➖      |
| │ │ ├─ Podrobnosti                 |              ✅              |          ✅           |            ❌            |      ➖      |
| │ │ └─ Název                       |              ✅              |          ✅           |            ❌            |      ➖      |
| │ ├─ Rozdělení na kategorie        |              ✅              |          ✅           |            ❌            |      ✅      |
| │ └─ Blokováno (vypršela platnost) |              ➖              |          ➖           |            ❌            |      ➖      |
| **Jídelníček pro měsíc**           |              ✅              |          ✅           |            ❌            |      ✅      |
| **Objednávání**                    |              ✅              |          ✅           |            ❌            |      ✅      |
| ├─ Funguje objednávání             |              ✅              |          ✅           |            ❌            |      ✅      |
| └─ Funguje zrušení                 |              ✅              |          ✅           |            ❌            |      ✅      |
| **Burza**                          |              ✅              |          ✅           |            ❌            |      ➖      |
| ├─ Získání burzy                   |              ✅              |          ✅           |            ❌            |      ➖      |
| ├─ Objednávání z burzy             |              ✅              |          ✅           |            ❌            |      ➖      |
| ├─ Vložení jídla na burzu          |              ✅              |          ✅           |            ❌            |      ➖      |
| ├─ Zrušit vložení jídla            |              ✅              |          ✅           |            ❌            |      ➖      |
| └─ Počet                           |              ➖              |          ➖           |            ❌            |      ➖      |
| **Výdejny (jiné lokace)**          |              ➖              |          ➖           |            ❌            |      ➖      |
