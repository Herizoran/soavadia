/*lister les clients qui fait la reservation en ligne ou non*/
select nom_client,prenom_client,cin_client from client inner join reservation on client.cin_client=reservation.En_ligne where reservation.En_ligne=True;
select nom_client,prenom_client,cin_client from client inner join reservation on client.cin_client=reservation.En_ligne where reservation.En_ligne=False;