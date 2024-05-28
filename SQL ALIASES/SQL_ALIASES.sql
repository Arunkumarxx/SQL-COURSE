# SQL Aliases
# SQL aliases are used to give a table, or a column in a table, a temporary name.
#
# Aliases are often used to make column names more readable.
#
# An alias only exists for the duration of that query.
#
# An alias is created with the AS keyword.

# Syntax
# When alias is used on column:
#
# SELECT column_name AS alias_name
# FROM table_name;
#
# When alias is used on table:
#
# SELECT column_name(s)
# FROM table_name AS alias_name;

select CustomerID as tempCol from customers;
/*
 +---------+
| tempCol |
+---------+
|       2 |
|       3 |
|       4 |
|       5 |
|       6 |
|       7 |
|       8 |
|       9 |
|      10 |
|      11 |
|      12 |
|      13 |
|      14 |
|      15 |
|      16 |
|      17 |
|      18 |
|      19 |
|      20 |
|      21 |
|      22 |
|      23 |
|      24 |
|      25 |
|      26 |
|      27 |
|      28 |
|      29 |
|      30 |
|      31 |
|      32 |
|      33 |
|      34 |
|      35 |
|      36 |
|      37 |
|      38 |
|      39 |
|      40 |
|      41 |
|      42 |
|      43 |
|      44 |
|      45 |
|      46 |
|      47 |
|      48 |
|      49 |
|      50 |
|      51 |
|      52 |
|      53 |
|      54 |
|      55 |
|      56 |
|      57 |
|      58 |
|      59 |
|      60 |
|      61 |
|      62 |
|      63 |
|      64 |
|      65 |
|      66 |
|      67 |
|      68 |
|      69 |
|      70 |
|      71 |
|      72 |
|      73 |
|      74 |
|      75 |
|      76 |
|      77 |
|      78 |
|      79 |
|      80 |
|      81 |
|      82 |
|      83 |
|      84 |
|      85 |
|      86 |
|      87 |
|      88 |
|      89 |
|      90 |
|      91 |
+---------+
 */
