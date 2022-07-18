/*afficher les numero des voitures qui a fait la maintenance le 2022/04/18*/

select immatriculation from voiture inner join maintenance on voiture.immatriculation=maintenance.date_maintenance where maintenance.date_maintenance='2022/04/18';