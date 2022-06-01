CREATE DEFINER=`root`@`localhost` PROCEDURE `get_geo_gy_id_acommodation`(language varchar(3) , identificador int(11))
    NO SQL
BEGIN
    select ac.id as identificador, ac.text_title as titulo, country.id as id_country, country.text_title as country_name,
    region.id as id_region, region.text_title as region_name, city.id as id_city, city.text_title as city_name,
    locality.id as id_locality, locality.text_title as locality_name , district.id as id_district , district.text_title as district_name
    from avantio_accomodations as ac
    left join dynamic_geocountry as country on country.id = ac.dynamic_geocountry
    left join dynamic_georegion as region on region.id = ac.dynamic_georegion
    left join dynamic_geocity as city on city.id = ac.dynamic_geocity
    left join dynamic_geolocality as locality on locality.id = ac.dynamic_geolocality
    left join dynamic_geodistrict as district on district.id = ac.dynamic_geodistrict
    where ac.language = language AND ac.id = identificador
    AND country.language = language
    AND region.language = language
    AND city.language = language
    AND locality.language = language;
    #AND district.language = language;
END