select * from customers as TempTable;
/*
 +------------+--------------------------------------+----------------------+------------------------------------------------+-----------------+------------+-------------+
| CustomerID | CustomerName                         | ContactName          | Address                                        | City            | PostalCode | Country     |
+------------+--------------------------------------+----------------------+------------------------------------------------+-----------------+------------+-------------+
|          2 | Ana Trujillo Emparedados y helados   | Ana Trujillo         | Avda. de la Constitución 2222                  | México D.F.     | 05021      | Mexico      |
|          3 | Antonio Moreno Taquería              | Antonio Moreno       | Mataderos 2312                                 | México D.F.     | 05023      | Mexico      |
|          4 | Around the Horn                      | Thomas Hardy         | 120 Hanover Sq.                                | London          | WA1 1DP    | UK          |
|          5 | Berglunds snabbköp                   | Christina Berglund   | Berguvsvägen 8                                 | Luleå           | S-958 22   | Sweden      |
|          6 | Blauer See Delikatessen              | Hanna Moos           | Forsterstr. 57                                 | Mannheim        | 68306      | Germany     |
|          7 | Blondel père et fils                 | Frédérique Citeaux   | 24, place Kléber                               | Strasbourg      | 67000      | France      |
|          8 | Bólido Comidas preparadas            | Martín Sommer        | C/ Araquil, 67                                 | Madrid          | 28023      | Spain       |
|          9 | Bon app'                             | Laurence Lebihans    | 12, rue des Bouchers                           | Marseille       | 13008      | France      |
|         10 | Bottom-Dollar Marketse               | Elizabeth Lincoln    | 23 Tsawassen Blvd.                             | Tsawassen       | T2F 8M4    | Canada      |
|         11 | B's Beverages                        | Victoria Ashworth    | Fauntleroy Circus                              | London          | EC2 5NT    | UK          |
|         12 | Cactus Comidas para llevar           | Patricio Simpson     | Cerrito 333                                    | Buenos Aires    | 1010       | Argentina   |
|         13 | Centro comercial Moctezuma           | Francisco Chang      | Sierras de Granada 9993                        | México D.F.     | 05022      | Mexico      |
|         14 | Chop-suey Chinese                    | Yang Wang            | Hauptstr. 29                                   | Bern            | 3012       | Switzerland |
|         15 | Comércio Mineiro                     | Pedro Afonso         | Av. dos Lusíadas, 23                           | São Paulo       | 05432-043  | Brazil      |
|         16 | Consolidated Holdings                | Elizabeth Brown      | Berkeley Gardens 12 Brewery                    | London          | WX1 6LT    | UK          |
|         17 | Drachenblut Delikatessend            | Sven Ottlieb         | Walserweg 21                                   | Aachen          | 52066      | Germany     |
|         18 | Du monde entier                      | Janine Labrune       | 67, rue des Cinquante Otages                   | Nantes          | 44000      | France      |
|         19 | Eastern Connection                   | Ann Devon            | 35 King George                                 | London          | WX3 6FW    | UK          |
|         20 | Ernst Handel                         | Roland Mendel        | Kirchgasse 6                                   | Graz            | 8010       | Austria     |
|         21 | Familia Arquibaldo                   | Aria Cruz            | Rua Orós, 92                                   | São Paulo       | 05442-030  | Brazil      |
|         22 | FISSA Fabrica Inter. Salchichas S.A. | Diego Roel           | C/ Moralzarzal, 86                             | Madrid          | 28034      | Spain       |
|         23 | Folies gourmandes                    | Martine Rancé        | 184, chaussée de Tournai                       | Lille           | 59000      | France      |
|         24 | Folk och fä HB                       | Maria Larsson        | Åkergatan 24                                   | Bräcke          | S-844 67   | Sweden      |
|         25 | Frankenversand                       | Peter Franken        | Berliner Platz 43                              | München         | 80805      | Germany     |
|         26 | France restauration                  | Carine Schmitt       | 54, rue Royale                                 | Nantes          | 44000      | France      |
|         27 | Franchi S.p.A.                       | Paolo Accorti        | Via Monte Bianco 34                            | Torino          | 10100      | Italy       |
|         28 | Furia Bacalhau e Frutos do Mar       | Lino Rodriguez       | Jardim das rosas n. 32                         | Lisboa          | 1675       | Portugal    |
|         29 | Galería del gastrónomo               | Eduardo Saavedra     | Rambla de Cataluña, 23                         | Barcelona       | 08022      | Spain       |
|         30 | Godos Cocina Típica                  | José Pedro Freyre    | C/ Romero, 33                                  | Sevilla         | 41101      | Spain       |
|         31 | Gourmet Lanchonetes                  | André Fonseca        | Av. Brasil, 442                                | Campinas        | 04876-786  | Brazil      |
|         32 | Great Lakes Food Market              | Howard Snyder        | 2732 Baker Blvd.                               | Eugene          | 97403      | USA         |
|         33 | GROSELLA-Restaurante                 | Manuel Pereira       | 5ª Ave. Los Palos Grandes                      | Caracas         | 1081       | Venezuela   |
|         34 | Hanari Carnes                        | Mario Pontes         | Rua do Paço, 67                                | Rio de Janeiro  | 05454-876  | Brazil      |
|         35 | HILARIÓN-Abastos                     | Carlos Hernández     | Carrera 22 con Ave. Carlos Soublette #8-35     | San Cristóbal   | 5022       | Venezuela   |
|         36 | Hungry Coyote Import Store           | Yoshi Latimer        | City Center Plaza 516 Main St.                 | Elgin           | 97827      | USA         |
|         37 | Hungry Owl All-Night Grocers         | Patricia McKenna     | 8 Johnstown Road                               | Cork            | NULL       | Ireland     |
|         38 | Island Trading                       | Helen Bennett        | Garden House Crowther Way                      | Cowes           | PO31 7PJ   | UK          |
|         39 | Königlich Essen                      | Philip Cramer        | Maubelstr. 90                                  | Brandenburg     | 14776      | Germany     |
|         40 | La corne d'abondance                 | Daniel Tonini        | 67, avenue de l'Europe                         | Versailles      | 78000      | France      |
|         41 | La maison d'Asie                     | Annette Roulet       | 1 rue Alsace-Lorraine                          | Toulouse        | 31000      | France      |
|         42 | Laughing Bacchus Wine Cellars        | Yoshi Tannamuri      | 1900 Oak St.                                   | Vancouver       | V3F 2K1    | Canada      |
|         43 | Lazy K Kountry Store                 | John Steel           | 12 Orchestra Terrace                           | Walla Walla     | 99362      | USA         |
|         44 | Lehmanns Marktstand                  | Renate Messner       | Magazinweg 7                                   | Frankfurt a.M.  | 60528      | Germany     |
|         45 | Let's Stop N Shop                    | Jaime Yorres         | 87 Polk St. Suite 5                            | San Francisco   | 94117      | USA         |
|         46 | LILA-Supermercado                    | Carlos González      | Carrera 52 con Ave. Bolívar #65-98 Llano Largo | Barquisimeto    | 3508       | Venezuela   |
|         47 | LINO-Delicateses                     | Felipe Izquierdo     | Ave. 5 de Mayo Porlamar                        | I. de Margarita | 4980       | Venezuela   |
|         48 | Lonesome Pine Restaurant             | Fran Wilson          | 89 Chiaroscuro Rd.                             | Portland        | 97219      | USA         |
|         49 | Magazzini Alimentari Riuniti         | Giovanni Rovelli     | Via Ludovico il Moro 22                        | Bergamo         | 24100      | Italy       |
|         50 | Maison Dewey                         | Catherine Dewey      | Rue Joseph-Bens 532                            | Bruxelles       | B-1180     | Belgium     |
|         51 | Mère Paillarde                       | Jean Fresnière       | 43 rue St. Laurent                             | Montréal        | H1J 1C3    | Canada      |
|         52 | Morgenstern Gesundkost               | Alexander Feuer      | Heerstr. 22                                    | Leipzig         | 04179      | Germany     |
|         53 | North/South                          | Simon Crowther       | South House 300 Queensbridge                   | London          | SW7 1RZ    | UK          |
|         54 | Océano Atlántico Ltda.               | Yvonne Moncada       | Ing. Gustavo Moncada 8585 Piso 20-A            | Buenos Aires    | 1010       | Argentina   |
|         55 | Old World Delicatessen               | Rene Phillips        | 2743 Bering St.                                | Anchorage       | 99508      | USA         |
|         56 | Ottilies Käseladen                   | Henriette Pfalzheim  | Mehrheimerstr. 369                             | Köln            | 50739      | Germany     |
|         57 | Paris spécialités                    | Marie Bertrand       | 265, boulevard Charonne                        | Paris           | 75012      | France      |
|         58 | Pericles Comidas clásicas            | Guillermo Fernández  | Calle Dr. Jorge Cash 321                       | México D.F.     | 05033      | Mexico      |
|         59 | Piccolo und mehr                     | Georg Pipps          | Geislweg 14                                    | Salzburg        | 5020       | Austria     |
|         60 | Princesa Isabel Vinhoss              | Isabel de Castro     | Estrada da saúde n. 58                         | Lisboa          | 1756       | Portugal    |
|         61 | Que Delícia                          | Bernardo Batista     | Rua da Panificadora, 12                        | Rio de Janeiro  | 02389-673  | Brazil      |
|         62 | Queen Cozinha                        | Lúcia Carvalho       | Alameda dos Canàrios, 891                      | São Paulo       | 05487-020  | Brazil      |
|         63 | QUICK-Stop                           | Horst Kloss          | Taucherstraße 10                               | Cunewalde       | 01307      | Germany     |
|         64 | Rancho grande                        | Sergio Gutiérrez     | Av. del Libertador 900                         | Buenos Aires    | 1010       | Argentina   |
|         65 | Rattlesnake Canyon Grocery           | Paula Wilson         | 2817 Milton Dr.                                | Albuquerque     | 87110      | USA         |
|         66 | Reggiani Caseifici                   | Maurizio Moroni      | Strada Provinciale 124                         | Reggio Emilia   | 42100      | Italy       |
|         67 | Ricardo Adocicados                   | Janete Limeira       | Av. Copacabana, 267                            | Rio de Janeiro  | 02389-890  | Brazil      |
|         68 | Richter Supermarkt                   | Michael Holz         | Grenzacherweg 237                              | Genève          | 1203       | Switzerland |
|         69 | Romero y tomillo                     | Alejandra Camino     | Gran Vía, 1                                    | Madrid          | 28001      | Spain       |
|         70 | Santé Gourmet                        | Jonas Bergulfsen     | Erling Skakkes gate 78                         | Stavern         | 4110       | Norway      |
|         71 | Save-a-lot Markets                   | Jose Pavarotti       | 187 Suffolk Ln.                                | Boise           | 83720      | USA         |
|         72 | Seven Seas Imports                   | Hari Kumar           | 90 Wadhurst Rd.                                | London          | OX15 4NB   | UK          |
|         73 | Simons bistro                        | Jytte Petersen       | Vinbæltet 34                                   | København       | 1734       | Denmark     |
|         74 | Spécialités du monde                 | Dominique Perrier    | 25, rue Lauriston                              | Lyon            | 75016      | France      |
|         75 | Split Rail Beer & Ale                | Art Braunschweiger   | P.O. Box 555                                   | Lander          | 82520      | USA         |
|         76 | Suprêmes délices                     | Pascale Cartrain     | Boulevard Tirou, 255                           | Charleroi       | B-6000     | Belgium     |
|         77 | The Big Cheese                       | Liz Nixon            | 89 Jefferson Way Suite 2                       | Portland        | 97201      | USA         |
|         78 | The Cracker Box                      | Liu Wong             | 55 Grizzly Peak Rd.                            | Butte           | 59801      | USA         |
|         79 | Toms Spezialitäten                   | Karin Josephs        | Luisenstr. 48                                  | Münster         | 44087      | Germany     |
|         80 | Tortuga Restaurante                  | Miguel Angel Paolino | Avda. Azteca 123                               | México D.F.     | 05033      | Mexico      |
|         81 | Tradição Hipermercados               | Anabela Domingues    | Av. Inês de Castro, 414                        | São Paulo       | 05634-030  | Brazil      |
|         82 | Trail's Head Gourmet Provisioners    | Helvetius Nagy       | 722 DaVinci Blvd.                              | Kirkland        | 98034      | USA         |
|         83 | Vaffeljernet                         | Palle Ibsen          | Smagsløget 45                                  | Århus           | 8200       | Denmark     |
|         84 | Victuailles en stock                 | Mary Saveley         | 2, rue du Commerce                             | Lyon            | 69004      | France      |
|         85 | Vins et alcools Chevalier            | Paul Henriot         | 59 rue de l'Abbaye                             | Reims           | 51100      | France      |
|         86 | Die Wandernde Kuh                    | Rita Müller          | Adenauerallee 900                              | Stuttgart       | 70563      | Germany     |
|         87 | Wartian Herkku                       | Pirkko Koskitalo     | Torikatu 38                                    | Oulu            | 90110      | Finland     |
|         88 | Wellington Importadora               | Paula Parente        | Rua do Mercado, 12                             | Resende         | 08737-363  | Brazil      |
|         89 | White Clover Markets                 | Karl Jablonski       | 305 - 14th Ave. S. Suite 3B                    | Seattle         | 98128      | USA         |
|         90 | Wilman Kala                          | Matti Karttunen      | Keskuskatu 45                                  | Helsinki        | 21240      | Finland     |
|         91 | Wolski                               | Zbyszek              | ul. Filtrowa 68                                | Walla           | 01-012     | NULL        |
+------------+--------------------------------------+----------------------+------------------------------------------------+-----------------+------------+-------------+
 *
 */

