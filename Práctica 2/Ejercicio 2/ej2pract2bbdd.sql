Consultas sobre la tabla City
---1. Ver estructura de la tabla: Describe City;
Describe city;
+-------------+----------+------+-----+---------+----------------+
| Field       | Type     | Null | Key | Default | Extra          |
+-------------+----------+------+-----+---------+----------------+
| ID          | int      | NO   | PRI | NULL    | auto_increment |
| Name        | char(35) | NO   |     |         |                |
| CountryCode | char(3)  | NO   | MUL |         |                |
| District    | char(20) | NO   |     |         |                |
| Population  | int      | NO   |     | 0       |                |
+-------------+----------+------+-----+---------+----------------+
5 rows in set (0.04 sec)

---2. Ver todas las tuplas de la tabla: Select * from City;
select * from city;
+------+-----------------------------------+-------------+----------------------+------------+
| ID   | Name                              | CountryCode | District             | Population |
+------+-----------------------------------+-------------+----------------------+------------+
|    1 | Kabul                             | AFG         | Kabol                |    1780000 |
|    2 | Qandahar                          | AFG         | Qandahar             |     237500 |
|    3 | Herat                             | AFG         | Herat                |     186800 |
|    4 | Mazar-e-Sharif                    | AFG         | Balkh                |     127800 |
|    5 | Amsterdam                         | NLD         | Noord-Holland        |     731200 |
|    6 | Rotterdam                         | NLD         | Zuid-Holland         |     593321 |
|    7 | Haag                              | NLD         | Zuid-Holland         |     440900 |
|    8 | Utrecht                           | NLD         | Utrecht              |     234323 |
|    9 | Eindhoven                         | NLD         | Noord-Brabant        |     201843 |
|   10 | Tilburg                           | NLD         | Noord-Brabant        |     193238 |
|   11 | Groningen                         | NLD         | Groningen            |     172701 |
|   12 | Breda                             | NLD         | Noord-Brabant        |     160398 |
|   13 | Apeldoorn                         | NLD         | Gelderland           |     153491 |
|   14 | Nijmegen                          | NLD         | Gelderland           |     152463 |
|   15 | Enschede                          | NLD         | Overijssel           |     149544 |
+------+-----------------------------------+-------------+----------------------+------------+
4079 rows in set (0.4079 rows in set (0.00 sec)


---3. Ver todos los nombres y distritos de las ciudades.
select name,district from city;
+----------------+---------------+
| name           | district      |
+----------------+---------------+
| Kabul          | Kabol         |
| Qandahar       | Qandahar      |
| Herat          | Herat         |
| Mazar-e-Sharif | Balkh         |
| Amsterdam      | Noord-Holland |
| Rotterdam      | Zuid-Holland  |
| Haag           | Zuid-Holland  |
| Utrecht        | Utrecht       |
| Eindhoven      | Noord-Brabant |
| Tilburg        | Noord-Brabant |
+----------------+---------------+
4079 rows in set (0.05 sec)

---4. Ver todas las ciudades que que tienen el código ESP. 
select name from city where countrycode="ESP";
+--------------------------------+
| name                           |
+--------------------------------+
| Madrid                         |
| Barcelona                      |
| Valencia                       |
| Sevilla                        |
| Zaragoza                       |
| Málaga                         |
| Bilbao                         |
| Las Palmas de Gran Canaria     |
| Murcia                         |
| Palma de Mallorca              |
| Valladolid                     |
| Córdoba                        |
| Vigo                           |
| Alicante [Alacant]             |
| Gijón                          |
| L´Hospitalet de Llobregat      |
| Granada                        |
| A Coruña (La Coruña)           |
| Vitoria-Gasteiz                |
| Santa Cruz de Tenerife         |
| Badalona                       |
| Oviedo                         |
| Móstoles                       |
| Elche [Elx]                    |
| Sabadell                       |
| Santander                      |
| Jerez de la Frontera           |
| Pamplona [Iruña]               |
| Donostia-San Sebastián         |
| Cartagena                      |
| Leganés                        |
| Fuenlabrada                    |
| Almería                        |
| Terrassa                       |
| Alcalá de Henares              |
| Burgos                         |
| Salamanca                      |
| Albacete                       |
| Getafe                         |
| Cádiz                          |
| Alcorcón                       |
| Huelva                         |
| León                           |
| Castellón de la Plana [Castell |
| Badajoz                        |
| [San Cristóbal de] la Laguna   |
| Logroño                        |
| Santa Coloma de Gramenet       |
| Tarragona                      |
| Lleida (Lérida)                |
| Jaén                           |
| Ourense (Orense)               |
| Mataró                         |
| Algeciras                      |
| Marbella                       |
| Barakaldo                      |
| Dos Hermanas                   |
| Santiago de Compostela         |
| Torrejón de Ardoz              |
+--------------------------------+
59 rows in set (0.01 sec)

---5. Ver todas las ciudades y sus códigos de pais, ordenados por código de país.
select name,countrycode from city order by countrycode; 
+-----------------------------------+-------------+
| name                              | countrycode |
+-----------------------------------+-------------+
| Oranjestad                        | ABW         |
| Kabul                             | AFG         |
| Qandahar                          | AFG         |
| Herat                             | AFG         |
| Mazar-e-Sharif                    | AFG         |
| Luanda                            | AGO         |
| Huambo                            | AGO         |
| Lobito                            | AGO         |
| Benguela                          | AGO         |
| Namibe                            | AGO         |
| South Hill                        | AIA         |
| The Valley                        | AIA         |
| Tirana                            | ALB         |
| Andorra la Vella                  | AND         |
| Willemstad                        | ANT         |
| Dubai                             | ARE         |
| Abu Dhabi                         | ARE         |
| Sharja                            | ARE         |
| al-Ayn                            | ARE         |
| Ajman                             | ARE         |
| Buenos Aires                      | ARG         |
| La Matanza                        | ARG         |
| Córdoba                           | ARG         |
| Rosario                           | ARG         |
| Lomas de Zamora                   | ARG         |
| Quilmes                           | ARG         |
| Almirante Brown                   | ARG         |
| La Plata                          | ARG         |
| Mar del Plata                     | ARG         |
| San Miguel de Tucumán             | ARG         |
| Lanús                             | ARG         |
| Merlo                             | ARG         |
| General San Martín                | ARG         |
| Salta                             | ARG         |
| Moreno                            | ARG         |
| Santa Fé                          | ARG         |
| Avellaneda                        | ARG         |
| Tres de Febrero                   | ARG         |
| Morón                             | ARG         |
| Florencio Varela                  | ARG         |
| San Isidro                        | ARG         |
| Tigre                             | ARG         |
| Malvinas Argentinas               | ARG         |
| Vicente López                     | ARG         |
| Berazategui                       | ARG         |
| Corrientes                        | ARG         |
| San Miguel                        | ARG         |
| Bahía Blanca                      | ARG         |
| Esteban Echeverría                | ARG         |
| Resistencia                       | ARG         |
| José C. Paz                       | ARG         |
| Paraná                            | ARG         |
| Godoy Cruz                        | ARG         |
| Posadas                           | ARG         |
| Guaymallén                        | ARG         |
| Santiago del Estero               | ARG         |
| San Salvador de Jujuy             | ARG         |
| Hurlingham                        | ARG         |
| Neuquén                           | ARG         |
| Ituzaingó                         | ARG         |
| San Fernando                      | ARG         |
| Formosa                           | ARG         |
| Las Heras                         | ARG         |
| La Rioja                          | ARG         |
| San Fernando del Valle de Cata    | ARG         |
| Río Cuarto                        | ARG         |
| Comodoro Rivadavia                | ARG         |
| Mendoza                           | ARG         |
| San Nicolás de los Arroyos        | ARG         |
| San Juan                          | ARG         |
| Escobar                           | ARG         |
| Concordia                         | ARG         |
| Pilar                             | ARG         |
| San Luis                          | ARG         |
| Ezeiza                            | ARG         |
| San Rafael                        | ARG         |
| Tandil                            | ARG         |
| Yerevan                           | ARM         |
| Gjumri                            | ARM         |
| Vanadzor                          | ARM         |
| Tafuna                            | ASM         |
| Fagatogo                          | ASM         |
| Saint John´s                      | ATG         |
| Sydney                            | AUS         |
| Melbourne                         | AUS         |
| Brisbane                          | AUS         |
| Perth                             | AUS         |
| Adelaide                          | AUS         |
| Canberra                          | AUS         |
+-----------------------------------+-------------+
4079 rows in set (0.01 sec)

---6. Ver cuantas ciudades tiene cada país
select countrycode, count(name) from city group by countrycode;
+-------------+-------------+
| countrycode | count(name) |
+-------------+-------------+
| ABW         |           1 |
| AFG         |           4 |
| AGO         |           5 |
| AIA         |           2 |
| ALB         |           1 |
| AND         |           1 |
| ANT         |           1 |
| ARE         |           5 |
| ARG         |          57 |
| ARM         |           3 |
| VGB         |           1 |
| VIR         |           1 |
| VNM         |          22 |
| VUT         |           1 |
| WLF         |           1 |
| WSM         |           1 |
| YEM         |           6 |
| YUG         |           8 |
| ZAF         |          44 |
| ZMB         |           7 |
| ZWE         |           6 |
+-------------+-------------+
232 rows in set (0.01 sec)

---7. Sacar la población menor.
select min(population) from city;
+-----------------+
| min(population) |
+-----------------+
|              42 |
+-----------------+
1 row in set (0.00 sec)

---8. ¿Cómo será la mayor?
select max(population) from city;
+-----------------+
| max(population) |
+-----------------+
|        10500000 |
+-----------------+
1 row in set (0.00 sec)

---9. Sacar el nombre de la ciudad con más habitantes.
select name from city where population= (select max(population) from city);
+-----------------+
| name            |
+-----------------+
| Mumbai (Bombay) |
+-----------------+
1 row in set (0.01 sec)

---10. Averigua la suma de todas los habitantes.
select sum(population) from city;
+-----------------+
| sum(population) |
+-----------------+
|      1429559884 |
+-----------------+
1 row in set (0.00 sec)

---11. Saca los distintos códigos de país.
select distinct(countrycode) from city;
+-------------+
| countrycode |
+-------------+
| ABW         |
| AFG         |
| AGO         |
| AIA         |
| ALB         |
| AND         |
| ANT         |
| ARE         |
| ARG         |
| ARM         |
| ASM         |
| ATG         |
| AUS         |
| AUT         |
| AZE         |
| BDI         |
| BEL         |
| BEN         |
| BFA         |
| BGD         |
+-------------+
232 rows in set (0.00 sec)

---12. Cuenta los distintos códigos de país.
select count(distinct(countrycode)) from city;
+------------------------------+
| count(distinct(countrycode)) |
+------------------------------+
|                          232 |
+------------------------------+
1 row in set (0.00 sec)

---13. Saca las ciudades del país usa, que su población sea mayor de 10000.
select name from city where countrycode like"USA" and population>10000;
+---------------+-------------+
| name          | countrycode |
+---------------+-------------+
| New York      | USA         |
| Los Angeles   | USA         |
| Chicago       | USA         |
| Houston       | USA         |
| Philadelphia  | USA         |
| Phoenix       | USA         |
| San Diego     | USA         |
| Dallas        | USA         |
| San Antonio   | USA         |
| Detroit       | USA         |
| San Jose      | USA         |
| Indianapolis  | USA         |
| San Francisco | USA         |
| Jacksonville  | USA         |
| Columbus      | USA         |
| Austin        | USA         |
| Baltimore     | USA         |
| Memphis       | USA         |
| Milwaukee     | USA         |
| Boston        | USA         |
+---------------+-------------+
274 rows in set (0.00 sec)

---14. Cuenta todos los códigos de países.
select count(countrycode) from city;
+--------------------+
| count(countrycode) |
+--------------------+
|               4079 |
+--------------------+
1 row in set (0.00 sec)

---15. Suma todas las poblaciones distintas.
select sum(distinct(population))from city;
+---------------------------+
| sum(distinct(population)) |
+---------------------------+
|                1398360159 |
+---------------------------+
1 row in set (0.01 sec)

---16. Saca el nombre de la ciudad con menos habitantes
select name from city where population =(select min(population) from city);
+-----------+
| name      |
+-----------+
| Adamstown |
+-----------+
1 row in set (0.01 sec)

---17. Saca sólo las provincias distintas de España.
select distinct(district) from city where countrycode="ESP";
+--------------------+
| district           |
+--------------------+
| Madrid             |
| Katalonia          |
| Valencia           |
| Andalusia          |
| Aragonia           |
| Baskimaa           |
| Canary Islands     |
| Murcia             |
| Balears            |
| Castilla and León  |
| Galicia            |
| Asturia            |
| Cantabria          |
| Navarra            |
| Kastilia-La Mancha |
| Extremadura        |
| La Rioja           |
+--------------------+
17 rows in set (0.00 sec)

---18. Saca el número de ciudades por provincia
select district,count(name) from city group by district;
+---------------+-------------+
| district      | count(name) |
+---------------+-------------+
| Kabol         |           1 |
| Qandahar      |           1 |
| Herat         |           1 |
| Balkh         |           1 |
| Noord-Holland |           5 |
| Zuid-Holland  |           6 |
| Utrecht       |           2 |
| Noord-Brabant |           4 |
| Groningen     |           1 |
| Gelderland    |           4 |
| Overijssel    |           2 |
| Flevoland     |           1 |
| Limburg       |           2 |
| Drenthe       |           1 |
| Curaçao       |           1 |
| Tirana        |           1 |
| Alger         |           1 |
| Oran          |           1 |
| Constantine   |           1 |
| Annaba        |           1 |
+---------------+-------------+
20 rows in set (0.01 sec)

---19. Saca todas las ciudades de Extremadura.
select name from city where district like"Extremadura";
+---------+
| name    |
+---------+
| Badajoz |
+---------+
1 row in set (0.00 sec)

---20. Saca la cuenta de las ciudades agrupadas por provincias y por países.
select countrycode,district,count(name) from city group by district,countrycode;
+-------------+----------------------+-------------+
| countrycode | district             | count(name) |
+-------------+----------------------+-------------+
| AFG         | Kabol                |           1 |
| AFG         | Qandahar             |           1 |
| AFG         | Herat                |           1 |
| AFG         | Balkh                |           1 |
| NLD         | Noord-Holland        |           5 |
| NLD         | Zuid-Holland         |           6 |
| NLD         | Utrecht              |           2 |
| NLD         | Noord-Brabant        |           4 |
| NLD         | Groningen            |           1 |
| NLD         | Gelderland           |           4 |
| NLD         | Overijssel           |           2 |
| NLD         | Flevoland            |           1 |
| NLD         | Limburg              |           2 |
| NLD         | Drenthe              |           1 |
| ANT         | Curaçao              |           1 |
| ALB         | Tirana               |           1 |
| DZA         | Alger                |           1 |
| DZA         | Oran                 |           1 |
| DZA         | Constantine          |           1 |
| DZA         | Annaba               |           1 |
| DZA         | Batna                |           1 |
| DZA         | Sétif                |           1 |
| DZA         | Sidi Bel Abbès       |           1 |
| DZA         | Skikda               |           1 |
| DZA         | Biskra               |           1 |
| DZA         | Blida                |           1 |
| DZA         | Béjaïa               |           1 |
| DZA         | Mostaganem           |           1 |
| DZA         | Tébessa              |           1 |
| DZA         | Tlemcen              |           1 |
| DZA         | Béchar               |           1 |
| DZA         | Tiaret               |           1 |
| DZA         | Chlef                |           1 |
| DZA         | Ghardaïa             |           1 |
| ASM         | Tutuila              |           2 |
| AND         | Andorra la Vella     |           1 |
| AGO         | Luanda               |           1 |
| AGO         | Huambo               |           1 |
| AGO         | Benguela             |           2 |
| AGO         | Namibe               |           1 |
| AIA         | ?                    |           2 |
| ATG         | St John              |           1 |
| ARE         | Dubai                |           1 |
| ARE         | Abu Dhabi            |           2 |
| ARE         | Sharja               |           1 |
| ARE         | Ajman                |           1 |
| ARG         | Distrito Federal     |           1 |
| ARG         | Buenos Aires         |          31 |
| ARG         | Córdoba              |           2 |
| ARG         | Santa Fé             |           2 |
| ARG         | Tucumán              |           1 |
| ARG         | Salta                |           1 |
| ARG         | Corrientes           |           1 |
| ARG         | Chaco                |           1 |
| ARG         | Entre Rios           |           2 |
| ARG         | Mendoza              |           5 |
| ARG         | Misiones             |           1 |
| ARG         | Santiago del Estero  |           1 |
| ARG         | Jujuy                |           1 |
| ARG         | Neuquén              |           1 |
| ARG         | Formosa              |           1 |
| ARG         | La Rioja             |           1 |
| ARG         | Catamarca            |           1 |
| ARG         | Chubut               |           1 |
| ARG         | San Juan             |           1 |
| ARG         | San Luis             |           1 |
| ARM         | Yerevan              |           1 |
| ARM         | ?irak                |           1 |
| ARM         | Lori                 |           1 |
| ABW         | ?                    |           1 |
| AUS         | New South Wales      |           4 |
| AUS         | Victoria             |           2 |
| AUS         | Queensland           |           4 |
| AUS         | West Australia       |           1 |
| AUS         | South Australia      |           1 |
| AUS         | Capital Region       |           1 |
| AUS         | Tasmania             |           1 |
| AZE         | Baki                 |           1 |
| AZE         | Gäncä                |           1 |
| AZE         | Sumqayit             |           1 |
| AZE         | Mingäçevir           |           1 |
| BHS         | New Providence       |           1 |
| BHR         | al-Manama            |           1 |
| BGD         | Dhaka                |           8 |
| BGD         | Chittagong           |           3 |
| BGD         | Khulna               |           2 |
| BGD         | Rajshahi             |           9 |
| BGD         | Barisal              |           1 |
| BGD         | Sylhet               |           1 |
| BRB         | St Michael           |           1 |
| BEL         | Antwerpen            |           1 |
| BEL         | East Flanderi        |           1 |
| BEL         | Hainaut              |           2 |
| BEL         | Liège                |           1 |
| BEL         | Bryssel              |           2 |
| BEL         | West Flanderi        |           1 |
| BEL         | Namur                |           1 |
| BLZ         | Belize City          |           1 |
| BLZ         | Cayo                 |           1 |
| BEN         | Atlantique           |           1 |
| BEN         | Ouémé                |           1 |
| BEN         | Atacora              |           1 |
| BEN         | Borgou               |           1 |
| BMU         | Saint George´s       |           1 |
| BMU         | Hamilton             |           1 |
| BTN         | Thimphu              |           1 |
| BOL         | Santa Cruz           |           1 |
| BOL         | La Paz               |           2 |
| BOL         | Cochabamba           |           1 |
| BOL         | Oruro                |           1 |
| BOL         | Chuquisaca           |           1 |
| BOL         | Potosí               |           1 |
| BOL         | Tarija               |           1 |
| BIH         | Federaatio           |           2 |
| BIH         | Republika Srpska     |           1 |
| BWA         | Gaborone             |           1 |
| BWA         | Francistown          |           1 |
| BRA         | São Paulo            |          69 |
| BRA         | Rio de Janeiro       |          22 |
| BRA         | Bahia                |          15 |
| BRA         | Minas Gerais         |          27 |
| BRA         | Ceará                |           6 |
| BRA         | Distrito Federal     |           1 |
| BRA         | Paraná               |          14 |
| BRA         | Pernambuco           |          11 |
| BRA         | Rio Grande do Sul    |          20 |
| BRA         | Amazonas             |           1 |
| BRA         | Pará                 |           8 |
| BRA         | Goiás                |           6 |
| BRA         | Maranhão             |           7 |
| BRA         | Alagoas              |           2 |
| BRA         | Piauí                |           2 |
| BRA         | Rio Grande do Norte  |           3 |
| BRA         | Mato Grosso do Sul   |           3 |
| BRA         | Paraíba              |           4 |
| BRA         | Mato Grosso          |           3 |
| BRA         | Sergipe              |           2 |
| BRA         | Santa Catarina       |          10 |
| BRA         | Espírito Santo       |           7 |
| BRA         | Rondônia             |           2 |
| BRA         | Acre                 |           1 |
| BRA         | Amapá                |           1 |
| BRA         | Roraima              |           1 |
| BRA         | Tocantins            |           2 |
| GBR         | England              |          71 |
| GBR         | Scotland             |           4 |
| GBR         | Wales                |           3 |
| GBR         | North Ireland        |           1 |
| GBR         | Jersey               |           1 |
| GBR         | ?                    |           1 |
| VGB         | Tortola              |           1 |
| BRN         | Brunei and Muara     |           1 |
| USA         | Iowa                 |           3 |
| USA         | Idaho                |           1 |
| USA         | Mississippi          |           1 |
| USA         | Arkansas             |           1 |
| USA         | Utah                 |           4 |
| USA         | Rhode Island         |           1 |
| USA         | Connecticut          |           5 |
| USA         | South Dakota         |           1 |
| USA         | South Carolina       |           2 |
| USA         | New Hampshire        |           1 |
| USA         | Montana              |           1 |
| VIR         | St Thomas            |           1 |
| ZWE         | Harare               |           3 |
| ZWE         | Bulawayo             |           1 |
| ZWE         | Manicaland           |           1 |
| ZWE         | Midlands             |           1 |
| PSE         | Gaza                 |           1 |
| PSE         | Khan Yunis           |           1 |
| PSE         | Hebron               |           1 |
| PSE         | North Gaza           |           1 |
| PSE         | Nablus               |           1 |
| PSE         | Rafah                |           1 |
+-------------+----------------------+-------------+
1412 rows in set (0.00 sec)

---21. Saca la suma de la población de todos los distritos de España
select sum(population) from city where countrycode like "ESP";
+-----------------+
| sum(population) |
+-----------------+
|        16669189 |
+-----------------+
1 row in set (0.00 sec)

---22. Cual es el distrito español con más habitantes.
select district,population from city where population like (select max(population) from city where countrycode like "ESP");
+----------+------------+
| district | population |
+----------+------------+
| Madrid   |    2879052 |
+----------+------------+
1 row in set (0.01 sec)



Consultas sobre la tabla Country
---1. ¿Cual es la esperanza de vida máxima?
select max(lifeexpectancy) from country;
+---------------------+
| max(lifeexpectancy) |
+---------------------+
|                83.5 |
+---------------------+
1 row in set (0.00 sec)

---2. Saca la lista de las capitales de todos los países
select distinct(capital) from country;
+---------+
| capital |
+---------+
|     129 |
|       1 |
|      56 |
|      62 |
|      34 |
|      55 |
|      33 |
|      65 |
|      69 |
|     126 |
|      54 |
|    NULL |
|      63 |
|     135 |
|    1523 |
|     144 |
|     552 |
|     179 |
|     187 |
|     549 |
+---------+
239 rows in set (0.00 sec)

---3. Saca la lista de las capitales europeas
select capital from country where continent like "europe";
+---------+
| capital |
+---------+
|      34 |
|      55 |
|    1523 |
|     179 |
|     539 |
|     201 |
|    3520 |
|    3248 |
|    3339 |
|    3068 |
|    3315 |
|     653 |
|    3791 |
|    3236 |
|    2974 |
|     901 |
|     456 |
|     915 |
|    2401 |
|    2409 |
|    3483 |
|    1447 |
|    1449 |
|    1464 |
|    2446 |
|    2447 |
|    2452 |
|    2434 |
|    2695 |
|    2690 |
|    2460 |
|    2484 |
|       5 |
|    2807 |
|    2928 |
|    2914 |
|    3018 |
|    3580 |
|     938 |
|    3171 |
|    3209 |
|    3212 |
|    3048 |
|    3426 |
|    3538 |
|    1792 |
+---------+
46 rows in set (0.00 sec)

---4. Saca las lista de las capitales africanas y norteamericanas
select distinct(capital) from country where continent like "Afri%" or continent like "North%";
+---------+
| capital |
+---------+
|     129 |
|      56 |
|      62 |
|      33 |
|      63 |
|     552 |
|     187 |
|     549 |
|     148 |
|     185 |
|     191 |
|     174 |
|     204 |
|    1889 |
|    1822 |
|    2814 |
|    1804 |
|    2298 |
|    2296 |
|    2295 |
|     537 |
|    4067 |
|     716 |
|    3162 |
|    4068 |
+---------+
95 rows in set (0.04 sec)

---5. Halla la población media
select avg(population) from country;
+-----------------+
| avg(population) |
+-----------------+
|   25434098.1172 |
+-----------------+
1 row in set (0.00 sec
---6. Saca los países con mayor y menor esperanza de vida
select name from country where lifeexpectancy = (select max(lifeexpectancy) from country) or lifeexpectancy = (select min(lifeexpectancy)from country);
+---------+
| name    |
+---------+
| Andorra |
| Zambia  |
+---------+
2 rows in set (0.00 sec)

---7. Saca una lista de continentes ordenadas por la esperanza de vida media de forma  descendente.
select distinct(continent) from country order by lifeexpectancy desc;
+---------------+
| continent     |
+---------------+
| North America |
| South America |
| Oceania       |
| Europe        |
| Asia          |
| Africa        |
| Antarctica    |
+---------------+
7 rows in set (0.00 sec)

---8. Cual es la mayor esperanza de vida (Dos formas de hacerlo, con una variable y de una  forma nueva, usar una select como tabla)
select max(lifeexpectancy) from country;
+---------------------+
| max(lifeexpectancy) |
+---------------------+
|                83.5 |
+---------------------+
1 row in set (0.01 sec)

---9. Sacar el país con mayor extensión de terreno
select name from country where surfacearea = (select max(surfacearea) from country);
+--------------------+
| name               |
+--------------------+
| Russian Federation |
+--------------------+
1 row in set (0.00 sec)

---10. Cuantas regiones distintas tenemos
select count(distinct(region)) from country;
+-------------------------+
| count(distinct(region)) |
+-------------------------+
|                      25 |
+-------------------------+
1 row in set (0.00 sec)

---11. Saca el nombre local de todos los países
select distinct(name) from country;
+----------------------------------------------+
| name                                         |
+----------------------------------------------+
| Aruba                                        |
| Afghanistan                                  |
| Angola                                       |
| Anguilla                                     |
| Albania                                      |
| Andorra                                      |
| Netherlands Antilles                         |
| United Arab Emirates                         |
| Argentina                                    |
| Armenia                                      |
| American Samoa                               |
| Antarctica                                   |
| French Southern territories                  |
| Antigua and Barbuda                          |
| Australia                                    |
| Austria                                      |
| Azerbaijan                                   |
| Burundi                                      |
| Belgium                                      |
| Benin                                        |
| Burkina Faso                                 |
| Bangladesh                                   |
| Bulgaria                                     |
| Bahrain                                      |
| Bahamas                                      |
| Bosnia and Herzegovina                       |
| Belarus                                      |
| Belize                                       |
| Bermuda                                      |
| Bolivia                                      |
| Brazil                                       |
| Barbados                                     |
| Brunei                                       |
| Bhutan                                       |
| Bouvet Island                                |
| Botswana                                     |
+----------------------------------------------+
239 rows in set (0.00 sec)

---12. Saca el nombre local de todos los países Europeos y asiáticos
select distinct(name) from country where continent like"Europe" or continent like"Asia";
+-------------------------------+
| name                          |
+-------------------------------+
| Afghanistan                   |
| Albania                       |
| Andorra                       |
| United Arab Emirates          |
| Armenia                       |
| Austria                       |
| Azerbaijan                    |
| Belgium                       |
| Bangladesh                    |
| Bulgaria                      |
| Bahrain                       |
| Bosnia and Herzegovina        |
| Belarus                       |
| Brunei                        |
| Bhutan                        |
| Switzerland                   |
| China                         |
| Cyprus                        |
| Czech Republic                |
| Germany                       |
| Denmark                       |
| Spain                         |
| Estonia                       |
+-------------------------------+
97 rows in set (0.00 sec)


---13. Saca las distintas formas de gobierno.
select distinct(governmentform) from country;
+----------------------------------------------+
| governmentform                               |
+----------------------------------------------+
| Nonmetropolitan Territory of The Netherlands |
| Islamic Emirate                              |
| Republic                                     |
| Dependent Territory of the UK                |
| Parliamentary Coprincipality                 |
| Emirate Federation                           |
| Federal Republic                             |
| US Territory                                 |
| Co-administrated                             |
| Nonmetropolitan Territory of France          |
| Constitutional Monarchy                      |
| Constitutional Monarchy, Federation          |
| Monarchy (Emirate)                           |
| Monarchy (Sultanate)                         |
| Monarchy                                     |
| Dependent Territory of Norway                |
| Territory of Australia                       |
| Federation                                   |
| People''sRepublic                             |
| Nonmetropolitan Territory of New Zealand     |
| Socialistic Republic                         |
| Occupied by Marocco                          |
| Part of Denmark                              |
| Overseas Department of France                |
| Special Administrative Region of China       |
| Islamic Republic                             |
| Constitutional Monarchy (Emirate)            |
| Socialistic State                            |
| Commonwealth of the US                       |
| Territorial Collectivity of France           |
| Autonomous Area                              |
| Administrated by the UN                      |
| Dependent Territory of the US                |
| Independent Church State                     |
| Parlementary Monarchy                        |
+----------------------------------------------+
35 rows in set (0.00 sec)

Consultas de todo:
---1. Enumera todos los idiomas que se hablan en USA
select language from countrylanguage where countrycode like "USA";
+------------+
| language   |
+------------+
| Chinese    |
| English    |
| French     |
| German     |
| Italian    |
| Japanese   |
| Korean     |
| Polish     |
| Portuguese |
| Spanish    |
| Tagalog    |
| Vietnamese |
+------------+
12 rows in set (0.00 sec) 

---2. Obtén la superficie de cada país y el número de ciudades.
select count(city.name),country.surfacearea from city,country where city.countrycode = country.code group by country.name;
+------------------+-------------+
| count(city.name) | surfacearea |
+------------------+-------------+
|                1 |      193.00 |
|                4 |   652090.00 |
|                5 |  1246700.00 |
|                2 |       96.00 |
|                1 |    28748.00 |
|                1 |      468.00 |
|                1 |      800.00 |
|                5 |    83600.00 |
|               57 |  2780400.00 |
|                3 |    29800.00 |
|                2 |      199.00 |
|                1 |      442.00 |
|               14 |  7741220.00 |
|                6 |    83859.00 |
|                4 |    86600.00 |
|                1 |    27834.00 |
|                9 |    30518.00 |
|                4 |   112622.00 |
|                3 |   274000.00 |
|               24 |   143998.00 |
|               10 |   110994.00 |
|                1 |      694.00 |
|                1 |    13878.00 |
|                3 |    51197.00 |
|               16 |   207600.00 |
+------------------+-------------+
232 rows in set (0.01 sec)

---3. Averigua la longevidad media en todos los países que hablan Español.
select name,lifeexpectancy from country,countrylanguage where country.code = countrylanguage.countrycode and language like "spanish";

+----------------------+----------------+
| name                 | lifeexpectancy |
+----------------------+----------------+
| Aruba                |           78.4 |
| Andorra              |           83.5 |
| Argentina            |           75.1 |
| Belize               |           70.9 |
| Bolivia              |           63.7 |
| Canada               |           79.4 |
| Chile                |           75.7 |
| Colombia             |           70.3 |
| Costa Rica           |           75.8 |
| Cuba                 |           76.2 |
| Dominican Republic   |           73.2 |
| Ecuador              |           71.1 |
| Spain                |           78.8 |
| France               |           78.8 |
| Guatemala            |           66.2 |
| Honduras             |           69.9 |
| Mexico               |           71.5 |
| Nicaragua            |           68.7 |
| Panama               |           75.5 |
| Peru                 |           70.0 |
| Puerto Rico          |           75.6 |
| Paraguay             |           73.7 |
| El Salvador          |           69.7 |
| Sweden               |           79.6 |
| Uruguay              |           75.2 |
| United States        |           77.1 |
| Venezuela            |           73.1 |
| Virgin Islands, U.S. |           78.1 |
+----------------------+----------------+
28 rows in set (0.01 sec)

---4. Cuantas ciudades tenemos en Spain.
select count(city.name) from city,country where city.countrycode = country.code and country.name like "Spain";
+------------------+
| count(city.name) |
+------------------+
|               59 |
+------------------+
1 row in set (0.00 sec)

---5. ¿Cómo puedes averiguar el número de habitantes de cualquier país que no reside en una  ciudad?
select country.population-sum(city.population) from country,city where country.code=city.countrycode group by country.population;
+-----------------------------------------+
| country.population-sum(city.population) |
+-----------------------------------------+
|                                20387900 |
|                                10683951 |
|                                  214655 |
|                                 3131200 |
|                                26278821 |
|                                   36477 |
|                                   47611 |
|                                10316400 |
|                                    6444 |
|                                  712664 |
|                                17035437 |
|                                 1886900 |
|                                   73966 |
|                                 7572334 |
|                                 5270000 |
|                                  135000 |
|                                  469000 |
|                               120585094 |
|                                  263930 |
|                                 8629678 |
|                                  178085 |
+-----------------------------------------+
225 rows in set (0.03 sec)
---6. ¿Qué países tienen por idioma oficial el inglés?
select country.name from country,countrylanguage where country.code=countrylanguage.countrycode and countrylanguage.language like"english" and countrylanguage.isofficial like'T';
+--------------------------------------+
| name                                 |
+--------------------------------------+
| Anguilla                             |
| American Samoa                       |
| Antigua and Barbuda                  |
| Australia                            |
| Belize                               |
| Bermuda                              |
| Barbados                             |
| Canada                               |
| Cocos (Keeling) Islands              |
| Christmas Island                     |
| Cayman Islands                       |
| Falkland Islands                     |
| United Kingdom                       |
| Gibraltar                            |
| Guam                                 |
| Hong Kong                            |
| Ireland                              |
| Saint Kitts and Nevis                |
| Saint Lucia                          |
| Lesotho                              |
| Marshall Islands                     |
| Malta                                |
| Northern Mariana Islands             |
| Montserrat                           |
| Norfolk Island                       |
| Niue                                 |
| Nauru                                |
| New Zealand                          |
| Palau                                |
| Saint Helena                         |
| Seychelles                           |
| Turks and Caicos Islands             |
| Tokelau                              |
| Tonga                                |
| Tuvalu                               |
| United States Minor Outlying Islands |
| United States                        |
| Saint Vincent and the Grenadines     |
| Virgin Islands, British              |
| Virgin Islands, U.S.                 |
| Vanuatu                              |
| Samoa                                |
| South Africa                         |
| Zimbabwe                             |
+--------------------------------------+
44 rows in set (0.01 sec)

---7. De todas las ciudades que tenemos en un país que sus habitantes llaman España, cuales  tienen más de 10.000 habitantes
select city.name,city.population from city,country where city.countrycode=country.code and country.name like 'Spain' and city.population > 10000;
+--------------------------------+------------+
| name                           | population |
+--------------------------------+------------+
| Madrid                         |    2879052 |
| Barcelona                      |    1503451 |
| Valencia                       |     739412 |
| Sevilla                        |     701927 |
| Zaragoza                       |     603367 |
| Málaga                         |     530553 |
| Bilbao                         |     357589 |
| Las Palmas de Gran Canaria     |     354757 |
| Murcia                         |     353504 |
| Palma de Mallorca              |     326993 |
| Valladolid                     |     319998 |
| Córdoba                        |     311708 |
| Vigo                           |     283670 |
| Alicante [Alacant]             |     272432 |
| Gijón                          |     267980 |
| L´Hospitalet de Llobregat      |     247986 |
| Granada                        |     244767 |
| A Coruña (La Coruña)           |     243402 |
| Vitoria-Gasteiz                |     217154 |
| Santa Cruz de Tenerife         |     213050 |
| Badalona                       |     209635 |
| Oviedo                         |     200453 |
| Móstoles                       |     195351 |
| Elche [Elx]                    |     193174 |
| Sabadell                       |     184859 |
| Santander                      |     184165 |
| Jerez de la Frontera           |     182660 |
| Pamplona [Iruña]               |     180483 |
| Donostia-San Sebastián         |     179208 |
| Cartagena                      |     177709 |
| Leganés                        |     173163 |
| Fuenlabrada                    |     171173 |
| Almería                        |     169027 |
| Terrassa                       |     168695 |
| Alcalá de Henares              |     164463 |
| Burgos                         |     162802 |
| Salamanca                      |     158720 |
| Albacete                       |     147527 |
| Getafe                         |     145371 |
| Cádiz                          |     142449 |
| Alcorcón                       |     142048 |
| Huelva                         |     140583 |
| León                           |     139809 |
| Castellón de la Plana [Castell |     139712 |
| Badajoz                        |     136613 |
| [San Cristóbal de] la Laguna   |     127945 |
| Logroño                        |     127093 |
| Santa Coloma de Gramenet       |     120802 |
| Tarragona                      |     113016 |
| Lleida (Lérida)                |     112207 |
| Jaén                           |     109247 |
| Ourense (Orense)               |     109120 |
| Mataró                         |     104095 |
| Algeciras                      |     103106 |
| Marbella                       |     101144 |
| Barakaldo                      |      98212 |
| Dos Hermanas                   |      94591 |
| Santiago de Compostela         |      93745 |
| Torrejón de Ardoz              |      92262 |
+--------------------------------+------------+
59 rows in set (0.00 sec)

---8. Saca cada país con su nombre completo y el número de distritos.
select country.name,count(city.district) from country,city where city.countrycode=country.code group by country.name;
+---------------------------------------+----------------------+
| name                                  | count(city.district) |
+---------------------------------------+----------------------+
| Aruba                                 |                    1 |
| Afghanistan                           |                    4 |
| Angola                                |                    5 |
| Anguilla                              |                    2 |
| Albania                               |                    1 |
| Andorra                               |                    1 |
| Netherlands Antilles                  |                    1 |
| United Arab Emirates                  |                    5 |
| Argentina                             |                   57 |
| Armenia                               |                    3 |
| American Samoa                        |                    2 |
| Antigua and Barbuda                   |                    1 |
| Australia                             |                   14 |
| Austria                               |                    6 |
| Azerbaijan                            |                    4 |
| Burundi                               |                    1 |
| Belgium                               |                    9 |
| Benin                                 |                    4 |
| Burkina Faso                          |                    3 |
| Bangladesh                            |                   24 |
| Bulgaria                              |                   10 |
| Bahrain                               |                    1 |
| Bahamas                               |                    1 |
| Bosnia and Herzegovina                |                    3 |
| Belarus                               |                   16 |
| Belize                                |                    2 |
| Bermuda                               |                    2 |
| Bolivia                               |                    8 |
| Brazil                                |                  250 |
| Barbados                              |                    1 |
| Brunei                                |                    1 |
| Bhutan                                |                    1 |
| Botswana                              |                    2 |
| Central African Republic              |                    1 |
| Canada                                |                   49 |
| Cocos (Keeling) Islands               |                    2 |
| Switzerland                           |                    5 |
| Chile                                 |                   29 |
| China                                 |                  363 |
| Côte d?Ivoire                         |                    5 |
| Cameroon                              |                    7 |
| Congo, The Democratic Republic of the |                   18 |
| Congo                                 |                    2 |
| Cook Islands                          |                    1 |
| Colombia                              |                   38 |
| Comoros                               |                    1 |
| Cape Verde                            |                    1 |
| Costa Rica                            |                    1 |
| Cuba                                  |                   14 |
| Christmas Island                      |                    1 |
| Cayman Islands                        |                    1 |
| Cyprus                                |                    2 |
| Czech Republic                        |                   10 |
| Germany                               |                   93 |
| Djibouti                              |                    1 |
| Dominica                              |                    1 |
| Denmark                               |                    5 |
| Dominican Republic                    |                    6 |
| Algeria                               |                   18 |
+---------------------------------------+----------------------+
232 rows in set (0.01 sec)

---9. Saca cada ciudad con el país al que corresponde, ordenado por ciudad.
select city.name,country.name from city,country where city.countrycode=country.code order by city.name;
+-----------------------------------+---------------------------------------+
| name                              | name                                  |
+-----------------------------------+---------------------------------------+
| A Coruña (La Coruña)              | Spain                                 |
| Aachen                            | Germany                               |
| Aalborg                           | Denmark                               |
| Aba                               | Nigeria                               |
| Abadan                            | Iran                                  |
| Abaetetuba                        | Brazil                                |
| Abakan                            | Russian Federation                    |
| Abbotsford                        | Canada                                |
| Abeokuta                          | Nigeria                               |
| Aberdeen                          | United Kingdom                        |
| Abha                              | Saudi Arabia                          |
| Abidjan                           | Côte d?Ivoire                         |
| Abiko                             | Japan                                 |
| Abilene                           | United States                         |
| Abohar                            | India                                 |
| Abottabad                         | Pakistan                              |
| Abu Dhabi                         | United Arab Emirates                  |
| Abuja                             | Nigeria                               |
| Acámbaro                          | Mexico                                |
| Acapulco de Juárez                | Mexico                                |
| Acarigua                          | Venezuela                             |
| Accra                             | Ghana                                 |
| Achalpur                          | India                                 |
| Acheng                            | China                                 |
| Acuña                             | Mexico                                |
| Adamstown                         | Pitcairn                              |
| Adana                             | Turkey                                |
| Addis Abeba                       | Ethiopia                              |
| Adelaide                          | Australia                             |
| Aden                              | Yemen                                 |
| Adiyaman                          | Turkey                                |
| Ado-Ekiti                         | Nigeria                               |
| Adoni                             | India                                 |
| Afyon                             | Turkey                                |
| Agadir                            | Morocco                               |
| Agaña                             | Guam                                  |
| Agartala                          | India                                 |
| Agege                             | Nigeria                               |
| Ageo                              | Japan                                 |
| Agra                              | India                                 |
| Águas Lindas de Goiás             | Brazil                                |
| Aguascalientes                    | Mexico                                |
| Ahmadnagar                        | India                                 |
| Ahmadpur East                     | Pakistan                              |
| Ahmedabad                         | India                                 |
| Ahome                             | Mexico                                |
| Ahvaz                             | Iran                                  |
| Aix-en-Provence                   | France                                |
| Aizawl                            | India                                 |
| Aizuwakamatsu                     | Japan                                 |
| Ajman                             | United Arab Emirates                  |
| Ajmer                             | India                                 |
| Akashi                            | Japan                                 |
| Akishima                          | Japan                                 |
| Akita                             | Japan                                 |
| Akola                             | India                                 |
| Akron                             | United States                         |
| Aksaray                           | Turkey                                |
| Akure                             | Nigeria                               |
| al-Amara                          | Iraq                                  |
| al-Arish                          | Egypt                                 |
| al-Ayn                            | United Arab Emirates                  |
| al-Dammam                         | Saudi Arabia                          |
| al-Diwaniya                       | Iraq                                  |
| al-Faiyum                         | Egypt                                 |
| al-Fashir                         | Sudan                                 |
| al-Hawamidiya                     | Egypt                                 |
| al-Hawiya                         | Saudi Arabia                          |
| al-Hilla                          | Iraq                                  |
| al-Hufuf                          | Saudi Arabia                          |
| al-Kharj                          | Saudi Arabia                          |
| al-Khubar                         | Saudi Arabia                          |
| al-Kut                            | Iraq                                  |
| al-Mahallat al-Kubra              | Egypt                                 |
| al-Manama                         | Bahrain                               |
| al-Mansura                        | Egypt                                 |
| al-Minya                          | Egypt                                 |
| al-Mubarraz                       | Saudi Arabia                          |
| al-Mukalla                        | Yemen                                 |
| al-Najaf                          | Iraq                                  |
| al-Nasiriya                       | Iraq                                  |
| al-Qadarif                        | Sudan                                 |
| al-Qamishliya                     | Syria                                 |
| al-Qatif                          | Saudi Arabia                          |
| al-Ramadi                         | Iraq                                  |
| al-Raqqa                          | Syria                                 |
| al-Rusayfa                        | Jordan                                |
| al-Salimiya                       | Kuwait                                |
| al-Sib                            | Oman                                  |
+-----------------------------------+---------------------------------------+
4079 rows in set (0.05 sec)
---10. Obtén una lista con los siguientes campos: Ciudad, población, país, superficie, idioma oficial.
select distinct(city.name),city.population,country.name,country.surfacearea,countrylanguage.language from city,country,countrylanguage where city.countrycode=country.code and country.code=countrylanguage.countrycode and countrylanguage.isofficial like "T" order by city.name;
+-----------------------------------+------------+----------------------------------+-------------+------------------+
| name                              | population | name                             | surfacearea | language         |
+-----------------------------------+------------+----------------------------------+-------------+------------------+
| A Coruña (La Coruña)              |     243402 | Spain                            |   505992.00 | Spanish          |
| Aachen                            |     243825 | Germany                          |   357022.00 | German           |
| Aalborg                           |     161161 | Denmark                          |    43094.00 | Danish           |
| Abadan                            |     206073 | Iran                             |  1648195.00 | Persian          |
| Abaetetuba                        |     111258 | Brazil                           |  8547403.00 | Portuguese       |
| Abakan                            |     169200 | Russian Federation               | 17075400.00 | Russian          |
| Abbotsford                        |     105403 | Canada                           |  9970610.00 | English          |
| Abbotsford                        |     105403 | Canada                           |  9970610.00 | French           |
| Aberdeen                          |     213070 | United Kingdom                   |   242900.00 | English          |
| Abha                              |     112300 | Saudi Arabia                     |  2149690.00 | Arabic           |
| Abiko                             |     126670 | Japan                            |   377829.00 | Japanese         |
| Abilene                           |     115930 | United States                    |  9363520.00 | English          |
| Abohar                            |     107163 | India                            |  3287263.00 | Hindi            |
| Abottabad                         |     106000 | Pakistan                         |   796095.00 | Urdu             |
| Abu Dhabi                         |     398695 | United Arab Emirates             |    83600.00 | Arabic           |
| Acámbaro                          |     110487 | Mexico                           |  1958201.00 | Spanish          |
| Acapulco de Juárez                |     721011 | Mexico                           |  1958201.00 | Spanish          |
| Acarigua                          |     158954 | Venezuela                        |   912050.00 | Spanish          |
| Achalpur                          |      96216 | India                            |  3287263.00 | Hindi            |
| Acheng                            |     197595 | China                            |  9572900.00 | Chinese          |
| Acuña                             |     110388 | Mexico                           |  1958201.00 | Spanish          |
| Adana                             |    1131198 | Turkey                           |   774815.00 | Turkish          |
| Adelaide                          |     978100 | Australia                        |  7741220.00 | English          |
| Aden                              |     398300 | Yemen                            |   527968.00 | Arabic           |
| Adiyaman                          |     141529 | Turkey                           |   774815.00 | Turkish          |
| Adoni                             |     136182 | India                            |  3287263.00 | Hindi            |
| Afyon                             |     103984 | Turkey                           |   774815.00 | Turkish          |
| Agadir                            |     155244 | Morocco                          |   446550.00 | Arabic           |
| Agaña                             |       1139 | Guam                             |      549.00 | Chamorro         |
| Agaña                             |       1139 | Guam                             |      549.00 | English          |
| Agartala                          |     157358 | India                            |  3287263.00 | Hindi            |
| Ageo                              |     209442 | Japan                            |   377829.00 | Japanese         |
| Agra                              |     891790 | India                            |  3287263.00 | Hindi            |
| Águas Lindas de Goiás             |      89200 | Brazil                           |  8547403.00 | Portuguese       |
| Aguascalientes                    |     643360 | Mexico                           |  1958201.00 | Spanish          |
| Ahmadnagar                        |     181339 | India                            |  3287263.00 | Hindi            |
| Ahmadpur East                     |      96000 | Pakistan                         |   796095.00 | Urdu             |
| Ahmedabad                         |    2876710 | India                            |  3287263.00 | Hindi            |
| Ahome                             |     358663 | Mexico                           |  1958201.00 | Spanish          |
| Ahvaz                             |     804980 | Iran                             |  1648195.00 | Persian          |
| Aix-en-Provence                   |     134222 | France                           |   551500.00 | French           |
| Aizawl                            |     155240 | India                            |  3287263.00 | Hindi            |
| Aizuwakamatsu                     |     119287 | Japan                            |   377829.00 | Japanese         |
| Ajman                             |     114395 | United Arab Emirates             |    83600.00 | Arabic           |
| Ajmer                             |     402700 | India                            |  3287263.00 | Hindi            |
| Akashi                            |     292253 | Japan                            |   377829.00 | Japanese         |
| Akishima                          |     106914 | Japan                            |   377829.00 | Japanese         |
| Akita                             |     314440 | Japan                            |   377829.00 | Japanese         |
| Akola                             |     328034 | India                            |  3287263.00 | Hindi            |
| Akron                             |     217074 | United States                    |  9363520.00 | English          |
| Aksaray                           |     102681 | Turkey                           |   774815.00 | Turkish          |
| al-Amara                          |     208797 | Iraq                             |   438317.00 | Arabic           |
| al-Arish                          |     100447 | Egypt                            |  1001449.00 | Arabic           |
| al-Ayn                            |     225970 | United Arab Emirates             |    83600.00 | Arabic           |
| al-Dammam                         |     482300 | Saudi Arabia                     |  2149690.00 | Arabic           |
| al-Diwaniya                       |     196519 | Iraq                             |   438317.00 | Arabic           |
| al-Faiyum                         |     260964 | Egypt                            |  1001449.00 | Arabic           |
| al-Fashir                         |     141884 | Sudan                            |  2505813.00 | Arabic           |
| al-Hawamidiya                     |      91700 | Egypt                            |  1001449.00 | Arabic           |
| al-Hawiya                         |      93900 | Saudi Arabia                     |  2149690.00 | Arabic           |
| al-Hilla                          |     268834 | Iraq                             |   438317.00 | Arabic           |
| al-Hufuf                          |     225800 | Saudi Arabia                     |  2149690.00 | Arabic           |
| al-Kharj                          |     152100 | Saudi Arabia                     |  2149690.00 | Arabic           |
| al-Khubar                         |     141700 | Saudi Arabia                     |  2149690.00 | Arabic           |
| al-Kut                            |     183183 | Iraq                             |   438317.00 | Arabic           |
| al-Mahallat al-Kubra              |     395402 | Egypt                            |  1001449.00 | Arabic           |
| al-Manama                         |     148000 | Bahrain                          |      694.00 | Arabic           |
| al-Mansura                        |     369621 | Egypt                            |  1001449.00 | Arabic           |
| al-Minya                          |     201360 | Egypt                            |  1001449.00 | Arabic           |
+-----------------------------------+------------+----------------------------------+-------------+------------------+
4283 rows in set (0.01 sec)

---11. Obtén una lista con los siguientes campos: Ciudad, población, país, superficie, idioma  oficial. Agrupada por países.
select distinct(city.name),city.population,country.name,country.surfacearea,countrylanguage.language from city,country,countrylanguage where city.countrycode=country.code and country.code=countrylanguage.countrycode and countrylanguage.isofficial like "T" group by country.name;
+-----------------------------------+------------+----------------------------------+-------------+------------------+
| name                              | population | name                             | surfacearea | language         |
+-----------------------------------+------------+----------------------------------+-------------+------------------+
| Oranjestad                        |      29034 | Aruba                            |      193.00 | Dutch            |
| Kabul                             |    1780000 | Afghanistan                      |   652090.00 | Dari             |
| South Hill                        |        961 | Anguilla                         |       96.00 | English          |
| Tirana                            |     270000 | Albania                          |    28748.00 | Albaniana        |
| Andorra la Vella                  |      21189 | Andorra                          |      468.00 | Catalan          |
| Willemstad                        |       2345 | Netherlands Antilles             |      800.00 | Dutch            |
| Dubai                             |     669181 | United Arab Emirates             |    83600.00 | Arabic           |
| Buenos Aires                      |    2982146 | Argentina                        |  2780400.00 | Spanish          |
| Yerevan                           |    1248700 | Armenia                          |    29800.00 | Armenian         |
| Tafuna                            |       5200 | American Samoa                   |      199.00 | English          |
| Saint John´s                      |      24000 | Antigua and Barbuda              |      442.00 | English          |
| Sydney                            |    3276207 | Australia                        |  7741220.00 | English          |
| Wien                              |    1608144 | Austria                          |    83859.00 | German           |
| Baku                              |    1787800 | Azerbaijan                       |    86600.00 | Azerbaijani      |
| Bujumbura                         |     300000 | Burundi                          |    27834.00 | French           |
| Antwerpen                         |     446525 | Belgium                          |    30518.00 | Dutch            |
| Dhaka                             |    3612850 | Bangladesh                       |   143998.00 | Bengali          |
| Sofija                            |    1122302 | Bulgaria                         |   110994.00 | Bulgariana       |
| al-Manama                         |     148000 | Bahrain                          |      694.00 | Arabic           |
| Sarajevo                          |     360000 | Bosnia and Herzegovina           |    51197.00 | Serbo-Croatian   |
| Minsk                             |    1674000 | Belarus                          |   207600.00 | Belorussian      |
| Belize City                       |      55810 | Belize                           |    22696.00 | English          |
| Saint George                      |       1800 | Bermuda                          |       53.00 | English          |
| Santa Cruz de la Sierra           |     935361 | Bolivia                          |  1098581.00 | Aimará           |
| São Paulo                         |    9968485 | Brazil                           |  8547403.00 | Portuguese       |
| Bridgetown                        |       6070 | Barbados                         |      430.00 | English          |
| Bandar Seri Begawan               |      21484 | Brunei                           |     5765.00 | Malay            |
| Thimphu                           |      22000 | Bhutan                           |    47000.00 | Dzongkha         |
| Montréal                          |    1016376 | Canada                           |  9970610.00 | English          |
| Bantam                            |        503 | Cocos (Keeling) Islands          |       14.00 | English          |
| Zürich                            |     336800 | Switzerland                      |    41284.00 | French           |
| Santiago de Chile                 |    4703954 | Chile                            |   756626.00 | Spanish          |
| Shanghai                          |    9696300 | China                            |  9572900.00 | Chinese          |
| Avarua                            |      11900 | Cook Islands                     |      236.00 | Maori            |
| Santafé de Bogotá                 |    6260862 | Colombia                         |  1138914.00 | Spanish          |
| Moroni                            |      36000 | Comoros                          |     1862.00 | Comorian         |
| Praia                             |      94800 | Cape Verde                       |     4033.00 | Portuguese       |
| San José                          |     339131 | Costa Rica                       |    51100.00 | Spanish          |
| La Habana                         |    2256000 | Cuba                             |   110861.00 | Spanish          |
| Flying Fish Cove                  |        700 | Christmas Island                 |      135.00 | English          |
| George Town                       |      19600 | Cayman Islands                   |      264.00 | English          |
| Nicosia                           |     195000 | Cyprus                           |     9251.00 | Greek            |
| Praha                             |    1181126 | Czech Republic                   |    78866.00 | Czech            |
| Berlin                            |    3386667 | Germany                          |   357022.00 | German           |
| Djibouti                          |     383000 | Djibouti                         |    23200.00 | Arabic           |
| København                         |     495699 | Denmark                          |    43094.00 | Danish           |
| Santo Domingo de Guzmán           |    1609966 | Dominican Republic               |    48511.00 | Spanish          |
| Alger                             |    2168000 | Algeria                          |  2381741.00 | Arabic           |
| Guayaquil                         |    2070040 | Ecuador                          |   283561.00 | Spanish          |
| Cairo                             |    6789479 | Egypt                            |  1001449.00 | Arabic           |
| Asmara                            |     431000 | Eritrea                          |   117600.00 | Tigrinja         |
| El-Aaiún                          |     169000 | Western Sahara                   |   266000.00 | Arabic           |
| Madrid                            |    2879052 | Spain                            |   505992.00 | Spanish          |
| Tallinn                           |     403981 | Estonia                          |    45227.00 | Estonian         |
| Helsinki [Helsingfors]            |     555474 | Finland                          |   338145.00 | Finnish          |
| Suva                              |      77366 | Fiji Islands                     |    18274.00 | Fijian           |
| Stanley                           |       1636 | Falkland Islands                 |    12173.00 | English          |
| Paris                             |    2125246 | France                           |   551500.00 | French           |
| Tórshavn                          |      14542 | Faroe Islands                    |     1399.00 | Danish           |
| London                            |    7285000 | United Kingdom                   |   242900.00 | English          |
| Tbilisi                           |    1235200 | Georgia                          |    69700.00 | Georgiana        |
| Gibraltar                         |      27025 | Gibraltar                        |        6.00 | English          |
| Les Abymes                        |      62947 | Guadeloupe                       |     1705.00 | French           |
| Bissau                            |     241000 | Guinea-Bissau                    |    36125.00 | Portuguese       |
| Athenai                           |     772072 | Greece                           |   131626.00 | Greek            |
| Nuuk                              |      13445 | Greenland                        |  2166090.00 | Danish           |
| Ciudad de Guatemala               |     823301 | Guatemala                        |   108889.00 | Spanish          |
| Tamuning                          |       9500 | Guam                             |      549.00 | Chamorro         |
+-----------------------------------+------------+----------------------------------+-------------+------------------+
189 rows in set (0.01 sec)

---12. Obtén el nombre de la capital de todos los países.
select city.name from city,country where city.id=country.capital;
+-----------------------------------+
| name                              |
+-----------------------------------+
| Oranjestad                        |
| Kabul                             |
| Luanda                            |
| The Valley                        |
| Tirana                            |
| Andorra la Vella                  |
| Willemstad                        |
| Abu Dhabi                         |
| Buenos Aires                      |
| Yerevan                           |
| Fagatogo                          |
| Saint John´s                      |
| Canberra                          |
| Wien                              |
| Baku                              |
| Bujumbura                         |
| Bruxelles [Brussel]               |
| Porto-Novo                        |
| Ouagadougou                       |
| Dhaka                             |
| Sofija                            |
| al-Manama                         |
| Nassau                            |
| Sarajevo                          |
| Minsk                             |
| Belmopan                          |
| Hamilton                          |
| La Paz                            |
| Brasília                          |
| Bridgetown                        |
| Bandar Seri Begawan               |
| Thimphu                           |
| Gaborone                          |
| Bangui                            |
| Ottawa                            |
| West Island                       |
| Bern                              |
| Santiago de Chile                 |
| Peking                            |
| Yamoussoukro                      |
| Yaoundé                           |
| Kinshasa                          |
| Brazzaville                       |
| Avarua                            |
| Santafé de Bogotá                 |
| Moroni                            |
| Praia                             |
| San José                          |
| La Habana                         |
| Flying Fish Cove                  |
| George Town                       |
| Nicosia                           |
| Praha                             |
| Berlin                            |
| Djibouti                          |
| Roseau                            |
| København                         |
| Santo Domingo de Guzmán           |
| Alger                             |
| Quito                             |
| Cairo                             |
| Asmara                            |
| El-Aaiún                          |
| Madrid                            |
| Tallinn                           |
+-----------------------------------+
232 rows in set (0.00 sec)

---13. Di el nombre de la capital del país más grande.
select city.name from city,country where city.id=country.capital and surfacearea=(select max(surfacearea) from country);
+--------+
| name   |
+--------+
| Moscow |
+--------+
1 row in set (0.00 sec)

---14. Di el nombre de la capital del país con más esperanza de vida.
select city.name from city,country where city.id=country.capital and lifeexpectancy=(select max(lifeexpectancy) from country);
+------------------+
| name             |
+------------------+
| Andorra la Vella |
+------------------+
1 row in set (0.00 sec)

---15. Di el nombre de la capital del país con más población.
select city.name from city,country where city.id=country.capital and country.population=(select max(population) from country);
+--------+
| name   |
+--------+
| Peking |
+--------+
1 row in set (0.00 sec)

---16. Lista todos los países con más de 1 millón de habitantes con sus capitales y sus  lenguas no oficiales.
select distinct(country.name),city.name,group_concat(countrylanguage.language) as lenguasnooff from city,country,countrylanguage where city.id=country.capital and country.population > 1000000 and country.code=countrylanguage.countrycode and countrylanguage.isofficial like 'F'  group by countrylanguage.countrycode;
+---------------------------------------+-------------------------+--------------------------------------------------------------------------------------------+
| name                                  | name                    | lenguasnooff                                                                               |
+---------------------------------------+-------------------------+--------------------------------------------------------------------------------------------+
| Afghanistan                           | Kabul                   | Balochi,Turkmenian,Uzbek                                                                   |
| Albania                               | Tirana                  | Greek,Macedonian                                                                           |
| Algeria                               | Alger                   | Berberi                                                                                    |
| Angola                                | Luanda                  | Ambo,Chokwe,Kongo,Luchazi,Luimbe-nganguela,Luvale,Mbundu,Nyaneka-nkhumbi,Ovimbundu         |
| Argentina                             | Buenos Aires            | Indian Languages,Italian                                                                   |
| Armenia                               | Yerevan                 | Azerbaijani                                                                                |
| Australia                             | Canberra                | Arabic,Canton Chinese,German,Greek,Italian,Serbo-Croatian,Vietnamese                       |
| Austria                               | Wien                    | Czech,Hungarian,Polish,Romanian,Serbo-Croatian,Slovene,Turkish                             |
| Azerbaijan                            | Baku                    | Armenian,Lezgian,Russian                                                                   |
| Bangladesh                            | Dhaka                   | Chakma,Garo,Khasi,Marma,Santhali,Tripuri                                                   |
| Belarus                               | Minsk                   | Polish,Ukrainian                                                                           |
| Belgium                               | Bruxelles [Brussel]     | Arabic,Italian,Turkish                                                                     |
| Benin                                 | Porto-Novo              | Adja,Aizo,Bariba,Fon,Ful,Joruba,Somba                                                      |
| Bhutan                                | Thimphu                 | Asami,Nepali                                                                               |
| Bolivia                               | La Paz                  | Guaraní                                                                                    |
| Botswana                              | Gaborone                | Khoekhoe,Ndebele,San,Shona,Tswana                                                          |
| Brazil                                | Brasília                | German,Indian Languages,Italian,Japanese                                                   |
| Bulgaria                              | Sofija                  | Macedonian,Romani,Turkish                                                                  |
| Burkina Faso                          | Ouagadougou             | Busansi,Dagara,Dyula,Ful,Gurma,Mossi                                                       |
| Burundi                               | Bujumbura               | Swahili                                                                                    |
| Cambodia                              | Phnom Penh              | Chinese,T?am,Vietnamese                                                                    |
| Cameroon                              | Yaoundé                 | Bamileke-bamum,Duala,Fang,Ful,Maka,Mandara,Masana,Tikar                                    |
| Canada                                | Ottawa                  | Chinese,Dutch,Eskimo Languages,German,Italian,Polish,Portuguese,Punjabi,Spanish,Ukrainian  |
| Central African Republic              | Bangui                  | Banda,Gbaya,Mandjia,Mbum,Ngbaka,Sara                                                       |
| Chad                                  | N´Djaména               | Gorane,Hadjarai,Kanem-bornu,Mayo-kebbi,Ouaddai,Sara,Tandjile                               |
| Chile                                 | Santiago de Chile       | Aimará,Araucan,Rapa nui                                                                    |
| China                                 | Peking                  | Dong,Hui,Mant?u,Miao,Mongolian,Puyi,Tibetan,Tujia,Uighur,Yi,Zhuang                         |
| Colombia                              | Santafé de Bogotá       | Arawakan,Caribbean,Chibcha,Creole English                                                  |
| Congo                                 | Brazzaville             | Kongo,Mbete,Mboshi,Punu,Sango,Teke                                                         |
| Congo, The Democratic Republic of the | Kinshasa                | Boa,Chokwe,Kongo,Luba,Mongo,Ngala and Bangi,Rundi,Rwanda,Teke,Zande                        |
| Costa Rica                            | San José                | Chibcha,Chinese,Creole English                                                             |
| Côte d?Ivoire                         | Yamoussoukro            | Akan,Gur,Kru,Malinke,[South]Mande                                                          |
| Croatia                               | Zagreb                  | Slovene                                                                                    |
| Czech Republic                        | Praha                   | German,Hungarian,Moravian,Polish,Romani,Silesiana,Slovak                                   |
| Denmark                               | København               | Arabic,English,German,Norwegian,Swedish,Turkish                                            |
| Dominican Republic                    | Santo Domingo de Guzmán | Creole French                                                                              |
| Ecuador                               | Quito                   | Ket?ua                                                                                     |
| Egypt                                 | Cairo                   | Sinaberberi                                                                                |
| El Salvador                           | San Salvador            | Nahua                                                                                      |
| Eritrea                               | Asmara                  | Afar,Bilin,Hadareb,Saho,Tigre                                                              |
| Estonia                               | Tallinn                 | Belorussian,Finnish,Russian,Ukrainian                                                      |
| Ethiopia                              | Addis Abeba             | Amhara,Gurage,Oromo,Sidamo,Somali,Tigrinja,Walaita                                         |
| Finland                               | Helsinki [Helsingfors]  | Estonian,Russian,Saame                                                                     |
| France                                | Paris                   | Arabic,Italian,Portuguese,Spanish,Turkish                                                  |
| Gabon                                 | Libreville              | Fang,Mbete,Mpongwe,Punu-sira-nzebi                                                         |
| Gambia                                | Banjul                  | Diola,Ful,Malinke,Soninke,Wolof                                                            |
| Georgia                               | Tbilisi                 | Abhyasi,Armenian,Azerbaijani,Osseetti,Russian                                              |
| Germany                               | Berlin                  | Greek,Italian,Polish,Southern Slavic Languages,Turkish                                     |
| Ghana                                 | Accra                   | Akan,Ewe,Ga-adangme,Gurma,Joruba,Mossi                                                     |
| Greece                                | Athenai                 | Turkish                                                                                    |
| Guatemala                             | Ciudad de Guatemala     | Cakchiquel,Kekchí,Mam,Quiché                                                               |
| Guinea                                | Conakry                 | Ful,Kissi,Kpelle,Loma,Malinke,Susu,Yalunka                                                 |
| Guinea-Bissau                         | Bissau                  | Balante,Crioulo,Ful,Malinke,Mandyako                                                       |
| Haiti                                 | Port-au-Prince          | Haiti Creole                                                                               |
| Honduras                              | Tegucigalpa             | Creole English,Garifuna,Miskito                                                            |
| Hong Kong                             | Victoria                | Canton Chinese,Chiu chau,Fukien,Hakka                                                      |
| Hungary                               | Budapest                | German,Romani,Romanian,Serbo-Croatian,Slovak                                               |
| India                                 | New Delhi               | Asami,Bengali,Gujarati,Kannada,Malajalam,Marathi,Orija,Punjabi,Tamil,Telugu,Urdu           |
| Indonesia                             | Jakarta                 | Bali,Banja,Batakki,Bugi,Javanese,Madura,Minangkabau,Sunda                                  |
| Iran                                  | Teheran                 | Arabic,Azerbaijani,Bakhtyari,Balochi,Gilaki,Kurdish,Luri,Mazandarani,Turkmenian            |
| Iraq                                  | Baghdad                 | Assyrian,Azerbaijani,Kurdish,Persian                                                       |
| Israel                                | Jerusalem               | Russian                                                                                    |
| Italy                                 | Roma                    | Albaniana,French,Friuli,German,Romani,Sardinian,Slovene                                    |
| Jamaica                               | Kingston                | Creole English,Hindi                                                                       |
| Japan                                 | Tokyo                   | Ainu,Chinese,English,Korean,Philippene Languages                                           |
| Jordan                                | Amman                   | Armenian,Circassian                                                                        |
| Kazakstan                             | Astana                  | German,Russian,Tatar,Ukrainian,Uzbek                                                       |
| Kenya                                 | Nairobi                 | Gusii,Kalenjin,Kamba,Kikuyu,Luhya,Luo,Masai,Meru,Nyika,Turkana                             |
| Kuwait                                | Kuwait                  | English                                                                                    |
| Kyrgyzstan                            | Bishkek                 | Kazakh,Tadzhik,Tatar,Ukrainian,Uzbek                                                       |
| Laos                                  | Vientiane               | Lao-Soung,Mon-khmer,Thai                                                                   |
| Latvia                                | Riga                    | Belorussian,Lithuanian,Polish,Russian,Ukrainian                                            |
| Lebanon                               | Beirut                  | Armenian,French                                                                            |
| Spain                                 | Madrid                  | Basque,Catalan,Galecian                                                                    |
| Sri Lanka                             | Colombo                 | Mixed Languages                                                                            |
| Sudan                                 | Khartum                 | Bari,Beja,Chilluk,Dinka,Fur,Lotuko,Nubian Languages,Nuer,Zande                             |
| Swaziland                             | Mbabane                 | Zulu                                                                                       |
| Sweden                                | Stockholm               | Arabic,Finnish,Norwegian,Southern Slavic Languages,Spanish                                 |
| Syria                                 | Damascus                | Kurdish                                                                                    |
| Taiwan                                | Taipei                  | Ami,Atayal,Hakka,Min,Paiwan                                                                |
| Tajikistan                            | Dushanbe                | Russian,Uzbek                                                                              |
| Tanzania                              | Dodoma                  | Chaga and Pare,Gogo,Ha,Haya,Hehet,Luguru,Makonde,Nyakusa,Nyamwesi,Shambala                 |
| Thailand                              | Bangkok                 | Chinese,Khmer,Kuy,Lao,Malay                                                                |
| Togo                                  | Lomé                    | Ane,Gurma,Kotokoli,Moba,Naudemba,Watyi                                                     |
| Trinidad and Tobago                   | Port-of-Spain           | Creole English,English,Hindi                                                               |
| Tunisia                               | Tunis                   | Arabic-French,Arabic-French-English                                                        |
| Turkey                                | Ankara                  | Arabic,Kurdish                                                                             |
| Turkmenistan                          | Ashgabat                | Kazakh,Russian,Uzbek                                                                       |
| Uganda                                | Kampala                 | Acholi,Ganda,Gisu,Kiga,Lango,Lugbara,Nkole,Rwanda,Soga,Teso                                |
| Ukraine                               | Kyiv                    | Belorussian,Bulgariana,Hungarian,Polish,Romanian,Russian                                   |
| United Arab Emirates                  | Abu Dhabi               | Hindi                                                                                      |
| United Kingdom                        | London                  | Gaeli,Kymri                                                                                |
| United States                         | Washington              | Chinese,French,German,Italian,Japanese,Korean,Polish,Portuguese,Spanish,Tagalog,Vietnamese |
| Uzbekistan                            | Toskent                 | Karakalpak,Kazakh,Russian,Tadzhik,Tatar                                                    |
| Venezuela                             | Caracas                 | Goajiro,Warrau                                                                             |
| Vietnam                               | Hanoi                   | Chinese,Khmer,Man,Miao,Muong,Nung,Thai,Tho                                                 |
| Yemen                                 | Sanaa                   | Soqutri                                                                                    |
| Yugoslavia                            | Beograd                 | Albaniana,Hungarian,Macedonian,Romani,Slovak                                               |
| Zambia                                | Lusaka                  | Bemba,Chewa,Lozi,Nsenga,Nyanja,Tongan                                                      |
| Zimbabwe                              | Harare                  | Ndebele,Nyanja,Shona                                                                       |
+---------------------------------------+-------------------------+--------------------------------------------------------------------------------------------+
142 rows in set (0.00 sec)

---17. Cuantos idiomas tiene cada país.
select country.name,count(countrylanguage.language) from country,countrylanguage where country.code=countrylanguage.countrycode group by country.name;
+---------------------------------------+---------------------------------+
| name                                  | count(countrylanguage.language) |
+---------------------------------------+---------------------------------+
| Aruba                                 |                               4 |
| Afghanistan                           |                               5 |
| Angola                                |                               9 |
| Anguilla                              |                               1 |
| Albania                               |                               3 |
| Andorra                               |                               4 |
| Netherlands Antilles                  |                               3 |
| United Arab Emirates                  |                               2 |
| Argentina                             |                               3 |
| Armenia                               |                               2 |
| American Samoa                        |                               3 |
| Antigua and Barbuda                   |                               2 |
| Australia                             |                               8 |
| Austria                               |                               8 |
| Azerbaijan                            |                               4 |
| Burundi                               |                               3 |
| Belgium                               |                               6 |
| Benin                                 |                               7 |
| Burkina Faso                          |                               6 |
| Bangladesh                            |                               7 |
| Bulgaria                              |                               4 |
| Bahrain                               |                               2 |
| Bahamas                               |                               2 |
| Bosnia and Herzegovina                |                               1 |
| Belarus                               |                               4 |
| Belize                                |                               4 |
| Bermuda                               |                               1 |
| Bolivia                               |                               4 |
| Brazil                                |                               5 |
| Barbados                              |                               2 |
| Brunei                                |                               4 |
| Bhutan                                |                               3 |
| Botswana                              |                               5 |
| Central African Republic              |                               6 |
| Canada                                |                              12 |
| Cocos (Keeling) Islands               |                               2 |
| Switzerland                           |                               4 |
| Chile                                 |                               4 |
| China                                 |                              12 |
| Côte d?Ivoire                         |                               5 |
| Cameroon                              |                               8 |
| Congo, The Democratic Republic of the |                              10 |
| Congo                                 |                               6 |
| Cook Islands                          |                               2 |
| Colombia                              |                               5 |
| Comoros                               |                               5 |
| Cape Verde                            |                               2 |
| Costa Rica                            |                               4 |
| Cuba                                  |                               1 |
| Christmas Island                      |                               2 |
| Cayman Islands                        |                               1 |
| Cyprus                                |                               2 |
| Czech Republic                        |                               8 |
| Germany                               |                               6 |
| Djibouti                              |                               3 |
| Dominica                              |                               2 |
| Denmark                               |                               7 |
| Dominican Republic                    |                               2 |
| Algeria                               |                               2 |
| Ecuador                               |                               2 |
| Egypt                                 |                               2 |
| Eritrea                               |                               6 |
| Western Sahara                        |                               1 |
| Spain                                 |                               4 |
+---------------------------------------+---------------------------------+
233 rows in set (0.00 sec)

---18. ¿Tenemos algún país con dos lenguas oficiales? (hacer con having)
select country.name,count(countrylanguage.language) from country,countrylanguage where country.code=countrylanguage.countrycode and countrylanguage.isofficial like 'T' group by country.name having count(countrylanguage.language) = 2;
+----------------------+---------------------------------+
| name                 | count(countrylanguage.language) |
+----------------------+---------------------------------+
| Afghanistan          |                               2 |
| Netherlands Antilles |                               2 |
| American Samoa       |                               2 |
| Burundi              |                               2 |
| Belarus              |                               2 |
| Canada               |                               2 |
| Cyprus               |                               2 |
| Finland              |                               2 |
| Faroe Islands        |                               2 |
| Greenland            |                               2 |
| Guam                 |                               2 |
| Ireland              |                               2 |
| Israel               |                               2 |
| Kyrgyzstan           |                               2 |
| Sri Lanka            |                               2 |
| Lesotho              |                               2 |
| Madagascar           |                               2 |
| Marshall Islands     |                               2 |
| Malta                |                               2 |
| Nauru                |                               2 |
| Palau                |                               2 |
| Paraguay             |                               2 |
| Romania              |                               2 |
| Rwanda               |                               2 |
| Somalia              |                               2 |
| Seychelles           |                               2 |
| Togo                 |                               2 |
| Tonga                |                               2 |
| Tuvalu               |                               2 |
| Samoa                |                               2 |
+----------------------+---------------------------------+
30 rows in set (0.01 sec)

---19. Saca el jefe de gobierno de un país cuya capital es Madrid. 
select headofstate from country,city where country.capital=city.id and city.name like 'madrid';
+---------------+
| headofstate   |
+---------------+
| Juan Carlos I |
+---------------+
1 row in set (0.00 sec)


Creación de Vistas:
---1. Crea una vista con la media de habitantes
create view vista1 as select avg(population) from country;

Query OK, 0 rows affected (0.03 sec)

select * from vista1;
+-----------------+
| avg(population) |
+-----------------+
|   25434098.1172 |
+-----------------+
1 row in set (0.01 sec)
---2. Crea una vista con la ciudad que tenga exactamente la media de habitantes
create view vista2 as select name from city where population = (select avg(population) from city);

Query OK, 0 rows affected (0.01 sec)

select * from vista2;

Empty set (0.00 sec)

---3. Crea una vista con todas las provincias (Distritos) de España
create view vista3 as select distinct(district) from city where countrycode like 'ESP';

Query OK, 0 rows affected (0.01 sec)

select * from vista3;
+--------------------+
| district           |
+--------------------+
| Madrid             |
| Katalonia          |
| Valencia           |
| Andalusia          |
| Aragonia           |
| Baskimaa           |
| Canary Islands     |
| Murcia             |
| Balears            |
| Castilla and León  |
| Galicia            |
| Asturia            |
| Cantabria          |
| Navarra            |
| Kastilia-La Mancha |
| Extremadura        |
| La Rioja           |
+--------------------+
17 rows in set (0.00 sec)

---4. Crea una vista con todos los países con sus capitales y la lengua oficial
create view vista4 as select country.name as 'Pais' ,city.name as 'Capital',group_concat(countrylanguage.language) as 'lenguas_oficiales' from city,country,countrylanguage where city.id=country.capital  and country.code=countrylanguage.countrycode and countrylanguage.isofficial like 'T'  group by countrylanguage.countrycode;

Query OK, 0 rows affected (0.01 sec)

select * from vista4;
+----------------------------------+-----------------------------------+-------------------------------+
| Pais                             | Capital                           | lenguas_oficiales             |
+----------------------------------+-----------------------------------+-------------------------------+
| Aruba                            | Oranjestad                        | Dutch                         |
| Afghanistan                      | Kabul                             | Dari,Pashto                   |
| Anguilla                         | The Valley                        | English                       |
| Albania                          | Tirana                            | Albaniana                     |
| Andorra                          | Andorra la Vella                  | Catalan                       |
| Netherlands Antilles             | Willemstad                        | Dutch,Papiamento              |
| United Arab Emirates             | Abu Dhabi                         | Arabic                        |
| Argentina                        | Buenos Aires                      | Spanish                       |
| Armenia                          | Yerevan                           | Armenian                      |
| American Samoa                   | Fagatogo                          | English,Samoan                |
| Antigua and Barbuda              | Saint John´s                      | English                       |
| Australia                        | Canberra                          | English                       |
| Austria                          | Wien                              | German                        |
| Azerbaijan                       | Baku                              | Azerbaijani                   |
| Burundi                          | Bujumbura                         | French,Kirundi                |
| Belgium                          | Bruxelles [Brussel]               | Dutch,French,German           |
| Bangladesh                       | Dhaka                             | Bengali                       |
| Bulgaria                         | Sofija                            | Bulgariana                    |
| Bahrain                          | al-Manama                         | Arabic                        |
| Bosnia and Herzegovina           | Sarajevo                          | Serbo-Croatian                |
| Belarus                          | Minsk                             | Belorussian,Russian           |
| Belize                           | Belmopan                          | English                       |
| Bermuda                          | Hamilton                          | English                       |
| Bolivia                          | La Paz                            | Aimará,Ket?ua,Spanish         |
| Brazil                           | Brasília                          | Portuguese                    |
| Barbados                         | Bridgetown                        | English                       |
| Brunei                           | Bandar Seri Begawan               | Malay                         |
| Bhutan                           | Thimphu                           | Dzongkha                      |
| Canada                           | Ottawa                            | English,French                |
| Cocos (Keeling) Islands          | West Island                       | English                       |
| Switzerland                      | Bern                              | French,German,Italian,Romansh |
| Chile                            | Santiago de Chile                 | Spanish                       |
| China                            | Peking                            | Chinese                       |
| Cook Islands                     | Avarua                            | Maori                         |
| Colombia                         | Santafé de Bogotá                 | Spanish                       |
| Comoros                          | Moroni                            | Comorian                      |
| Cape Verde                       | Praia                             | Portuguese                    |
| Costa Rica                       | San José                          | Spanish                       |
| Cuba                             | La Habana                         | Spanish                       |
| Christmas Island                 | Flying Fish Cove                  | English                       |
| South Africa                     | Pretoria                          | Afrikaans,English,Xhosa,Zulu  |
| Zimbabwe                         | Harare                            | English                       |
+----------------------------------+-----------------------------------+-------------------------------+
189 rows in set (0.00 sec)

---5. Crea una vista con los países con más de 1 millón de habitantes con sus capitales y la  lengua oficial
create view vista5 as select distinct(country.name) as 'Pais',city.name as 'Capital',group_concat(countrylanguage.language) as lenguas_oficiales from city,country,countrylanguage where city.id=country.capital and country.population > 1000000 and country.code=countrylanguage.countrycode and countrylanguage.isofficial like 'T'  group by countrylanguage.countrycode;

Query OK, 0 rows affected (0.01 sec)

select * from vista5;
+------------------------+-------------------------+-------------------------------+
| Pais                   | Capital                 | lenguas_oficiales             |
+------------------------+-------------------------+-------------------------------+
| Afghanistan            | Kabul                   | Dari,Pashto                   |
| Albania                | Tirana                  | Albaniana                     |
| Algeria                | Alger                   | Arabic                        |
| Argentina              | Buenos Aires            | Spanish                       |
| Armenia                | Yerevan                 | Armenian                      |
| Australia              | Canberra                | English                       |
| Austria                | Wien                    | German                        |
| Azerbaijan             | Baku                    | Azerbaijani                   |
| Bangladesh             | Dhaka                   | Bengali                       |
| Belarus                | Minsk                   | Belorussian,Russian           |
| Belgium                | Bruxelles [Brussel]     | Dutch,French,German           |
| Bhutan                 | Thimphu                 | Dzongkha                      |
| Bolivia                | La Paz                  | Aimará,Ket?ua,Spanish         |
| Bosnia and Herzegovina | Sarajevo                | Serbo-Croatian                |
| Brazil                 | Brasília                | Portuguese                    |
| Bulgaria               | Sofija                  | Bulgariana                    |
| Burundi                | Bujumbura               | French,Kirundi                |
| Cambodia               | Phnom Penh              | Khmer                         |
| Canada                 | Ottawa                  | English,French                |
| Chad                   | N´Djaména               | Arabic                        |
| Chile                  | Santiago de Chile       | Spanish                       |
| China                  | Peking                  | Chinese                       |
| Colombia               | Santafé de Bogotá       | Spanish                       |
| Costa Rica             | San José                | Spanish                       |
| Croatia                | Zagreb                  | Serbo-Croatian                |
| Cuba                   | La Habana               | Spanish                       |
| Czech Republic         | Praha                   | Czech                         |
| Denmark                | København               | Danish                        |
| Dominican Republic     | Santo Domingo de Guzmán | Spanish                       |
| Ecuador                | Quito                   | Spanish                       |
| Egypt                  | Cairo                   | Arabic                        |
| El Salvador            | San Salvador            | Spanish                       |
| Eritrea                | Asmara                  | Tigrinja                      |
| Estonia                | Tallinn                 | Estonian                      |
| Finland                | Helsinki [Helsingfors]  | Finnish,Swedish               |
| France                 | Paris                   | French                        |
| Georgia                | Tbilisi                 | Georgiana                     |
| Germany                | Berlin                  | German                        |
| Greece                 | Athenai                 | Greek                         |
| Guatemala              | Ciudad de Guatemala     | Spanish                       |
| Guinea-Bissau          | Bissau                  | Portuguese                    |
| Haiti                  | Port-au-Prince          | French                        |
| Honduras               | Tegucigalpa             | Spanish                       |
| Hong Kong              | Victoria                | English                       |
| Hungary                | Budapest                | Hungarian                     |
| India                  | New Delhi               | Hindi                         |
| Indonesia              | Jakarta                 | Malay                         |
| Iran                   | Teheran                 | Persian                       |
| Iraq                   | Baghdad                 | Arabic                        |
| Ireland                | Dublin                  | English,Irish                 |
| Israel                 | Jerusalem               | Arabic,Hebrew                 |
| Italy                  | Roma                    | Italian                       |
| Japan                  | Tokyo                   | Japanese                      |
| Jordan                 | Amman                   | Arabic                        |
| Kazakstan              | Astana                  | Kazakh                        |
| Kuwait                 | Kuwait                  | Arabic                        |
| Kyrgyzstan             | Bishkek                 | Kirgiz,Russian                |
| Laos                   | Vientiane               | Lao                           |
| Latvia                 | Riga                    | Latvian                       |
| Lebanon                | Beirut                  | Arabic                        |
| Lesotho                | Maseru                  | English,Sotho                 |
| Libyan Arab Jamahiriya | Tripoli                 | Arabic                        |
| Lithuania              | Vilnius                 | Lithuanian                    |
| Yemen                  | Sanaa                   | Arabic                        |
| Yugoslavia             | Beograd                 | Serbo-Croatian                |
| Zimbabwe               | Harare                  | English                       |
+------------------------+-------------------------+-------------------------------+
124 rows in set (0.00 sec)