# SQL LEFT JOIN Keyword
# The LEFT JOIN keyword returns all records from the left table (table1),
# and the matching records from the right table (table2).
# The result is 0 records from the right side, if there is no match.

# LEFT JOIN Syntax

# SELECT column_name(s)
# FROM table1
# LEFT JOIN table2
# ON table1.column_name = table2.column_name;

use personal_database;


select customers.CustomerName,orders.OrderID
from customers right join orders on customers.CustomerID=orders.Quantity order by CustomerName;
/*
+------------------------------------+---------+
| CustomerName                       | OrderID |
+------------------------------------+---------+
| NULL                               |   10259 |
| NULL                               |   10281 |
| NULL                               |   10342 |
| NULL                               |   10286 |
| Ana Trujillo Emparedados y helados |   10339 |
| Ana Trujillo Emparedados y helados |   10339 |
| Ana Trujillo Emparedados y helados |   10291 |
| Ana Trujillo Emparedados y helados |   10405 |
| Ana Trujillo Emparedados y helados |   10282 |
| Ana Trujillo Emparedados y helados |   10262 |
| Ana Trujillo Emparedados y helados |   10412 |
| Ana Trujillo Emparedados y helados |   10335 |
| Ana Trujillo Emparedados y helados |   10421 |
| Ana Trujillo Emparedados y helados |   10334 |
| Ana Trujillo Emparedados y helados |   10357 |
| Antonio Moreno Taquería            |   10310 |
| Antonio Moreno Taquería            |   10283 |
| Antonio Moreno Taquería            |   10314 |
| Antonio Moreno Taquería            |   10416 |
| Antonio Moreno Taquería            |   10288 |
| Antonio Moreno Taquería            |   10358 |
| Around the Horn                    |   10315 |
| Around the Horn                    |   10356 |
| Around the Horn                    |   10306 |
| Around the Horn                    |   10392 |
| Around the Horn                    |   10347 |
| Around the Horn                    |   10268 |
| Around the Horn                    |   10295 |
| Around the Horn                    |   10359 |
| Around the Horn                    |   10340 |
| Around the Horn                    |   10369 |
| Around the Horn                    |   10342 |
| Around the Horn                    |   10348 |
| Around the Horn                    |   10281 |
| Berglunds snabbköp                 |   10419 |
| Berglunds snabbköp                 |   10248 |
| Berglunds snabbköp                 |   10308 |
| Berglunds snabbköp                 |   10399 |
| Berglunds snabbköp                 |   10347 |
| Berglunds snabbköp                 |   10314 |
| Berglunds snabbköp                 |   10322 |
| Berglunds snabbköp                 |   10315 |
| Berglunds snabbköp                 |   10293 |
| Berglunds snabbköp                 |   10316 |
| Berglunds snabbköp                 |   10284 |
| Berglunds snabbköp                 |   10397 |
| Blauer See Delikatessen            |   10328 |
| Blauer See Delikatessen            |   10373 |
| Blauer See Delikatessen            |   10403 |
| Blauer See Delikatessen            |   10257 |
| Blauer See Delikatessen            |   10304 |
| Blauer See Delikatessen            |   10343 |
| Blauer See Delikatessen            |   10375 |
| Blauer See Delikatessen            |   10331 |
| Blauer See Delikatessen            |   10305 |
| Blauer See Delikatessen            |   10281 |
| Blauer See Delikatessen            |   10413 |
| Blauer See Delikatessen            |   10315 |
| Blauer See Delikatessen            |   10315 |
| Blauer See Delikatessen            |   10275 |
| Blauer See Delikatessen            |   10386 |
| Blauer See Delikatessen            |   10272 |
| Blauer See Delikatessen            |   10370 |
| Blauer See Delikatessen            |   10385 |
| Blauer See Delikatessen            |   10403 |
| Blauer See Delikatessen            |   10369 |
| Blauer See Delikatessen            |   10385 |
| Blauer See Delikatessen            |   10293 |
| Blauer See Delikatessen            |   10368 |
| Blauer See Delikatessen            |   10258 |
| Blauer See Delikatessen            |   10251 |
| Blauer See Delikatessen            |   10391 |
| Blauer See Delikatessen            |   10413 |
| Blauer See Delikatessen            |   10374 |
| Blauer See Delikatessen            |   10282 |
| Blauer See Delikatessen            |   10351 |
| Blondel père et fils               |   10274 |
| Blondel père et fils               |   10420 |
| Blondel père et fils               |   10307 |
| Bólido Comidas preparadas          |   10408 |
| Bólido Comidas preparadas          |   10407 |
| Bólido Comidas preparadas          |   10368 |
| Bólido Comidas preparadas          |   10403 |
| Bólido Comidas preparadas          |   10402 |
| Bólido Comidas preparadas          |   10337 |
| Bólido Comidas preparadas          |   10278 |
| Bólido Comidas preparadas          |   10387 |
| Bólido Comidas preparadas          |   10337 |
| Bólido Comidas preparadas          |   10303 |
| Bólido Comidas preparadas          |   10419 |
| Bólido Comidas preparadas          |   10413 |
| Bólido Comidas preparadas          |   10412 |
| Bólido Comidas preparadas          |   10331 |
| Bon app'                           |   10289 |
| Bon app'                           |   10249 |
| Bon app'                           |   10315 |
| Bottom-Dollar Marketse             |   10310 |
| Bottom-Dollar Marketse             |   10419 |
| Bottom-Dollar Marketse             |   10259 |
| Bottom-Dollar Marketse             |   10414 |
| Bottom-Dollar Marketse             |   10383 |
| Bottom-Dollar Marketse             |   10415 |
| Bottom-Dollar Marketse             |   10325 |
| Bottom-Dollar Marketse             |   10417 |
| Bottom-Dollar Marketse             |   10306 |
| Bottom-Dollar Marketse             |   10376 |
| Bottom-Dollar Marketse             |   10420 |
| Bottom-Dollar Marketse             |   10375 |
| Bottom-Dollar Marketse             |   10288 |
| Bottom-Dollar Marketse             |   10345 |
| Bottom-Dollar Marketse             |   10250 |
| Bottom-Dollar Marketse             |   10374 |
| Bottom-Dollar Marketse             |   10328 |
| Bottom-Dollar Marketse             |   10290 |
| Bottom-Dollar Marketse             |   10248 |
| Bottom-Dollar Marketse             |   10276 |
| Bottom-Dollar Marketse             |   10317 |
| Bottom-Dollar Marketse             |   10397 |
| Bottom-Dollar Marketse             |   10317 |
| Bottom-Dollar Marketse             |   10293 |
| Bottom-Dollar Marketse             |   10396 |
| Bottom-Dollar Marketse             |   10317 |
| Bottom-Dollar Marketse             |   10394 |
| Bottom-Dollar Marketse             |   10411 |
| Bottom-Dollar Marketse             |   10366 |
| Bottom-Dollar Marketse             |   10268 |
| Bottom-Dollar Marketse             |   10321 |
| Bottom-Dollar Marketse             |   10315 |
| Bottom-Dollar Marketse             |   10363 |
| Bottom-Dollar Marketse             |   10359 |
| Bottom-Dollar Marketse             |   10392 |
| Bottom-Dollar Marketse             |   10315 |
| Bottom-Dollar Marketse             |   10358 |
| Bottom-Dollar Marketse             |   10314 |
| Bottom-Dollar Marketse             |   10312 |
| Bottom-Dollar Marketse             |   10401 |
| Bottom-Dollar Marketse             |   10334 |
| Bottom-Dollar Marketse             |   10408 |
| Bottom-Dollar Marketse             |   10411 |
| Bottom-Dollar Marketse             |   10351 |
| Bottom-Dollar Marketse             |   10301 |
| Bottom-Dollar Marketse             |   10390 |
| Bottom-Dollar Marketse             |   10400 |
| Cactus Comidas para llevar         |   10248 |
| Cactus Comidas para llevar         |   10414 |
| Cactus Comidas para llevar         |   10303 |
| Cactus Comidas para llevar         |   10414 |
| Cactus Comidas para llevar         |   10420 |
| Cactus Comidas para llevar         |   10262 |
| Cactus Comidas para llevar         |   10308 |
| Cactus Comidas para llevar         |   10315 |
| Cactus Comidas para llevar         |   10275 |
| Cactus Comidas para llevar         |   10325 |
| Cactus Comidas para llevar         |   10296 |
| Cactus Comidas para llevar         |   10277 |
| Cactus Comidas para llevar         |   10347 |
| Cactus Comidas para llevar         |   10353 |
| Cactus Comidas para llevar         |   10365 |
| Cactus Comidas para llevar         |   10266 |
| Cactus Comidas para llevar         |   10365 |
| Cactus Comidas para llevar         |   10280 |
| Cactus Comidas para llevar         |   10380 |
| Cactus Comidas para llevar         |   10256 |
| Cactus Comidas para llevar         |   10387 |
| Cactus Comidas para llevar         |   10390 |
| Cactus Comidas para llevar         |   10293 |
| Cactus Comidas para llevar         |   10391 |
| Cactus Comidas para llevar         |   10402 |
| Cactus Comidas para llevar         |   10403 |
| Centro comercial Moctezuma         |   10338 |
| Chop-suey Chinese                  |   10408 |
| Chop-suey Chinese                  |   10344 |
| Chop-suey Chinese                  |   10374 |
| Comércio Mineiro                   |   10319 |
| Comércio Mineiro                   |   10381 |
| Comércio Mineiro                   |   10250 |
| Comércio Mineiro                   |   10251 |
| Comércio Mineiro                   |   10290 |
| Comércio Mineiro                   |   10294 |
| Comércio Mineiro                   |   10294 |
| Comércio Mineiro                   |   10356 |
| Comércio Mineiro                   |   10368 |
| Comércio Mineiro                   |   10393 |
| Comércio Mineiro                   |   10393 |
| Comércio Mineiro                   |   10254 |
| Comércio Mineiro                   |   10296 |
| Comércio Mineiro                   |   10333 |
| Comércio Mineiro                   |   10322 |
| Comércio Mineiro                   |   10391 |
| Comércio Mineiro                   |   10389 |
| Comércio Mineiro                   |   10256 |
| Comércio Mineiro                   |   10372 |
| Comércio Mineiro                   |   10257 |
| Comércio Mineiro                   |   10299 |
| Comércio Mineiro                   |   10359 |
| Comércio Mineiro                   |   10364 |
| Comércio Mineiro                   |   10260 |
| Comércio Mineiro                   |   10388 |
| Comércio Mineiro                   |   10387 |
| Comércio Mineiro                   |   10341 |
| Comércio Mineiro                   |   10262 |
| Comércio Mineiro                   |   10324 |
| Comércio Mineiro                   |   10384 |
| Comércio Mineiro                   |   10303 |
| Comércio Mineiro                   |   10360 |
| Comércio Mineiro                   |   10370 |
| Comércio Mineiro                   |   10324 |
| Comércio Mineiro                   |   10345 |
| Comércio Mineiro                   |   10267 |
| Comércio Mineiro                   |   10377 |
| Comércio Mineiro                   |   10307 |
| Comércio Mineiro                   |   10377 |
| Comércio Mineiro                   |   10418 |
| Comércio Mineiro                   |   10308 |
| Comércio Mineiro                   |   10273 |
| Comércio Mineiro                   |   10363 |
| Comércio Mineiro                   |   10349 |
| Comércio Mineiro                   |   10276 |
| Comércio Mineiro                   |   10278 |
| Comércio Mineiro                   |   10350 |
| Comércio Mineiro                   |   10279 |
| Comércio Mineiro                   |   10376 |
| Comércio Mineiro                   |   10412 |
| Comércio Mineiro                   |   10351 |
| Comércio Mineiro                   |   10284 |
| Comércio Mineiro                   |   10412 |
| Comércio Mineiro                   |   10311 |
| Comércio Mineiro                   |   10311 |
| Comércio Mineiro                   |   10310 |
| Comércio Mineiro                   |   10367 |
| Comércio Mineiro                   |   10406 |
| Comércio Mineiro                   |   10287 |
| Comércio Mineiro                   |   10405 |
| Comércio Mineiro                   |   10290 |
| Consolidated Holdings              |   10410 |
| Consolidated Holdings              |   10260 |
| Consolidated Holdings              |   10278 |
| Consolidated Holdings              |   10415 |
| Consolidated Holdings              |   10362 |
| Consolidated Holdings              |   10382 |
| Consolidated Holdings              |   10398 |
| Du monde entier                    |   10294 |
| Du monde entier                    |   10309 |
| Du monde entier                    |   10361 |
| Du monde entier                    |   10413 |
| Du monde entier                    |   10283 |
| Du monde entier                    |   10404 |
| Ernst Handel                       |   10305 |
| Ernst Handel                       |   10338 |
| Ernst Handel                       |   10251 |
| Ernst Handel                       |   10349 |
| Ernst Handel                       |   10350 |
| Ernst Handel                       |   10339 |
| Ernst Handel                       |   10253 |
| Ernst Handel                       |   10334 |
| Ernst Handel                       |   10359 |
| Ernst Handel                       |   10333 |
| Ernst Handel                       |   10361 |
| Ernst Handel                       |   10364 |
| Ernst Handel                       |   10340 |
| Ernst Handel                       |   10365 |
| Ernst Handel                       |   10331 |
| Ernst Handel                       |   10313 |
| Ernst Handel                       |   10370 |
| Ernst Handel                       |   10372 |
| Ernst Handel                       |   10373 |
| Ernst Handel                       |   10261 |
| Ernst Handel                       |   10261 |
| Ernst Handel                       |   10373 |
| Ernst Handel                       |   10327 |
| Ernst Handel                       |   10374 |
| Ernst Handel                       |   10375 |
| Ernst Handel                       |   10326 |
| Ernst Handel                       |   10376 |
| Ernst Handel                       |   10376 |
| Ernst Handel                       |   10265 |
| Ernst Handel                       |   10377 |
| Ernst Handel                       |   10378 |
| Ernst Handel                       |   10379 |
| Ernst Handel                       |   10269 |
| Ernst Handel                       |   10341 |
| Ernst Handel                       |   10379 |
| Ernst Handel                       |   10382 |
| Ernst Handel                       |   10383 |
| Ernst Handel                       |   10383 |
| Ernst Handel                       |   10273 |
| Ernst Handel                       |   10383 |
| Ernst Handel                       |   10384 |
| Ernst Handel                       |   10274 |
| Ernst Handel                       |   10277 |
| Ernst Handel                       |   10385 |
| Ernst Handel                       |   10280 |
| Ernst Handel                       |   10387 |
| Ernst Handel                       |   10283 |
| Ernst Handel                       |   10388 |
| Ernst Handel                       |   10389 |
| Ernst Handel                       |   10284 |
| Ernst Handel                       |   10389 |
| Ernst Handel                       |   10391 |
| Ernst Handel                       |   10322 |
| Ernst Handel                       |   10338 |
| Ernst Handel                       |   10392 |
| Ernst Handel                       |   10287 |
| Ernst Handel                       |   10320 |
| Ernst Handel                       |   10290 |
| Ernst Handel                       |   10291 |
| Ernst Handel                       |   10396 |
| Ernst Handel                       |   10292 |
| Ernst Handel                       |   10397 |
| Ernst Handel                       |   10398 |
| Ernst Handel                       |   10318 |
| Ernst Handel                       |   10401 |
| Ernst Handel                       |   10401 |
| Ernst Handel                       |   10297 |
| Ernst Handel                       |   10318 |
| Ernst Handel                       |   10338 |
| Ernst Handel                       |   10406 |
| Ernst Handel                       |   10299 |
| Ernst Handel                       |   10314 |
| Ernst Handel                       |   10300 |
| Ernst Handel                       |   10407 |
| Ernst Handel                       |   10312 |
| Ernst Handel                       |   10409 |
| Ernst Handel                       |   10410 |
| Ernst Handel                       |   10309 |
| Ernst Handel                       |   10304 |
| Ernst Handel                       |   10344 |
| Ernst Handel                       |   10338 |
| Ernst Handel                       |   10309 |
| Ernst Handel                       |   10418 |
| Familia Arquibaldo                 |   10312 |
| Familia Arquibaldo                 |   10260 |
| Familia Arquibaldo                 |   10347 |
| Familia Arquibaldo                 |   10315 |
| Familia Arquibaldo                 |   10408 |
| Familia Arquibaldo                 |   10341 |
| Familia Arquibaldo                 |   10308 |
| Familia Arquibaldo                 |   10254 |
| Familia Arquibaldo                 |   10254 |
| Familia Arquibaldo                 |   10304 |
| Familia Arquibaldo                 |   10294 |
| Familia Arquibaldo                 |   10350 |
| Familia Arquibaldo                 |   10325 |
| Familia Arquibaldo                 |   10389 |
| Familia Arquibaldo                 |   10376 |
| Familia Arquibaldo                 |   10284 |
| Folk och fä HB                     |   10403 |
| Folk och fä HB                     |   10386 |
| Folk och fä HB                     |   10324 |
| Folk och fä HB                     |   10352 |
| Folk och fä HB                     |   10409 |
| Folk och fä HB                     |   10272 |
| Folk och fä HB                     |   10311 |
| Folk och fä HB                     |   10376 |
| Folk och fä HB                     |   10319 |
| Folk och fä HB                     |   10273 |
| Folk och fä HB                     |   10271 |
| Folk och fä HB                     |   10291 |
| Folk och fä HB                     |   10340 |
| Frankenversand                     |   10252 |
| Frankenversand                     |   10312 |
| Frankenversand                     |   10367 |
| Frankenversand                     |   10255 |
| Frankenversand                     |   10402 |
| Frankenversand                     |   10257 |
| Frankenversand                     |   10418 |
| Frankenversand                     |   10316 |
| Frankenversand                     |   10348 |
| Frankenversand                     |   10270 |
| Frankenversand                     |   10278 |
| Frankenversand                     |   10393 |
| Frankenversand                     |   10388 |
| Frankenversand                     |   10264 |
| Frankenversand                     |   10323 |
| Frankenversand                     |   10323 |
| Furia Bacalhau e Frutos do Mar     |   10316 |
| Furia Bacalhau e Frutos do Mar     |   10302 |
| Furia Bacalhau e Frutos do Mar     |   10302 |
| Furia Bacalhau e Frutos do Mar     |   10360 |
| Furia Bacalhau e Frutos do Mar     |   10418 |
| Furia Bacalhau e Frutos do Mar     |   10263 |
| Furia Bacalhau e Frutos do Mar     |   10353 |
| Furia Bacalhau e Frutos do Mar     |   10354 |
| Godos Cocina Típica                |   10319 |
| Godos Cocina Típica                |   10335 |
| Godos Cocina Típica                |   10379 |
| Godos Cocina Típica                |   10300 |
| Godos Cocina Típica                |   10255 |
| Godos Cocina Típica                |   10298 |
| Godos Cocina Típica                |   10400 |
| Godos Cocina Típica                |   10383 |
| Godos Cocina Típica                |   10364 |
| Godos Cocina Típica                |   10336 |
| Godos Cocina Típica                |   10366 |
| Godos Cocina Típica                |   10398 |
| Godos Cocina Típica                |   10361 |
| Godos Cocina Típica                |   10377 |
| Godos Cocina Típica                |   10409 |
| Godos Cocina Típica                |   10324 |
| Godos Cocina Típica                |   10370 |
| Godos Cocina Típica                |   10403 |
| Godos Cocina Típica                |   10318 |
| Godos Cocina Típica                |   10355 |
| Godos Cocina Típica                |   10339 |
| Godos Cocina Típica                |   10265 |
| Godos Cocina Típica                |   10323 |
| Godos Cocina Típica                |   10360 |
| Godos Cocina Típica                |   10289 |
| Godos Cocina Típica                |   10364 |
| Godos Cocina Típica                |   10405 |
| Godos Cocina Típica                |   10307 |
| Godos Cocina Típica                |   10359 |
| Godos Cocina Típica                |   10280 |
| Godos Cocina Típica                |   10388 |
| Godos Cocina Típica                |   10358 |
| Godos Cocina Típica                |   10377 |
| Godos Cocina Típica                |   10406 |
| Godos Cocina Típica                |   10270 |
| Godos Cocina Típica                |   10378 |
| Godos Cocina Típica                |   10296 |
| Godos Cocina Típica                |   10372 |
| Godos Cocina Típica                |   10349 |
| Godos Cocina Típica                |   10336 |
| GROSELLA-Restaurante               |   10273 |
| Hanari Carnes                      |   10407 |
| Hanari Carnes                      |   10357 |
| HILARIÓN-Abastos                   |   10353 |
| HILARIÓN-Abastos                   |   10255 |
| HILARIÓN-Abastos                   |   10355 |
| HILARIÓN-Abastos                   |   10250 |
| HILARIÓN-Abastos                   |   10329 |
| HILARIÓN-Abastos                   |   10360 |
| HILARIÓN-Abastos                   |   10283 |
| HILARIÓN-Abastos                   |   10417 |
| HILARIÓN-Abastos                   |   10326 |
| HILARIÓN-Abastos                   |   10393 |
| HILARIÓN-Abastos                   |   10264 |
| HILARIÓN-Abastos                   |   10381 |
| HILARIÓN-Abastos                   |   10420 |
| Hungry Coyote Import Store         |   10285 |
| Hungry Coyote Import Store         |   10343 |
| Hungry Coyote Import Store         |   10395 |
| Hungry Coyote Import Store         |   10263 |
| La corne d'abondance               |   10302 |
| La corne d'abondance               |   10253 |
| La corne d'abondance               |   10400 |
| La corne d'abondance               |   10352 |
| La corne d'abondance               |   10320 |
| La corne d'abondance               |   10418 |
| La corne d'abondance               |   10352 |
| La corne d'abondance               |   10321 |
| La corne d'abondance               |   10417 |
| La corne d'abondance               |   10249 |
| La corne d'abondance               |   10342 |
| La corne d'abondance               |   10402 |
| La corne d'abondance               |   10385 |
| La corne d'abondance               |   10298 |
| La corne d'abondance               |   10298 |
| La corne d'abondance               |   10316 |
| La corne d'abondance               |   10326 |
| La corne d'abondance               |   10252 |
| La corne d'abondance               |   10252 |
| La corne d'abondance               |   10404 |
| La corne d'abondance               |   10287 |
| La corne d'abondance               |   10286 |
| La corne d'abondance               |   10285 |
| La corne d'abondance               |   10412 |
| La corne d'abondance               |   10272 |
| La corne d'abondance               |   10343 |
| La corne d'abondance               |   10328 |
| La corne d'abondance               |   10305 |
| La corne d'abondance               |   10421 |
| Laughing Bacchus Wine Cellars      |   10253 |
| Let's Stop N Shop                  |   10395 |
| Let's Stop N Shop                  |   10285 |
| Maison Dewey                       |   10294 |
| Maison Dewey                       |   10336 |
| Maison Dewey                       |   10267 |
| Maison Dewey                       |   10371 |
| Maison Dewey                       |   10260 |
| Maison Dewey                       |   10394 |
| Maison Dewey                       |   10258 |
| Maison Dewey                       |   10357 |
| Maison Dewey                       |   10329 |
| Maison Dewey                       |   10375 |
| Maison Dewey                       |   10395 |
| Maison Dewey                       |   10327 |
| Maison Dewey                       |   10333 |
| Maison Dewey                       |   10329 |
| Maison Dewey                       |   10346 |
| Maison Dewey                       |   10346 |
| Maison Dewey                       |   10362 |
| Maison Dewey                       |   10383 |
| Princesa Isabel Vinhoss            |   10297 |
| Princesa Isabel Vinhoss            |   10362 |
| Princesa Isabel Vinhoss            |   10263 |
| Princesa Isabel Vinhoss            |   10263 |
| Princesa Isabel Vinhoss            |   10355 |
| Princesa Isabel Vinhoss            |   10352 |
| Princesa Isabel Vinhoss            |   10401 |
| Princesa Isabel Vinhoss            |   10302 |
| Princesa Isabel Vinhoss            |   10371 |
| Princesa Isabel Vinhoss            |   10273 |
| Princesa Isabel Vinhoss            |   10269 |
| Princesa Isabel Vinhoss            |   10368 |
| Princesa Isabel Vinhoss            |   10420 |
| Princesa Isabel Vinhoss            |   10332 |
| Princesa Isabel Vinhoss            |   10349 |
| Princesa Isabel Vinhoss            |   10330 |
| Rattlesnake Canyon Grocery         |   10258 |
| Rattlesnake Canyon Grocery         |   10333 |
| Santé Gourmet                      |   10402 |
| Santé Gourmet                      |   10267 |
| Santé Gourmet                      |   10345 |
| Santé Gourmet                      |   10354 |
| Santé Gourmet                      |   10306 |
| Tortuga Restaurante                |   10333 |
| Tortuga Restaurante                |   10361 |
+------------------------------------+---------+
 */
