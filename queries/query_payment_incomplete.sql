/*
This select shows the list of incomplete payment

  id_reservation | date_reservation | en_ligne | numero_place | id_client | id_voyage | id_receptionniste
----------------+------------------+----------+--------------+-----------+-----------+-------------------
              4 | 2022-05-24       | t        |            4 |       886 |       267 |                28
              6 | 2022-06-15       | f        |            3 |       951 |        11 |                16
              8 | 2022-04-21       | f        |           13 |       504 |       208 |                 6
             10 | 2022-03-21       | f        |           12 |       883 |       586 |                25
             12 | 2022-04-20       | f        |           11 |       246 |       955 |                17
             13 | 2022-05-05       | t        |            6 |       564 |         9 |                39
             14 | 2022-06-12       | t        |           13 |        51 |       917 |                27
             15 | 2022-03-29       | t        |           10 |       223 |       845 |                21
             18 | 2022-01-25       | t        |           15 |       248 |       807 |                26
             24 | 2022-03-15       | t        |            4 |        37 |       434 |                 5
             25 | 2022-06-26       | f        |            8 |       229 |       827 |                24
             26 | 2022-01-05       | t        |           16 |       271 |       297 |                18
             27 | 2022-04-24       | t        |            4 |       939 |        87 |                24
             28 | 2021-12-20       | f        |            9 |       972 |       778 |                40
             29 | 2022-02-02       | t        |           16 |       555 |        14 |                10
             31 | 2022-06-06       | f        |            5 |       478 |         5 |                 9
             33 | 2022-05-31       | f        |            3 |       965 |       399 |                 1
             35 | 2022-01-10       | f        |            4 |       224 |       637 |                17
             41 | 2022-06-13       | t        |            9 |       801 |       731 |                 8
             48 | 2022-06-22       | t        |           12 |       582 |       888 |                16
             49 | 2022-07-08       | f        |           10 |       493 |        32 |                10


*/

select 
		reservation.id_reservation, date_reservation, en_ligne, numero_place, id_client, id_voyage, id_receptionniste
from reservation
inner join
		(select id_reservation
		from payement
		where payement_complet=false) 
		as table_reservation
on table_reservation.id_reservation = reservation.id_reservation;