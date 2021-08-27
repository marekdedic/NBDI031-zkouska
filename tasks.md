## Úkol 1: vstup dat, grafické výstupy, připomenutí metod strojového učení

- [ ] (i.) Načtěte přidělená data ze zdrojového formátu, v němž jste je obdrželi (ASCII soubor, tabulka databáze Access, tabulka databáze MySQL, tabulka Excel) a uložte je pro další zpracování do binárního souboru systému Matlab (´´.mat´´).
- [ ] (ii.) Pomocí grafického uživatelského rozhraní „Neural Network Fitting Tool“ trénujte na datech umělé neuronové sítě s různými počty skrytých neuronů. Přitom přiřaďte klasifikační či regresní atributy výstupním neuronům a všechny zbývající atributy (vstupní atributy) vstupním neuronům sítě. Snažte se najít síť s co nejlepšími generalizačními schopnostmi (tj. s co nejmenší chybou na testovacích datech). Tuto síť uchovejte pro další použití.
- [ ] (iii.) Pro průměrné hodnoty (průměrné vzhledem k celému souboru dat) atributů přiřazených vstupním neuronům sestrojte 3D-graf plochy popisující závislost hodnoty výstupního neuronu (či některého z výstupních neuronů, pokud jich síť má více) na hodnotách některé dvojice vstupních neuronů.
- [ ] (iv.) Pro tytéž hodnoty atributů sestrojte řadu řezů, na nichž v úhrnu zobrazíte pomocí barevné škály závislost hodnoty výstupního neuronu (či některého z výstupních neuronů, pokud jich síť má více) na hodnotách některé trojice vstupních neuronů.
- [ ] (v.) Pomocí funkce „classregtree“ sestrojte nad daty rozhodovací strom maximální možné velikosti. Pro každý klasifikační atribut sestrojte jeden klasifikační strom, pro každý regresní atribut jeden regresní strom.
- [ ] (vi.) Zjistěte optimální úroveň prořezání sestrojeného rozhodovacího stromu při výpočtu chyby klasifikace či regrese pomocí 10-násobné křížové validace.
- [ ] (vii.) Graficky zobrazte sestrojený rozhodovací strom pro optimální úroveň prořezání. Poté interaktivně měňte v grafu úroveň prořezání a sledujte změnu zobrazeného stromu.
- [ ] (viii.) Zaokrouhlete v grafu hodnoty spojitých atributů na 2 platné cifry.

## Úkol 2: popisné statistiky, faktorová analýza

- [x] (i.) Spočtěte výběrový průměr, rozptyl, standardní odchylku, šikmost a špičatost všech numerických atributů.
- [x] (ii.) Sestrojte histogramy všech numerických atributů.
- [x] (iii.a) V případě klasifikačních dat spočtěte kovarianci a korelaci numerických vstupních atributů.
- [ ] (iii.b) V případě regresních dat spočtěte kovarianci a korelaci mezi numerickými vstupními atributy a regresními atributy.
- [x] (iv.a) V případě klasifikačních dat spočtěte kovariance a korelace numerických vstupních atributů pro jednotlivé třídy (tj., kovariance a korelace podmíněné jednotlivými hodnotami klasifikačního atributu) a porovnejte je s výsledky získanými ve (ii.a).
- [ ] (iv.b) V případě regresních dat proveďte analýzu rozptylu některého z regresních atributů na vstupních atributech v některém odhadnutelném lineárním modelu.
- [ ] (v.) Proveďte faktorovou analýzu hodnot vstupních atributů se 2 faktory při ortogonální rotaci souřadných os. Zjistěte, zda lze hodnoty vstupních atributů pomocí tohoto počtu faktorů vysvětlit.
- [ ] (vi.) Zopakujte (iv.) se 3 faktory.
- [ ] (vii.) Faktorové matice nalezené ve (iv.) a (v.) znázorněte graficky.

## Úkol 3: analýza hlavních komponent, shluková analýza

- [x] (i.) Najděte první 3 hlavní komponenty dat numerických vstupních atributů a vyjádření těchto dat v nich.
- [x] (ii.) Zopakujte (i.) po normalizaci vstupních proměnných na jednotkový rozptyl a porovnejte podíl celkového rozptylu, který odpovídá prvním 3 hlavním komponentám.
- [ ] (iii.) Znázorněte graficky vyjádření původních souřadnic a původních dat pomocí hlavních komponent nalezených v (i.) a (ii.).
- [ ] (iv.) Pro jednoduché spojení shluků a 2 vhodně zvolené vzdálenosti použitelné i pro shlukování na základě centroidů (k-means) proveďte hierarchickou shlukovou analýzu dat vstupních atributů.
- [ ] (v.) Výsledky (iv.) znázorněte pomocí dendrogramů.
- [ ] (vi.) Pro vzdálenost vedoucí k vyšší korelaci mezi délkou spojení shluků a vzdáleností dat rozdělte na základě výsledků (iv) data vstupních atributů do vhodně zvoleného počtu shluků.
- [ ] (vii.) Do téhož počtu shluků rozdělte při použití téže vzdálenosti data vstupních atributů shlukováním na základě centroidů.
- [ ] (viii.) Shluky získané oběma metodami znázorněte graficky.

## Úkol 4: testování hypotéz

- [ ] (i.a) V případě klasifikačních dat otestujte pro každý z numerických vstupních atributů, že jeho rozdělení pravděpodobnosti je shodné pro všechny třídy.
- [ ] (i.b) V případě regresních dat otestujte pro každý z numerických vstupních atributů a některý z regresních atributů hypotézu, že rozdělení pravděpodobnosti vstupních atributů je shodné pro nadprůměrné i podprůměrné hodnoty tohoto regresního atributu.
- [ ] (ii.) Empirické distribuční funkce používané v (i.) znázorněte graficky.
- [ ] (iii.) S použitím binomického testu, naprogramujte kvantifikátory dolní kritická implikace a dolní kritická ekvivalence systému 4ft-Miner.
- [ ] (iv.) S použitím c2 testu, naprogramujte c2-kvantifikátor systému 4ft-Miner.
- [ ] (v.) S použitím Fisherova jednostranného faktoriálového testu, naprogramujte Fisherův kvantifikátor systému 4ft-Miner.
- [ ] (vi.) Pomocí naprogramovaných kvantifikátorů zkoušejte získávat z dat tvrzení o vztazích mezi hodnotami vstupních atributů a klasifikačního atributu / regresního atributu / regresních atributů.