select CustomerID as col1,CustomerName as col2  from customers as tables;
/*
 +------+--------------------------------------+
| col1 | col2                                 |
+------+--------------------------------------+
|    2 | Ana Trujillo Emparedados y helados   |
|    3 | Antonio Moreno Taquería              |
|    4 | Around the Horn                      |
|    5 | Berglunds snabbköp                   |
|    6 | Blauer See Delikatessen              |
|    7 | Blondel père et fils                 |
|    8 | Bólido Comidas preparadas            |
|    9 | Bon app'                             |
|   10 | Bottom-Dollar Marketse               |
|   11 | B's Beverages                        |
|   12 | Cactus Comidas para llevar           |
|   13 | Centro comercial Moctezuma           |
|   14 | Chop-suey Chinese                    |
|   15 | Comércio Mineiro                     |
|   16 | Consolidated Holdings                |
|   17 | Drachenblut Delikatessend            |
|   18 | Du monde entier                      |
|   19 | Eastern Connection                   |
|   20 | Ernst Handel                         |
|   21 | Familia Arquibaldo                   |
|   22 | FISSA Fabrica Inter. Salchichas S.A. |
|   23 | Folies gourmandes                    |
|   24 | Folk och fä HB                       |
|   25 | Frankenversand                       |
|   26 | France restauration                  |
|   27 | Franchi S.p.A.                       |
|   28 | Furia Bacalhau e Frutos do Mar       |
|   29 | Galería del gastrónomo               |
|   30 | Godos Cocina Típica                  |
|   31 | Gourmet Lanchonetes                  |
|   32 | Great Lakes Food Market              |
|   33 | GROSELLA-Restaurante                 |
|   34 | Hanari Carnes                        |
|   35 | HILARIÓN-Abastos                     |
|   36 | Hungry Coyote Import Store           |
|   37 | Hungry Owl All-Night Grocers         |
|   38 | Island Trading                       |
|   39 | Königlich Essen                      |
|   40 | La corne d'abondance                 |
|   41 | La maison d'Asie                     |
|   42 | Laughing Bacchus Wine Cellars        |
|   43 | Lazy K Kountry Store                 |
|   44 | Lehmanns Marktstand                  |
|   45 | Let's Stop N Shop                    |
|   46 | LILA-Supermercado                    |
|   47 | LINO-Delicateses                     |
|   48 | Lonesome Pine Restaurant             |
|   49 | Magazzini Alimentari Riuniti         |
|   50 | Maison Dewey                         |
|   51 | Mère Paillarde                       |
|   52 | Morgenstern Gesundkost               |
|   53 | North/South                          |
|   54 | Océano Atlántico Ltda.               |
|   55 | Old World Delicatessen               |
|   56 | Ottilies Käseladen                   |
|   57 | Paris spécialités                    |
|   58 | Pericles Comidas clásicas            |
|   59 | Piccolo und mehr                     |
|   60 | Princesa Isabel Vinhoss              |
|   61 | Que Delícia                          |
|   62 | Queen Cozinha                        |
|   63 | QUICK-Stop                           |
|   64 | Rancho grande                        |
|   65 | Rattlesnake Canyon Grocery           |
|   66 | Reggiani Caseifici                   |
|   67 | Ricardo Adocicados                   |
|   68 | Richter Supermarkt                   |
|   69 | Romero y tomillo                     |
|   70 | Santé Gourmet                        |
|   71 | Save-a-lot Markets                   |
|   72 | Seven Seas Imports                   |
|   73 | Simons bistro                        |
|   74 | Spécialités du monde                 |
|   75 | Split Rail Beer & Ale                |
|   76 | Suprêmes délices                     |
|   77 | The Big Cheese                       |
|   78 | The Cracker Box                      |
|   79 | Toms Spezialitäten                   |
|   80 | Tortuga Restaurante                  |
|   81 | Tradição Hipermercados               |
|   82 | Trail's Head Gourmet Provisioners    |
|   83 | Vaffeljernet                         |
|   84 | Victuailles en stock                 |
|   85 | Vins et alcools Chevalier            |
|   86 | Die Wandernde Kuh                    |
|   87 | Wartian Herkku                       |
|   88 | Wellington Importadora               |
|   89 | White Clover Markets                 |
|   90 | Wilman Kala                          |
|   91 | Wolski                               |
+------+--------------------------------------+
 */
