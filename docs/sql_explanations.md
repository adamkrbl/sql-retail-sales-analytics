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

################################################

# Q01 - Monthly Revenue Analysis

     ## Cieľ

    Zistiť výšku tržieb za jednotlivé mesiace.

    ## Použité SQL techniky

    ### JOIN

    Spájame tabuľky orders a order_items.

    ### SUM()

    Počíta celkové tržby.

    ### GROUP BY

    Zoskupuje dáta podľa mesiaca.

    ### DATE_TRUNC()

    Zaokrúhľuje dátum na začiatok mesiaca pre potreby agregácie.

################################################

# Q02 - Top Customers

    ### Cieľ

    Identifikovať zákazníkov, ktorí generovali najvyššie tržby.

    ### Použité SQL techniky

    #### JOIN

    Spájame:

    customers -> orders -> order_items

    #### SUM()

    Počíta celkovú útratu zákazníka.

    #### GROUP BY

    Agreguje údaje na úroveň zákazníka.

    #### ORDER BY DESC

    Zoradí zákazníkov od najvyššej útraty po najnižšiu.

    #### LIMIT

    Vráti iba TOP 10 zákazníkov.

# Q03 - Customer Ranking

### Cieľ

Vytvoriť poradie zákazníkov podľa celkovej hodnoty nákupov.

### Použité SQL techniky

#### JOIN

Spájame tabuľky:

customers -> orders -> order_items

#### SUM()

Počíta celkovú útratu zákazníka.

#### GROUP BY

Agreguje dáta na úroveň zákazníka.

#### Window Function - RANK()

Vytvára poradie zákazníkov podľa výšky útraty.

#### ORDER BY

Zoradí výsledok podľa poradia zákazníkov.

# Q04 - Best Selling Products

### Cieľ

Identifikovať produkty s najvyšším predajom a tržbami.

### Použité SQL techniky

#### JOIN

Spájame tabuľky products a order_items.

#### SUM(quantity)

Počíta celkový počet predaných kusov produktu.

#### SUM(quantity * unit_price)

Počíta celkové tržby produktu.

#### GROUP BY

Agreguje údaje na úroveň produktu.

#### ORDER BY

Zoradí produkty podľa výšky tržieb.

# Q05 - Revenue by Category

### Cieľ

Zistiť, ktoré produktové kategórie generujú najvyššie tržby.

### Použité SQL techniky

#### JOIN

Spájame products a order_items.

#### SUM()

Počíta tržby a počet predaných kusov.

#### GROUP BY

Agreguje dáta na úroveň kategórie.

#### Revenue Analysis

Umožňuje porovnať výkonnosť jednotlivých kategórií.

# Q06 - Average Order Value (AOV)

### Cieľ

Vypočítať priemernú hodnotu objednávky.

### Použité SQL techniky

#### JOIN

Spájame orders a order_items.

#### SUM()

Počíta hodnotu jednotlivých objednávok.

#### AVG()

Počíta priemernú hodnotu objednávky.

#### Subquery

Najprv vytvoríme medzivýsledok s hodnotou každej objednávky a následne nad ním počítame priemer.

# Q07 - Customer Lifetime Value (CLV)

### Cieľ

Vypočítať celkovú hodnotu nákupov každého zákazníka počas sledovaného obdobia.

### Použité SQL techniky

#### JOIN

Spájame customers, orders a order_items.

#### SUM()

Počíta celkovú hodnotu nákupov zákazníka.

#### CTE (Common Table Expression)

Používame WITH na vytvorenie dočasného datasetu customer_revenue.

#### ORDER BY

Zoradí zákazníkov podľa lifetime value.

# Q08 - Monthly Revenue Growth

### Cieľ

Porovnať vývoj tržieb medzi jednotlivými mesiacmi.

### Použité SQL techniky

#### CTE

Najprv vytvárame agregované mesačné tržby.

#### Window Function - LAG()

Získava hodnotu tržieb z predchádzajúceho mesiaca.

#### Growth Calculation

Počíta percentuálnu zmenu oproti predchádzajúcemu mesiacu.

#### ORDER BY

Zabezpečuje správne chronologické poradie mesiacov.

# Q09 - Running Revenue

### Cieľ

Zobraziť kumulatívny rast tržieb počas sledovaného obdobia.

### Použité SQL techniky

#### CTE

Vytvára agregované mesačné tržby.

#### Window Function - SUM() OVER()

Počíta priebežný súčet tržieb.

#### ORDER BY

Zabezpečuje správne chronologické poradie mesiacov.

### Business Value

Umožňuje sledovať celkový rast tržieb v čase.

# Q10 - Customer Order Frequency

### Cieľ

Zistiť, koľko objednávok vytvoril každý zákazník.

### Použité SQL techniky

#### COUNT(DISTINCT)

Počíta unikátne objednávky zákazníka.

#### JOIN

Spájame customers, orders a order_items.

#### GROUP BY

Agreguje údaje na úroveň zákazníka.

### Business Value

Pomáha identifikovať verných a opakujúcich sa zákazníkov.

# Q11 - Top Products by Category

### Cieľ

Identifikovať najvýkonnejšie produkty v rámci jednotlivých kategórií.

### Použité SQL techniky

#### CTE

Pripravuje tržby produktov.

#### RANK() OVER()

Vytvára poradie produktov v rámci každej kategórie.

#### PARTITION BY

Rozdeľuje dáta podľa kategórie.

### Business Value

Pomáha identifikovať najúspešnejšie produkty v každej produktovej kategórii.

# Q12 - Revenue Share by Category

### Cieľ

Vypočítať percentuálny podiel jednotlivých kategórií na celkových tržbách.

### Použité SQL techniky

#### CTE

Pripravuje agregované tržby podľa kategórií.

#### SUM() OVER()

Počíta celkové tržby naprieč všetkými kategóriami.

#### Percentuálny podiel

Počíta podiel kategórie na celkových tržbách.

### Business Value

Pomáha identifikovať najdôležitejšie kategórie z pohľadu tržieb.