select dr.auto_slug as propiedad, dtc.auto_slug as taxonomia from dynamic_rooms as dr, dynamic_taxonomy_city as dtc
where dr.dynamic_geolocality = dtc.dynamic_geolocality and dr.dynamic_taxonomy_group = dtc.dynamic_taxonomy_group and dr.dynamic_accion = dtc.dynamic_accion;
