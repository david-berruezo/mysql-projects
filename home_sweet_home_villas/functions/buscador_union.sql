CREATE DEFINER=`root`@`localhost` FUNCTION `buscador_union`() RETURNS int(10)
begin
  declare total int(10);
      SELECT a.id , a.id_avantio FROM avantio_accomodations a
      LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity
      LEFT JOIN avantio_rates as r on r.accommodation_id = a.id
      LEFT JOIN avantio_accomodations_extras as aae on aae.avantio_accomodations = a.id
      LEFT JOIN avantio_accomodations_locations l ON a.id = l.avantio_accomodations
      WHERE a.language = es AND a.status = 'ACTIVED'
     UNION
      SELECT b.id , b.id_avantio FROM hshv_avantio_accomodations b
      LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity
      LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id
      LEFT JOIN hshv_avantio_accomodations_extras as haae on haae.avantio_accomodations = b.id
      LEFT JOIN hshv_avantio_accomodations_locations hl ON b.id = hl.avantio_accomodations
      WHERE b.language = "es" AND b.status = 'ACTIVED'
  return total;
end




