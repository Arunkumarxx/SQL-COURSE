# SQL FULL OUTER JOIN Keyword

# SQL FULL OUTER JOIN Keyword
# The FULL OUTER JOIN keyword returns all records
# when there is a match in left (table1) or right (table2) table records.
#
# Tip: FULL OUTER JOIN and FULL JOIN are the same.
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = orders.OrderDetailID

UNION ALL

SELECT Customers.CustomerName, Orders.OrderID
FROM Orders
LEFT JOIN Customers ON Orders.OrderDetailID = Customers.CustomerID
WHERE Customers.CustomerID IS NULL

ORDER BY CustomerName;
/*
 +--------------------------------------+---------+
| CustomerName                         | OrderID |
+--------------------------------------+---------+
| NULL                                 |   10296 |
| NULL                                 |   10393 |
| NULL                                 |   10393 |
| NULL                                 |   10393 |
| NULL                                 |   10393 |
| NULL                                 |   10394 |
| NULL                                 |   10394 |
| NULL                                 |   10395 |
| NULL                                 |   10395 |
| NULL                                 |   10395 |
| NULL                                 |   10396 |
| NULL                                 |   10396 |
| NULL                                 |   10397 |
| NULL                                 |   10397 |
| NULL                                 |   10397 |
| NULL                                 |   10398 |
| NULL                                 |   10398 |
| NULL                                 |   10398 |
| NULL                                 |   10399 |
| NULL                                 |   10400 |
| NULL                                 |   10400 |
| NULL                                 |   10400 |
| NULL                                 |   10401 |
| NULL                                 |   10401 |
| NULL                                 |   10401 |
| NULL                                 |   10401 |
| NULL                                 |   10402 |
| NULL                                 |   10402 |
| NULL                                 |   10402 |
| NULL                                 |   10402 |
| NULL                                 |   10403 |
| NULL                                 |   10403 |
| NULL                                 |   10403 |
| NULL                                 |   10403 |
| NULL                                 |   10403 |
| NULL                                 |   10403 |
| NULL                                 |   10404 |
| NULL                                 |   10404 |
| NULL                                 |   10405 |
| NULL                                 |   10405 |
| NULL                                 |   10405 |
| NULL                                 |   10406 |
| NULL                                 |   10406 |
| NULL                                 |   10406 |
| NULL                                 |   10407 |
| NULL                                 |   10407 |
| NULL                                 |   10407 |
| NULL                                 |   10408 |
| NULL                                 |   10408 |
| NULL                                 |   10408 |
| NULL                                 |   10408 |
| NULL                                 |   10409 |
| NULL                                 |   10409 |
| NULL                                 |   10409 |
| NULL                                 |   10410 |
| NULL                                 |   10410 |
| NULL                                 |   10411 |
| NULL                                 |   10411 |
| NULL                                 |   10412 |
| NULL                                 |   10412 |
| NULL                                 |   10412 |
| NULL                                 |   10412 |
| NULL                                 |   10412 |
| NULL                                 |   10413 |
| NULL                                 |   10339 |
| NULL                                 |   10413 |
| NULL                                 |   10413 |
| NULL                                 |   10413 |
| NULL                                 |   10414 |
| NULL                                 |   10414 |
| NULL                                 |   10414 |
| NULL                                 |   10415 |
| NULL                                 |   10415 |
| NULL                                 |   10416 |
| NULL                                 |   10417 |
| NULL                                 |   10417 |
| NULL                                 |   10417 |
| NULL                                 |   10418 |
| NULL                                 |   10418 |
| NULL                                 |   10418 |
| NULL                                 |   10418 |
| NULL                                 |   10418 |
| NULL                                 |   10419 |
| NULL                                 |   10419 |
| NULL                                 |   10419 |
| NULL                                 |   10420 |
| NULL                                 |   10420 |
| NULL                                 |   10420 |
| NULL                                 |   10420 |
| NULL                                 |   10420 |
| NULL                                 |   10421 |
| NULL                                 |   10283 |
| NULL                                 |   10283 |
| NULL                                 |   10283 |
| NULL                                 |   10284 |
| NULL                                 |   10284 |
| NULL                                 |   10284 |
| NULL                                 |   10284 |
| NULL                                 |   10285 |
| NULL                                 |   10285 |
| NULL                                 |   10285 |
| NULL                                 |   10286 |
| NULL                                 |   10286 |
| NULL                                 |   10287 |
| NULL                                 |   10287 |
| NULL                                 |   10287 |
| NULL                                 |   10288 |
| NULL                                 |   10288 |
| NULL                                 |   10289 |
| NULL                                 |   10289 |
| NULL                                 |   10290 |
| NULL                                 |   10290 |
| NULL                                 |   10290 |
| NULL                                 |   10290 |
| NULL                                 |   10291 |
| NULL                                 |   10291 |
| NULL                                 |   10291 |
| NULL                                 |   10292 |
| NULL                                 |   10293 |
| NULL                                 |   10293 |
| NULL                                 |   10293 |
| NULL                                 |   10293 |
| NULL                                 |   10294 |
| NULL                                 |   10294 |
| NULL                                 |   10294 |
| NULL                                 |   10294 |
| NULL                                 |   10294 |
| NULL                                 |   10295 |
| NULL                                 |   10421 |
| NULL                                 |   10296 |
| NULL                                 |   10296 |
| NULL                                 |   10297 |
| NULL                                 |   10297 |
| NULL                                 |   10298 |
| NULL                                 |   10298 |
| NULL                                 |   10298 |
| NULL                                 |   10299 |
| NULL                                 |   10299 |
| NULL                                 |   10300 |
| NULL                                 |   10300 |
| NULL                                 |   10301 |
| NULL                                 |   10302 |
| NULL                                 |   10302 |
| NULL                                 |   10302 |
| NULL                                 |   10302 |
| NULL                                 |   10303 |
| NULL                                 |   10303 |
| NULL                                 |   10303 |
| NULL                                 |   10304 |
| NULL                                 |   10304 |
| NULL                                 |   10304 |
| NULL                                 |   10305 |
| NULL                                 |   10305 |
| NULL                                 |   10305 |
| NULL                                 |   10306 |
| NULL                                 |   10306 |
| NULL                                 |   10306 |
| NULL                                 |   10307 |
| NULL                                 |   10307 |
| NULL                                 |   10307 |
| NULL                                 |   10308 |
| NULL                                 |   10308 |
| NULL                                 |   10308 |
| NULL                                 |   10308 |
| NULL                                 |   10309 |
| NULL                                 |   10309 |
| NULL                                 |   10309 |
| NULL                                 |   10310 |
| NULL                                 |   10310 |
| NULL                                 |   10310 |
| NULL                                 |   10311 |
| NULL                                 |   10311 |
| NULL                                 |   10311 |
| NULL                                 |   10312 |
| NULL                                 |   10312 |
| NULL                                 |   10312 |
| NULL                                 |   10312 |
| NULL                                 |   10313 |
| NULL                                 |   10314 |
| NULL                                 |   10314 |
| NULL                                 |   10314 |
| NULL                                 |   10314 |
| NULL                                 |   10315 |
| NULL                                 |   10315 |
| NULL                                 |   10315 |
| NULL                                 |   10315 |
| NULL                                 |   10315 |
| NULL                                 |   10315 |
| NULL                                 |   10315 |
| NULL                                 |   10315 |
| NULL                                 |   10315 |
| NULL                                 |   10316 |
| NULL                                 |   10316 |
| NULL                                 |   10316 |
| NULL                                 |   10316 |
| NULL                                 |   10317 |
| NULL                                 |   10317 |
| NULL                                 |   10317 |
| NULL                                 |   10318 |
| NULL                                 |   10318 |
| NULL                                 |   10318 |
| NULL                                 |   10319 |
| NULL                                 |   10319 |
| NULL                                 |   10319 |
| NULL                                 |   10320 |
| NULL                                 |   10320 |
| NULL                                 |   10321 |
| NULL                                 |   10321 |
| NULL                                 |   10322 |
| NULL                                 |   10322 |
| NULL                                 |   10322 |
| NULL                                 |   10323 |
| NULL                                 |   10323 |
| NULL                                 |   10323 |
| NULL                                 |   10324 |
| NULL                                 |   10324 |
| NULL                                 |   10324 |
| NULL                                 |   10324 |
| NULL                                 |   10325 |
| NULL                                 |   10325 |
| NULL                                 |   10325 |
| NULL                                 |   10326 |
| NULL                                 |   10326 |
| NULL                                 |   10326 |
| NULL                                 |   10327 |
| NULL                                 |   10327 |
| NULL                                 |   10328 |
| NULL                                 |   10328 |
| NULL                                 |   10328 |
| NULL                                 |   10329 |
| NULL                                 |   10329 |
| NULL                                 |   10329 |
| NULL                                 |   10330 |
| NULL                                 |   10331 |
| NULL                                 |   10331 |
| NULL                                 |   10331 |
| NULL                                 |   10332 |
| NULL                                 |   10333 |
| NULL                                 |   10333 |
| NULL                                 |   10333 |
| NULL                                 |   10333 |
| NULL                                 |   10333 |
| NULL                                 |   10334 |
| NULL                                 |   10334 |
| NULL                                 |   10334 |
| NULL                                 |   10335 |
| NULL                                 |   10335 |
| NULL                                 |   10336 |
| NULL                                 |   10336 |
| NULL                                 |   10336 |
| NULL                                 |   10337 |
| NULL                                 |   10337 |
| NULL                                 |   10338 |
| NULL                                 |   10338 |
| NULL                                 |   10338 |
| NULL                                 |   10338 |
| NULL                                 |   10338 |
| NULL                                 |   10339 |
| NULL                                 |   10339 |
| NULL                                 |   10402 |
| NULL                                 |   10339 |
| NULL                                 |   10340 |
| NULL                                 |   10340 |
| NULL                                 |   10340 |
| NULL                                 |   10341 |
| NULL                                 |   10341 |
| NULL                                 |   10341 |
| NULL                                 |   10342 |
| NULL                                 |   10342 |
| NULL                                 |   10342 |
| NULL                                 |   10343 |
| NULL                                 |   10343 |
| NULL                                 |   10343 |
| NULL                                 |   10344 |
| NULL                                 |   10344 |
| NULL                                 |   10345 |
| NULL                                 |   10345 |
| NULL                                 |   10345 |
| NULL                                 |   10346 |
| NULL                                 |   10346 |
| NULL                                 |   10347 |
| NULL                                 |   10347 |
| NULL                                 |   10347 |
| NULL                                 |   10347 |
| NULL                                 |   10348 |
| NULL                                 |   10348 |
| NULL                                 |   10349 |
| NULL                                 |   10349 |
| NULL                                 |   10349 |
| NULL                                 |   10349 |
| NULL                                 |   10350 |
| NULL                                 |   10350 |
| NULL                                 |   10350 |
| NULL                                 |   10351 |
| NULL                                 |   10351 |
| NULL                                 |   10351 |
| NULL                                 |   10352 |
| NULL                                 |   10352 |
| NULL                                 |   10352 |
| NULL                                 |   10352 |
| NULL                                 |   10353 |
| NULL                                 |   10353 |
| NULL                                 |   10353 |
| NULL                                 |   10354 |
| NULL                                 |   10354 |
| NULL                                 |   10355 |
| NULL                                 |   10355 |
| NULL                                 |   10355 |
| NULL                                 |   10356 |
| NULL                                 |   10356 |
| NULL                                 |   10357 |
| NULL                                 |   10357 |
| NULL                                 |   10357 |
| NULL                                 |   10358 |
| NULL                                 |   10358 |
| NULL                                 |   10358 |
| NULL                                 |   10359 |
| NULL                                 |   10359 |
| NULL                                 |   10359 |
| NULL                                 |   10359 |
| NULL                                 |   10359 |
| NULL                                 |   10360 |
| NULL                                 |   10360 |
| NULL                                 |   10360 |
| NULL                                 |   10360 |
| NULL                                 |   10361 |
| NULL                                 |   10361 |
| NULL                                 |   10361 |
| NULL                                 |   10361 |
| NULL                                 |   10362 |
| NULL                                 |   10362 |
| NULL                                 |   10362 |
| NULL                                 |   10363 |
| NULL                                 |   10363 |
| NULL                                 |   10364 |
| NULL                                 |   10364 |
| NULL                                 |   10364 |
| NULL                                 |   10364 |
| NULL                                 |   10365 |
| NULL                                 |   10365 |
| NULL                                 |   10365 |
| NULL                                 |   10366 |
| NULL                                 |   10366 |
| NULL                                 |   10367 |
| NULL                                 |   10367 |
| NULL                                 |   10368 |
| NULL                                 |   10368 |
| NULL                                 |   10368 |
| NULL                                 |   10368 |
| NULL                                 |   10369 |
| NULL                                 |   10369 |
| NULL                                 |   10370 |
| NULL                                 |   10370 |
| NULL                                 |   10370 |
| NULL                                 |   10370 |
| NULL                                 |   10371 |
| NULL                                 |   10371 |
| NULL                                 |   10372 |
| NULL                                 |   10372 |
| NULL                                 |   10372 |
| NULL                                 |   10373 |
| NULL                                 |   10373 |
| NULL                                 |   10373 |
| NULL                                 |   10374 |
| NULL                                 |   10374 |
| NULL                                 |   10374 |
| NULL                                 |   10374 |
| NULL                                 |   10375 |
| NULL                                 |   10375 |
| NULL                                 |   10375 |
| NULL                                 |   10375 |
| NULL                                 |   10376 |
| NULL                                 |   10376 |
| NULL                                 |   10376 |
| NULL                                 |   10376 |
| NULL                                 |   10376 |
| NULL                                 |   10376 |
| NULL                                 |   10377 |
| NULL                                 |   10377 |
| NULL                                 |   10377 |
| NULL                                 |   10377 |
| NULL                                 |   10377 |
| NULL                                 |   10378 |
| NULL                                 |   10378 |
| NULL                                 |   10379 |
| NULL                                 |   10379 |
| NULL                                 |   10379 |
| NULL                                 |   10380 |
| NULL                                 |   10381 |
| NULL                                 |   10381 |
| NULL                                 |   10382 |
| NULL                                 |   10382 |
| NULL                                 |   10383 |
| NULL                                 |   10383 |
| NULL                                 |   10383 |
| NULL                                 |   10383 |
| NULL                                 |   10383 |
| NULL                                 |   10383 |
| NULL                                 |   10384 |
| NULL                                 |   10384 |
| NULL                                 |   10385 |
| NULL                                 |   10385 |
| NULL                                 |   10385 |
| NULL                                 |   10385 |
| NULL                                 |   10386 |
| NULL                                 |   10386 |
| NULL                                 |   10387 |
| NULL                                 |   10387 |
| NULL                                 |   10387 |
| NULL                                 |   10387 |
| NULL                                 |   10388 |
| NULL                                 |   10388 |
| NULL                                 |   10388 |
| NULL                                 |   10388 |
| NULL                                 |   10389 |
| NULL                                 |   10389 |
| NULL                                 |   10389 |
| NULL                                 |   10389 |
| NULL                                 |   10390 |
| NULL                                 |   10390 |
| NULL                                 |   10391 |
| NULL                                 |   10391 |
| NULL                                 |   10391 |
| NULL                                 |   10391 |
| NULL                                 |   10392 |
| NULL                                 |   10392 |
| NULL                                 |   10392 |
| Alfreds Futterkiste                  |   10248 |
| Ana Trujillo Emparedados y helados   |   10248 |
| Antonio Moreno Taquería              |   10248 |
| Around the Horn                      |   10249 |
| B's Beverages                        |   10251 |
| Berglunds snabbköp                   |   10249 |
| Blauer See Delikatessen              |   10250 |
| Blondel père et fils                 |   10250 |
| Bólido Comidas preparadas            |   10250 |
| Bon app'                             |   10251 |
| Bottom-Dollar Marketse               |   10251 |
| Cactus Comidas para llevar           |   10252 |
| Centro comercial Moctezuma           |   10252 |
| Chop-suey Chinese                    |   10252 |
| Comércio Mineiro                     |   10253 |
| Consolidated Holdings                |   10253 |
| Die Wandernde Kuh                    |   10281 |
| Drachenblut Delikatessend            |   10253 |
| Du monde entier                      |   10254 |
| Eastern Connection                   |   10254 |
| Ernst Handel                         |   10254 |
| Familia Arquibaldo                   |   10255 |
| FISSA Fabrica Inter. Salchichas S.A. |   10255 |
| Folies gourmandes                    |   10255 |
| Folk och fä HB                       |   10256 |
| France restauration                  |   10257 |
| Franchi S.p.A.                       |   10257 |
| Frankenversand                       |   10256 |
| Furia Bacalhau e Frutos do Mar       |   10257 |
| Galería del gastrónomo               |   10258 |
| Godos Cocina Típica                  |   10258 |
| Gourmet Lanchonetes                  |   10258 |
| Great Lakes Food Market              |   10259 |
| GROSELLA-Restaurante                 |   10259 |
| Hanari Carnes                        |   10260 |
| HILARIÓN-Abastos                     |   10260 |
| Hungry Coyote Import Store           |   10260 |
| Hungry Owl All-Night Grocers         |   10260 |
| Island Trading                       |   10261 |
| Königlich Essen                      |   10261 |
| La corne d'abondance                 |   10262 |
| La maison d'Asie                     |   10262 |
| Laughing Bacchus Wine Cellars        |   10262 |
| Lazy K Kountry Store                 |   10263 |
| Lehmanns Marktstand                  |   10263 |
| Let's Stop N Shop                    |   10263 |
| LILA-Supermercado                    |   10263 |
| LINO-Delicateses                     |   10264 |
| Lonesome Pine Restaurant             |   10264 |
| Magazzini Alimentari Riuniti         |   10265 |
| Maison Dewey                         |   10265 |
| Mère Paillarde                       |   10266 |
| Morgenstern Gesundkost               |   10267 |
| North/South                          |   10267 |
| Océano Atlántico Ltda.               |   10267 |
| Old World Delicatessen               |   10268 |
| Ottilies Käseladen                   |   10268 |
| Paris spécialités                    |   10269 |
| Pericles Comidas clásicas            |   10269 |
| Piccolo und mehr                     |   10270 |
| Princesa Isabel Vinhoss              |   10270 |
| Que Delícia                          |   10271 |
| Queen Cozinha                        |   10272 |
| QUICK-Stop                           |   10272 |
| Rancho grande                        |   10272 |
| Rattlesnake Canyon Grocery           |   10273 |
| Reggiani Caseifici                   |   10273 |
| Ricardo Adocicados                   |   10273 |
| Richter Supermarkt                   |   10273 |
| Romero y tomillo                     |   10273 |
| Santé Gourmet                        |   10274 |
| Save-a-lot Markets                   |   10274 |
| Seven Seas Imports                   |   10275 |
| Simons bistro                        |   10275 |
| Spécialités du monde                 |   10276 |
| Split Rail Beer & Ale                |   10276 |
| Suprêmes délices                     |   10277 |
| The Big Cheese                       |   10277 |
| The Cracker Box                      |   10278 |
| Toms Spezialitäten                   |   10278 |
| Tortuga Restaurante                  |   10278 |
| Tradição Hipermercados               |   10278 |
| Trail's Head Gourmet Provisioners    |   10279 |
| Vaffeljernet                         |   10280 |
| Victuailles en stock                 |   10280 |
| Vins et alcools Chevalier            |   10280 |
| Wartian Herkku                       |   10281 |
| Wellington Importadora               |   10281 |
| White Clover Markets                 |   10282 |
| Wilman Kala                          |   10282 |
| Wolski                               |   10283 |
+--------------------------------------+---------+
 */

