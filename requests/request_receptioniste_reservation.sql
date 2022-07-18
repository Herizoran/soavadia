/*afficher le receptioniste qui a reçu toute les reservation du 2022/04/30*/
select nom_receptionniste from receptioniste inner join reservation on receptionniste.nom_receptionniste=reservation.date_reservation where date_reservation='2022/04/30';

