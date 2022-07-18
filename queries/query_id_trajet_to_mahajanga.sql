select * 
from trajet 
where 
	id_ville_arrivee = (select id_ville 
						from ville 
						where nom_ville = 'Mahajanga'
						);