select CustomerID as "id number", CustomerName as "Name list" from customers as xyz_company;

/*
 +-----------+--------------------------------------+
| Id_Number | nameList                             |
+-----------+--------------------------------------+
|         2 | Ana Trujillo Emparedados y helados   |
|         3 | Antonio Moreno Taquería              |
|         4 | Around the Horn                      |
|         5 | Berglunds snabbköp                   |
|         6 | Blauer See Delikatessen              |
|         7 | Blondel père et fils                 |
|         8 | Bólido Comidas preparadas            |
|         9 | Bon app'                             |
|        10 | Bottom-Dollar Marketse               |
|        11 | B's Beverages                        |
|        12 | Cactus Comidas para llevar           |
|        13 | Centro comercial Moctezuma           |
|        14 | Chop-suey Chinese                    |
|        15 | Comércio Mineiro                     |
|        16 | Consolidated Holdings                |
|        17 | Drachenblut Delikatessend            |
|        18 | Du monde entier                      |
|        19 | Eastern Connection                   |
|        20 | Ernst Handel                         |
|        21 | Familia Arquibaldo                   |
|        22 | FISSA Fabrica Inter. Salchichas S.A. |
|        23 | Folies gourmandes                    |
|        24 | Folk och fä HB                       |
|        25 | Frankenversand                       |
|        26 | France restauration                  |
|        27 | Franchi S.p.A.                       |
|        28 | Furia Bacalhau e Frutos do Mar       |
|        29 | Galería del gastrónomo               |
|        30 | Godos Cocina Típica                  |
|        31 | Gourmet Lanchonetes                  |
|        32 | Great Lakes Food Market              |
|        33 | GROSELLA-Restaurante                 |
|        34 | Hanari Carnes                        |
|        35 | HILARIÓN-Abastos                     |
|        36 | Hungry Coyote Import Store           |
|        37 | Hungry Owl All-Night Grocers         |
|        38 | Island Trading                       |
|        39 | Königlich Essen                      |
|        40 | La corne d'abondance                 |
|        41 | La maison d'Asie                     |
|        42 | Laughing Bacchus Wine Cellars        |
|        43 | Lazy K Kountry Store                 |
|        44 | Lehmanns Marktstand                  |
|        45 | Let's Stop N Shop                    |
|        46 | LILA-Supermercado                    |
|        47 | LINO-Delicateses                     |
|        48 | Lonesome Pine Restaurant             |
|        49 | Magazzini Alimentari Riuniti         |
|        50 | Maison Dewey                         |
|        51 | Mère Paillarde                       |
|        52 | Morgenstern Gesundkost               |
|        53 | North/South                          |
|        54 | Océano Atlántico Ltda.               |
|        55 | Old World Delicatessen               |
|        56 | Ottilies Käseladen                   |
|        57 | Paris spécialités                    |
|        58 | Pericles Comidas clásicas            |
|        59 | Piccolo und mehr                     |
|        60 | Princesa Isabel Vinhoss              |
|        61 | Que Delícia                          |
|        62 | Queen Cozinha                        |
|        63 | QUICK-Stop                           |
|        64 | Rancho grande                        |
|        65 | Rattlesnake Canyon Grocery           |
|        66 | Reggiani Caseifici                   |
|        67 | Ricardo Adocicados                   |
|        68 | Richter Supermarkt                   |
|        69 | Romero y tomillo                     |
|        70 | Santé Gourmet                        |
|        71 | Save-a-lot Markets                   |
|        72 | Seven Seas Imports                   |
|        73 | Simons bistro                        |
|        74 | Spécialités du monde                 |
|        75 | Split Rail Beer & Ale                |
|        76 | Suprêmes délices                     |
|        77 | The Big Cheese                       |
|        78 | The Cracker Box                      |
|        79 | Toms Spezialitäten                   |
|        80 | Tortuga Restaurante                  |
|        81 | Tradição Hipermercados               |
|        82 | Trail's Head Gourmet Provisioners    |
|        83 | Vaffeljernet                         |
|        84 | Victuailles en stock                 |
|        85 | Vins et alcools Chevalier            |
|        86 | Die Wandernde Kuh                    |
|        87 | Wartian Herkku                       |
|        88 | Wellington Importadora               |
|        89 | White Clover Markets                 |
|        90 | Wilman Kala                          |
|        91 | Wolski                               |
+-----------+--------------------------------------+
 */

