select * 
from voyage 
where 
	id_trajet=(select id_trajet 
				from trajet 
				where id_ville_depart = (select id_ville 
										from ville 
										where nom_ville = 'Mahajanga')
										);