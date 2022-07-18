/*
This select get the id_trajet of the travel to Mahajanga
*/
select * 
from trajet 
where 
	id_ville_arrivee = (select id_ville 
						from ville 
						where nom_ville = 'Mahajanga'
						);