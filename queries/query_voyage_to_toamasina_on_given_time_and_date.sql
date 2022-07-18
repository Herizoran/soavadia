/*
This select shows the list of the travel to Toamasina
at '09:00:00'
on '2022-01-01'

 id_voyage | date_depart | horaire_depart | depense_regulier | id_incident | id_trajet | id_saison | id_voiture | id_chauffeur
-----------+-------------+----------------+------------------+-------------+-----------+-----------+------------+--------------
       276 | 2022-01-01  | 09:00:00       |           190000 |           1 |         2 |         3 |         11 |            3
      4640 | 2022-01-01  | 09:00:00       |           190000 |           1 |         2 |         1 |          6 |            7
(2 rows)
*/

select * 
from voyage 
where id_trajet=(select id_trajet 
					from trajet 
					where id_ville_arrivee = (select id_ville 
												from ville 
												where nom_ville = 'Toamasina')
				)
and
	date_depart='2022-01-01'
and
	horaire_depart='09:00:00';