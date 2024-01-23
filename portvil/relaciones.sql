# uno a uno | NO AÑADIDA
alter table `dynamic_rooms` add constraint `fk_dynamic_rooms_avantio_accomodations` foreign key (`id`) references avantio_accomodations(`id`)
on update cascade
on delete cascade;

# avantio_accomodations
# varios a uno
alter table `avantio_accomodations` add constraint `fk_dynamic_avantio_accomodations_dynamic_taxonomy_constraint` foreign key (`dynamic_taxonomy`)
references dynamic_taxonomy(`id`)
on update cascade
on delete cascade;

# avantio_accomodations
# varios a uno
alter table `avantio_accomodations` add constraint `fk_dynamic_avantio_accomodations_dynamic_taxonomy_group_constraint` foreign key (`dynamic_taxonomy_group`)
references dynamic_taxonomy_group(`id`)
on update cascade
on delete cascade;

# dynamic_geocountry
# varios a uno
alter table `dynamic_georegion` add constraint `fk_dynamic_geocountry_dynamic_georegion_constraint` foreign key (`dynamic_geocountry`) references dynamic_geocountry(`id`)
on update cascade
on delete cascade;

# dynamic_geocity
# varios a uno
alter table `dynamic_geocity` add constraint `fk_dynamic_geocity_dynamic_georegion_constraint` foreign key (`dynamic_georegion`) references dynamic_georegion(`id`)
on update cascade
on delete cascade;

# dynamic_geolocality
# varios a uno
alter table `dynamic_geolocality` add constraint `fk_dynamic_geolocality_dynamic_geocity_constraint` foreign key (`dynamic_geocity`) references dynamic_geocity(`id`)
on update cascade
on delete cascade;

# dynamic_geozona
# varios a uno
alter table `dynamic_geozona` add constraint `fk_dynamic_geozona_dynamic_geolocality_constraint` foreign key (`dynamic_geolocality`) references dynamic_geolocality(`id`)
on update cascade
on delete cascade;

# dynamic_geodistrict
# varios a uno
alter table `dynamic_geodistrict` add constraint `fk_dynamic_geodistrict_dynamic_geolocality_constraint` foreign key (`dynamic_geolocality`) references dynamic_geolocality(`id`)
on update cascade
on delete cascade;

