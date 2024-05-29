use personal_database;

select customers.CustomerName as nameOne,shippers.ShipperName as nameTwo
from customers,shippers
where CustomerName <> ShipperName
order by  CustomerName,ShipperName asc;

/*
 +--------------------------------------+------------------+
| nameOne                              | nameTwo          |
+--------------------------------------+------------------+
| Alfreds Futterkiste                  | Federal Shipping |
| Alfreds Futterkiste                  | United Package   |
| Alfreds Futterkiste                  | us Express       |
| Ana Trujillo Emparedados y helados   | Federal Shipping |
| Ana Trujillo Emparedados y helados   | United Package   |
| Ana Trujillo Emparedados y helados   | us Express       |
| Antonio Moreno Taquería              | Federal Shipping |
| Antonio Moreno Taquería              | United Package   |
| Antonio Moreno Taquería              | us Express       |
| Around the Horn                      | Federal Shipping |
| Around the Horn                      | United Package   |
| Around the Horn                      | us Express       |
| B's Beverages                        | Federal Shipping |
| B's Beverages                        | United Package   |
| B's Beverages                        | us Express       |
| Berglunds snabbköp                   | Federal Shipping |
| Berglunds snabbköp                   | United Package   |
| Berglunds snabbköp                   | us Express       |
| Blauer See Delikatessen              | Federal Shipping |
| Blauer See Delikatessen              | United Package   |
| Blauer See Delikatessen              | us Express       |
| Blondel père et fils                 | Federal Shipping |
| Blondel père et fils                 | United Package   |
| Blondel père et fils                 | us Express       |
| Bólido Comidas preparadas            | Federal Shipping |
| Bólido Comidas preparadas            | United Package   |
| Bólido Comidas preparadas            | us Express       |
| Bon app'                             | Federal Shipping |
| Bon app'                             | United Package   |
| Bon app'                             | us Express       |
| Bottom-Dollar Marketse               | Federal Shipping |
| Bottom-Dollar Marketse               | United Package   |
| Bottom-Dollar Marketse               | us Express       |
| Cactus Comidas para llevar           | Federal Shipping |
| Cactus Comidas para llevar           | United Package   |
| Cactus Comidas para llevar           | us Express       |
| Centro comercial Moctezuma           | Federal Shipping |
| Centro comercial Moctezuma           | United Package   |
| Centro comercial Moctezuma           | us Express       |
| Chop-suey Chinese                    | Federal Shipping |
| Chop-suey Chinese                    | United Package   |
| Chop-suey Chinese                    | us Express       |
| Comércio Mineiro                     | Federal Shipping |
| Comércio Mineiro                     | United Package   |
| Comércio Mineiro                     | us Express       |
| Consolidated Holdings                | Federal Shipping |
| Consolidated Holdings                | United Package   |
| Consolidated Holdings                | us Express       |
| Die Wandernde Kuh                    | Federal Shipping |
| Die Wandernde Kuh                    | United Package   |
| Die Wandernde Kuh                    | us Express       |
| Drachenblut Delikatessend            | Federal Shipping |
| Drachenblut Delikatessend            | United Package   |
| Drachenblut Delikatessend            | us Express       |
| Du monde entier                      | Federal Shipping |
| Du monde entier                      | United Package   |
| Du monde entier                      | us Express       |
| Eastern Connection                   | Federal Shipping |
| Eastern Connection                   | United Package   |
| Eastern Connection                   | us Express       |
| Ernst Handel                         | Federal Shipping |
| Ernst Handel                         | United Package   |
| Ernst Handel                         | us Express       |
| Familia Arquibaldo                   | Federal Shipping |
| Familia Arquibaldo                   | United Package   |
| Familia Arquibaldo                   | us Express       |
| FISSA Fabrica Inter. Salchichas S.A. | Federal Shipping |
| FISSA Fabrica Inter. Salchichas S.A. | United Package   |
| FISSA Fabrica Inter. Salchichas S.A. | us Express       |
| Folies gourmandes                    | Federal Shipping |
| Folies gourmandes                    | United Package   |
| Folies gourmandes                    | us Express       |
| Folk och fä HB                       | Federal Shipping |
| Folk och fä HB                       | United Package   |
| Folk och fä HB                       | us Express       |
| France restauration                  | Federal Shipping |
| France restauration                  | United Package   |
| France restauration                  | us Express       |
| Franchi S.p.A.                       | Federal Shipping |
| Franchi S.p.A.                       | United Package   |
| Franchi S.p.A.                       | us Express       |
| Frankenversand                       | Federal Shipping |
| Frankenversand                       | United Package   |
| Frankenversand                       | us Express       |
| Furia Bacalhau e Frutos do Mar       | Federal Shipping |
| Furia Bacalhau e Frutos do Mar       | United Package   |
| Furia Bacalhau e Frutos do Mar       | us Express       |
| Galería del gastrónomo               | Federal Shipping |
| Galería del gastrónomo               | United Package   |
| Galería del gastrónomo               | us Express       |
| Godos Cocina Típica                  | Federal Shipping |
| Godos Cocina Típica                  | United Package   |
| Godos Cocina Típica                  | us Express       |
| Gourmet Lanchonetes                  | Federal Shipping |
| Gourmet Lanchonetes                  | United Package   |
| Gourmet Lanchonetes                  | us Express       |
| Great Lakes Food Market              | Federal Shipping |
| Great Lakes Food Market              | United Package   |
| Great Lakes Food Market              | us Express       |
| GROSELLA-Restaurante                 | Federal Shipping |
| GROSELLA-Restaurante                 | United Package   |
| GROSELLA-Restaurante                 | us Express       |
| Hanari Carnes                        | Federal Shipping |
| Hanari Carnes                        | United Package   |
| Hanari Carnes                        | us Express       |
| HILARIÓN-Abastos                     | Federal Shipping |
| HILARIÓN-Abastos                     | United Package   |
| HILARIÓN-Abastos                     | us Express       |
| Hungry Coyote Import Store           | Federal Shipping |
| Hungry Coyote Import Store           | United Package   |
| Hungry Coyote Import Store           | us Express       |
| Hungry Owl All-Night Grocers         | Federal Shipping |
| Hungry Owl All-Night Grocers         | United Package   |
| Hungry Owl All-Night Grocers         | us Express       |
| Island Trading                       | Federal Shipping |
| Island Trading                       | United Package   |
| Island Trading                       | us Express       |
| Königlich Essen                      | Federal Shipping |
| Königlich Essen                      | United Package   |
| Königlich Essen                      | us Express       |
| La corne d'abondance                 | Federal Shipping |
| La corne d'abondance                 | United Package   |
| La corne d'abondance                 | us Express       |
| La maison d'Asie                     | Federal Shipping |
| La maison d'Asie                     | United Package   |
| La maison d'Asie                     | us Express       |
| Laughing Bacchus Wine Cellars        | Federal Shipping |
| Laughing Bacchus Wine Cellars        | United Package   |
| Laughing Bacchus Wine Cellars        | us Express       |
| Lazy K Kountry Store                 | Federal Shipping |
| Lazy K Kountry Store                 | United Package   |
| Lazy K Kountry Store                 | us Express       |
| Lehmanns Marktstand                  | Federal Shipping |
| Lehmanns Marktstand                  | United Package   |
| Lehmanns Marktstand                  | us Express       |
| Let's Stop N Shop                    | Federal Shipping |
| Let's Stop N Shop                    | United Package   |
| Let's Stop N Shop                    | us Express       |
| LILA-Supermercado                    | Federal Shipping |
| LILA-Supermercado                    | United Package   |
| LILA-Supermercado                    | us Express       |
| LINO-Delicateses                     | Federal Shipping |
| LINO-Delicateses                     | United Package   |
| LINO-Delicateses                     | us Express       |
| Lonesome Pine Restaurant             | Federal Shipping |
| Lonesome Pine Restaurant             | United Package   |
| Lonesome Pine Restaurant             | us Express       |
| Magazzini Alimentari Riuniti         | Federal Shipping |
| Magazzini Alimentari Riuniti         | United Package   |
| Magazzini Alimentari Riuniti         | us Express       |
| Maison Dewey                         | Federal Shipping |
| Maison Dewey                         | United Package   |
| Maison Dewey                         | us Express       |
| Mère Paillarde                       | Federal Shipping |
| Mère Paillarde                       | United Package   |
| Mère Paillarde                       | us Express       |
| Morgenstern Gesundkost               | Federal Shipping |
| Morgenstern Gesundkost               | United Package   |
| Morgenstern Gesundkost               | us Express       |
| North/South                          | Federal Shipping |
| North/South                          | United Package   |
| North/South                          | us Express       |
| Océano Atlántico Ltda.               | Federal Shipping |
| Océano Atlántico Ltda.               | United Package   |
| Océano Atlántico Ltda.               | us Express       |
| Old World Delicatessen               | Federal Shipping |
| Old World Delicatessen               | United Package   |
| Old World Delicatessen               | us Express       |
| Ottilies Käseladen                   | Federal Shipping |
| Ottilies Käseladen                   | United Package   |
| Ottilies Käseladen                   | us Express       |
| Paris spécialités                    | Federal Shipping |
| Paris spécialités                    | United Package   |
| Paris spécialités                    | us Express       |
| Pericles Comidas clásicas            | Federal Shipping |
| Pericles Comidas clásicas            | United Package   |
| Pericles Comidas clásicas            | us Express       |
| Piccolo und mehr                     | Federal Shipping |
| Piccolo und mehr                     | United Package   |
| Piccolo und mehr                     | us Express       |
| Princesa Isabel Vinhoss              | Federal Shipping |
| Princesa Isabel Vinhoss              | United Package   |
| Princesa Isabel Vinhoss              | us Express       |
| Que Delícia                          | Federal Shipping |
| Que Delícia                          | United Package   |
| Que Delícia                          | us Express       |
| Queen Cozinha                        | Federal Shipping |
| Queen Cozinha                        | United Package   |
| Queen Cozinha                        | us Express       |
| QUICK-Stop                           | Federal Shipping |
| QUICK-Stop                           | United Package   |
| QUICK-Stop                           | us Express       |
| Rancho grande                        | Federal Shipping |
| Rancho grande                        | United Package   |
| Rancho grande                        | us Express       |
| Rattlesnake Canyon Grocery           | Federal Shipping |
| Rattlesnake Canyon Grocery           | United Package   |
| Rattlesnake Canyon Grocery           | us Express       |
| Reggiani Caseifici                   | Federal Shipping |
| Reggiani Caseifici                   | United Package   |
| Reggiani Caseifici                   | us Express       |
| Ricardo Adocicados                   | Federal Shipping |
| Ricardo Adocicados                   | United Package   |
| Ricardo Adocicados                   | us Express       |
| Richter Supermarkt                   | Federal Shipping |
| Richter Supermarkt                   | United Package   |
| Richter Supermarkt                   | us Express       |
| Romero y tomillo                     | Federal Shipping |
| Romero y tomillo                     | United Package   |
| Romero y tomillo                     | us Express       |
| Santé Gourmet                        | Federal Shipping |
| Santé Gourmet                        | United Package   |
| Santé Gourmet                        | us Express       |
| Save-a-lot Markets                   | Federal Shipping |
| Save-a-lot Markets                   | United Package   |
| Save-a-lot Markets                   | us Express       |
| Seven Seas Imports                   | Federal Shipping |
| Seven Seas Imports                   | United Package   |
| Seven Seas Imports                   | us Express       |
| Simons bistro                        | Federal Shipping |
| Simons bistro                        | United Package   |
| Simons bistro                        | us Express       |
| Spécialités du monde                 | Federal Shipping |
| Spécialités du monde                 | United Package   |
| Spécialités du monde                 | us Express       |
| Split Rail Beer & Ale                | Federal Shipping |
| Split Rail Beer & Ale                | United Package   |
| Split Rail Beer & Ale                | us Express       |
| Suprêmes délices                     | Federal Shipping |
| Suprêmes délices                     | United Package   |
| Suprêmes délices                     | us Express       |
| The Big Cheese                       | Federal Shipping |
| The Big Cheese                       | United Package   |
| The Big Cheese                       | us Express       |
| The Cracker Box                      | Federal Shipping |
| The Cracker Box                      | United Package   |
| The Cracker Box                      | us Express       |
| Toms Spezialitäten                   | Federal Shipping |
| Toms Spezialitäten                   | United Package   |
| Toms Spezialitäten                   | us Express       |
| Tortuga Restaurante                  | Federal Shipping |
| Tortuga Restaurante                  | United Package   |
| Tortuga Restaurante                  | us Express       |
| Tradição Hipermercados               | Federal Shipping |
| Tradição Hipermercados               | United Package   |
| Tradição Hipermercados               | us Express       |
| Trail's Head Gourmet Provisioners    | Federal Shipping |
| Trail's Head Gourmet Provisioners    | United Package   |
| Trail's Head Gourmet Provisioners    | us Express       |
| Vaffeljernet                         | Federal Shipping |
| Vaffeljernet                         | United Package   |
| Vaffeljernet                         | us Express       |
| Victuailles en stock                 | Federal Shipping |
| Victuailles en stock                 | United Package   |
| Victuailles en stock                 | us Express       |
| Vins et alcools Chevalier            | Federal Shipping |
| Vins et alcools Chevalier            | United Package   |
| Vins et alcools Chevalier            | us Express       |
| Wartian Herkku                       | Federal Shipping |
| Wartian Herkku                       | United Package   |
| Wartian Herkku                       | us Express       |
| Wellington Importadora               | Federal Shipping |
| Wellington Importadora               | United Package   |
| Wellington Importadora               | us Express       |
| White Clover Markets                 | Federal Shipping |
| White Clover Markets                 | United Package   |
| White Clover Markets                 | us Express       |
| Wilman Kala                          | Federal Shipping |
| Wilman Kala                          | United Package   |
| Wilman Kala                          | us Express       |
| Wolski                               | Federal Shipping |
| Wolski                               | United Package   |
| Wolski                               | us Express       |
+--------------------------------------+------------------+
 */

