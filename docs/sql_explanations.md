# SQL techniky použité v projekte

## JOIN

Používa sa na spájanie údajov z viacerých tabuliek.

Príklad:
customers -> orders -> order_items

---

## GROUP BY

Používa sa na agregáciu údajov podľa vybraného atribútu.

Príklad:
mesačné tržby podľa mesiaca.

---

## CTE (Common Table Expression)

Dočasná pomenovaná množina výsledkov vytvorená pomocou WITH.

Výhoda:
- lepšia čitateľnosť
- jednoduchšie ladenie komplexných query

---

## Window Functions

Umožňujú vykonávať výpočty nad skupinou riadkov bez straty detailu.

Použité funkcie:
- RANK()
- DENSE_RANK()
- ROW_NUMBER()
- LAG()
- LEAD()
- SUM() OVER()