# Concatenate Columns
# The following SQL statement creates an alias named "Address"
# that combine four columns (Address, PostalCode, City and Country):
select customers.ContactName,CONCAT(customers.Address,',',customers.PostalCode,',',customers.Country)as address from customers;
/*
 +----------------------+---------------------------------------------------------------+
| ContactName          | address                                                       |
+----------------------+---------------------------------------------------------------+
| Ana Trujillo         | Avda. de la Constitución 2222,05021,Mexico                    |
| Antonio Moreno       | Mataderos 2312,05023,Mexico                                   |
| Thomas Hardy         | 120 Hanover Sq.,WA1 1DP,UK                                    |
| Christina Berglund   | Berguvsvägen 8,S-958 22,Sweden                                |
| Hanna Moos           | Forsterstr. 57,68306,Germany                                  |
| Frédérique Citeaux   | 24, place Kléber,67000,France                                 |
| Martín Sommer        | C/ Araquil, 67,28023,Spain                                    |
| Laurence Lebihans    | 12, rue des Bouchers,13008,France                             |
| Elizabeth Lincoln    | 23 Tsawassen Blvd.,T2F 8M4,Canada                             |
| Victoria Ashworth    | Fauntleroy Circus,EC2 5NT,UK                                  |
| Patricio Simpson     | Cerrito 333,1010,Argentina                                    |
| Francisco Chang      | Sierras de Granada 9993,05022,Mexico                          |
| Yang Wang            | Hauptstr. 29,3012,Switzerland                                 |
| Pedro Afonso         | Av. dos Lusíadas, 23,05432-043,Brazil                         |
| Elizabeth Brown      | Berkeley Gardens 12 Brewery,WX1 6LT,UK                        |
| Sven Ottlieb         | Walserweg 21,52066,Germany                                    |
| Janine Labrune       | 67, rue des Cinquante Otages,44000,France                     |
| Ann Devon            | 35 King George,WX3 6FW,UK                                     |
| Roland Mendel        | Kirchgasse 6,8010,Austria                                     |
| Aria Cruz            | Rua Orós, 92,05442-030,Brazil                                 |
| Diego Roel           | C/ Moralzarzal, 86,28034,Spain                                |
| Martine Rancé        | 184, chaussée de Tournai,59000,France                         |
| Maria Larsson        | Åkergatan 24,S-844 67,Sweden                                  |
| Peter Franken        | Berliner Platz 43,80805,Germany                               |
| Carine Schmitt       | 54, rue Royale,44000,France                                   |
| Paolo Accorti        | Via Monte Bianco 34,10100,Italy                               |
| Lino Rodriguez       | Jardim das rosas n. 32,1675,Portugal                          |
| Eduardo Saavedra     | Rambla de Cataluña, 23,08022,Spain                            |
| José Pedro Freyre    | C/ Romero, 33,41101,Spain                                     |
| André Fonseca        | Av. Brasil, 442,04876-786,Brazil                              |
| Howard Snyder        | 2732 Baker Blvd.,97403,USA                                    |
| Manuel Pereira       | 5ª Ave. Los Palos Grandes,1081,Venezuela                      |
| Mario Pontes         | Rua do Paço, 67,05454-876,Brazil                              |
| Carlos Hernández     | Carrera 22 con Ave. Carlos Soublette #8-35,5022,Venezuela     |
| Yoshi Latimer        | City Center Plaza 516 Main St.,97827,USA                      |
| Patricia McKenna     | NULL                                                          |
| Helen Bennett        | Garden House Crowther Way,PO31 7PJ,UK                         |
| Philip Cramer        | Maubelstr. 90,14776,Germany                                   |
| Daniel Tonini        | 67, avenue de l'Europe,78000,France                           |
| Annette Roulet       | 1 rue Alsace-Lorraine,31000,France                            |
| Yoshi Tannamuri      | 1900 Oak St.,V3F 2K1,Canada                                   |
| John Steel           | 12 Orchestra Terrace,99362,USA                                |
| Renate Messner       | Magazinweg 7,60528,Germany                                    |
| Jaime Yorres         | 87 Polk St. Suite 5,94117,USA                                 |
| Carlos González      | Carrera 52 con Ave. Bolívar #65-98 Llano Largo,3508,Venezuela |
| Felipe Izquierdo     | Ave. 5 de Mayo Porlamar,4980,Venezuela                        |
| Fran Wilson          | 89 Chiaroscuro Rd.,97219,USA                                  |
| Giovanni Rovelli     | Via Ludovico il Moro 22,24100,Italy                           |
| Catherine Dewey      | Rue Joseph-Bens 532,B-1180,Belgium                            |
| Jean Fresnière       | 43 rue St. Laurent,H1J 1C3,Canada                             |
| Alexander Feuer      | Heerstr. 22,04179,Germany                                     |
| Simon Crowther       | South House 300 Queensbridge,SW7 1RZ,UK                       |
| Yvonne Moncada       | Ing. Gustavo Moncada 8585 Piso 20-A,1010,Argentina            |
| Rene Phillips        | 2743 Bering St.,99508,USA                                     |
| Henriette Pfalzheim  | Mehrheimerstr. 369,50739,Germany                              |
| Marie Bertrand       | 265, boulevard Charonne,75012,France                          |
| Guillermo Fernández  | Calle Dr. Jorge Cash 321,05033,Mexico                         |
| Georg Pipps          | Geislweg 14,5020,Austria                                      |
| Isabel de Castro     | Estrada da saúde n. 58,1756,Portugal                          |
| Bernardo Batista     | Rua da Panificadora, 12,02389-673,Brazil                      |
| Lúcia Carvalho       | Alameda dos Canàrios, 891,05487-020,Brazil                    |
| Horst Kloss          | Taucherstraße 10,01307,Germany                                |
| Sergio Gutiérrez     | Av. del Libertador 900,1010,Argentina                         |
| Paula Wilson         | 2817 Milton Dr.,87110,USA                                     |
| Maurizio Moroni      | Strada Provinciale 124,42100,Italy                            |
| Janete Limeira       | Av. Copacabana, 267,02389-890,Brazil                          |
| Michael Holz         | Grenzacherweg 237,1203,Switzerland                            |
| Alejandra Camino     | Gran Vía, 1,28001,Spain                                       |
| Jonas Bergulfsen     | Erling Skakkes gate 78,4110,Norway                            |
| Jose Pavarotti       | 187 Suffolk Ln.,83720,USA                                     |
| Hari Kumar           | 90 Wadhurst Rd.,OX15 4NB,UK                                   |
| Jytte Petersen       | Vinbæltet 34,1734,Denmark                                     |
| Dominique Perrier    | 25, rue Lauriston,75016,France                                |
| Art Braunschweiger   | P.O. Box 555,82520,USA                                        |
| Pascale Cartrain     | Boulevard Tirou, 255,B-6000,Belgium                           |
| Liz Nixon            | 89 Jefferson Way Suite 2,97201,USA                            |
| Liu Wong             | 55 Grizzly Peak Rd.,59801,USA                                 |
| Karin Josephs        | Luisenstr. 48,44087,Germany                                   |
| Miguel Angel Paolino | Avda. Azteca 123,05033,Mexico                                 |
| Anabela Domingues    | Av. Inês de Castro, 414,05634-030,Brazil                      |
| Helvetius Nagy       | 722 DaVinci Blvd.,98034,USA                                   |
| Palle Ibsen          | Smagsløget 45,8200,Denmark                                    |
| Mary Saveley         | 2, rue du Commerce,69004,France                               |
| Paul Henriot         | 59 rue de l'Abbaye,51100,France                               |
| Rita Müller          | Adenauerallee 900,70563,Germany                               |
| Pirkko Koskitalo     | Torikatu 38,90110,Finland                                     |
| Paula Parente        | Rua do Mercado, 12,08737-363,Brazil                           |
| Karl Jablonski       | 305 - 14th Ave. S. Suite 3B,98128,USA                         |
| Matti Karttunen      | Keskuskatu 45,21240,Finland                                   |
| Zbyszek              | NULL                                                          |
+----------------------+---------------------------------------------------------------+
 */


