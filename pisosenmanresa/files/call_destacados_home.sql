use pisosenm_inmobiliaria;

# call destacados home and update it
call print_destacados_home(1);
call print_destacados_home(7);
call print_destacados_home(8);
call update_destacados_home(464,"desactivate");
call update_destacados_home(1645,"desactivate");

# call taxonomias and set destacado home
call print_propiedades_taxonomias(1);
call print_propiedades_taxonomias(7);
call print_propiedades_taxonomias(8);
call update_destacados_home(96,"activate");
call update_destacados_home(61,"activate");
call update_destacados_home(6526,"desactivate");
call update_destacados_home(1654,"activate");