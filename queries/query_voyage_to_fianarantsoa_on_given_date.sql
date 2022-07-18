/*
This select shows the list of the travel to Fianarantsoa
on '2022-05-28'

id_voyage | date_depart | horaire_depart | depense_regulier | id_incident | id_trajet | id_saison | id_voiture | id_chauffeur
-----------+-------------+----------------+------------------+-------------+-----------+-----------+------------+--------------
      2358 | 2022-05-28  | 20:00:00       |           260000 |           1 |         3 |         1 |          7 |           12
      2609 | 2022-05-28  | 07:00:00       |           190000 |           1 |         3 |         3 |          4 |           15


*/
select * 
from voyage 
where id_trajet=(select id_trajet 
					from trajet 
					where id_ville_arrivee = (select id_ville 
												from ville 
												where nom_ville = 'Fianarantsoa')
				)
and
	date_depart='2022-05-28';