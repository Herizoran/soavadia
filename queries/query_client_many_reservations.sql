select 
		client.id_client, nom, prenom, telephone, cin 
from client
inner join 
		(select id_client from reservation group by id_client having count(*) > 19 order by id_client) as many_reservation 
	on many_reservation.id_client = client.id_client;