select CONCAT(fn.FirstName,',',fn.LastName)
as FullName,PersonDetails.CategoryName as
TypeOfFoodLIke from categories as
PersonDetails
,employees as fn  order by fn.FirstName;
/*
 +------------------+----------------+
| FullName         | TypeOfFoodLIke |
+------------------+----------------+
| Adam,West        | Beverages      |
| Adam,West        | Condiments     |
| Adam,West        | Confections    |
| Adam,West        | Dairy Products |
| Adam,West        | Grains/Cereals |
| Adam,West        | Meat/Poultry   |
| Adam,West        | Produce        |
| Adam,West        | Seafood        |
| Andrew,Fuller    | Meat/Poultry   |
| Andrew,Fuller    | Seafood        |
| Andrew,Fuller    | Produce        |
| Andrew,Fuller    | Grains/Cereals |
| Andrew,Fuller    | Dairy Products |
| Andrew,Fuller    | Confections    |
| Andrew,Fuller    | Condiments     |
| Andrew,Fuller    | Beverages      |
| Anne,Dodsworth   | Confections    |
| Anne,Dodsworth   | Beverages      |
| Anne,Dodsworth   | Condiments     |
| Anne,Dodsworth   | Dairy Products |
| Anne,Dodsworth   | Grains/Cereals |
| Anne,Dodsworth   | Meat/Poultry   |
| Anne,Dodsworth   | Produce        |
| Anne,Dodsworth   | Seafood        |
| Janet,Leverling  | Produce        |
| Janet,Leverling  | Meat/Poultry   |
| Janet,Leverling  | Grains/Cereals |
| Janet,Leverling  | Dairy Products |
| Janet,Leverling  | Confections    |
| Janet,Leverling  | Condiments     |
| Janet,Leverling  | Beverages      |
| Janet,Leverling  | Seafood        |
| Laura,Callahan   | Meat/Poultry   |
| Laura,Callahan   | Produce        |
| Laura,Callahan   | Grains/Cereals |
| Laura,Callahan   | Seafood        |
| Laura,Callahan   | Beverages      |
| Laura,Callahan   | Confections    |
| Laura,Callahan   | Condiments     |
| Laura,Callahan   | Dairy Products |
| Margaret,Peacock | Produce        |
| Margaret,Peacock | Condiments     |
| Margaret,Peacock | Beverages      |
| Margaret,Peacock | Confections    |
| Margaret,Peacock | Dairy Products |
| Margaret,Peacock | Grains/Cereals |
| Margaret,Peacock | Meat/Poultry   |
| Margaret,Peacock | Seafood        |
| Michael,Suyama   | Dairy Products |
| Michael,Suyama   | Produce        |
| Michael,Suyama   | Meat/Poultry   |
| Michael,Suyama   | Grains/Cereals |
| Michael,Suyama   | Confections    |
| Michael,Suyama   | Condiments     |
| Michael,Suyama   | Beverages      |
| Michael,Suyama   | Seafood        |
| Nancy,Davolio    | Meat/Poultry   |
| Nancy,Davolio    | Grains/Cereals |
| Nancy,Davolio    | Dairy Products |
| Nancy,Davolio    | Confections    |
| Nancy,Davolio    | Condiments     |
| Nancy,Davolio    | Seafood        |
| Nancy,Davolio    | Beverages      |
| Nancy,Davolio    | Produce        |
| Robert,King      | Seafood        |
| Robert,King      | Grains/Cereals |
| Robert,King      | Produce        |
| Robert,King      | Beverages      |
| Robert,King      | Condiments     |
| Robert,King      | Confections    |
| Robert,King      | Dairy Products |
| Robert,King      | Meat/Poultry   |
| Steven,Buchanan  | Condiments     |
| Steven,Buchanan  | Confections    |
| Steven,Buchanan  | Dairy Products |
| Steven,Buchanan  | Meat/Poultry   |
| Steven,Buchanan  | Produce        |
| Steven,Buchanan  | Seafood        |
| Steven,Buchanan  | Beverages      |
| Steven,Buchanan  | Grains/Cereals |
+------------------+----------------+
 */
