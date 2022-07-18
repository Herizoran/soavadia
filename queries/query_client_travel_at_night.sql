/*
This select shows the list of the clients who travel
at night

 id_client |        nom         |     prenom      | telephone  |       cin
-----------+--------------------+-----------------+------------+-----------------
       737 | SIVITER            | Alizee          | 0334910435 | 952 011 101 108
       886 | GRESER             | Celia           | 0382526197 | 767 113 344 102
        15 | ARLIDGE            | Maeline         | 0348905794 | 721 450 937 107
       951 | SIMONELLI          | Cloe            | 0384339231 | 516 311 345 103
       887 | CAMIDGE            | Yu              | 0332696322 | 359 815 351 101
       504 | HAVERCROFT         | Leane           | 0328966570 | 399 188 828 109
       564 | CLANDILLON         | Clea            | 0323729835 | 282 273 429 101
        51 | GRASSER            | Ines            | 0387493160 | 112 463 817 102
       946 | ROYLANCE           | Mylene          | 0323628121 | 392 376 257 107
       887 | CAMIDGE            | Yu              | 0332696322 | 359 815 351 101
       229 | DRACO              | Maena           | 0332747503 | 198 729 997 103


*/
select 
		client.id_client, nom, prenom, telephone, cin 
from client
inner join 
		(select id_client 
		 from reservation 
		 inner JOIN 
		 		(select id_voyage 
  				 from voyage
  				 where horaire_depart='18:00:00' or
  						horaire_depart='20:00:00'
  				) as t
		 on reservation.id_voyage = t.id_voyage
		 ) as clientid 
on clientid.id_client = client.id_client;