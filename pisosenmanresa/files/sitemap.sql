use pisosenm_inmobiliaria_dos;

# sitemap queries
# front end

# dynamic pages
select auto_slug from dynamic_pages order by id asc;

# dynamic_agencias
select auto_slug from dynamic_agencia order by id asc;

# count dynamic_agencias properties
select count(*) as total,dtc.auto_slug from dynamic_rooms as dr, dynamic_agencia as dtc
where dr.dynamic_agencia = dtc.id group by dr.dynamic_agencia;

# dynamic_offers_taxonomy
select auto_slug from dynamic_offers_taxonomy order by id asc;

# count dynamic_offers_taxonomy
select count(*) as total,dtc.auto_slug from dynamic_rooms as dr, dynamic_offers_taxonomy as dtc
where dr.checkbox_oferta = 1 and dr.dynamic_taxonomy_group = dtc.dynamic_taxonomy_group and dr.dynamic_accion = dtc.dynamic_accion
group by dtc.auto_slug;

# dynamic_rooms con la ruta slug de dynamic_taxonomy_city
select dr.auto_slug as propiedad, dtc.auto_slug as taxonomia from dynamic_rooms as dr, dynamic_taxonomy_city as dtc
where dr.dynamic_geolocality = dtc.dynamic_geolocality and dr.dynamic_taxonomy_group = dtc.dynamic_taxonomy_group and dr.dynamic_accion = dtc.dynamic_accion;

# dynamic_taxonomy_city
select dtc.auto_slug from dynamic_taxonomy_city as dtc order by id asc;

# count dynamic_taxonomy_city
select count(*) as total,dtc.auto_slug from dynamic_rooms as dr, dynamic_taxonomy_city as dtc
where dr.dynamic_geolocality = dtc.dynamic_geolocality and dr.dynamic_taxonomy_group = dtc.dynamic_taxonomy_group and dr.dynamic_accion = dtc.dynamic_accion
group by dtc.auto_slug;

# admin