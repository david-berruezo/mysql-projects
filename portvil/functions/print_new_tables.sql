CREATE DEFINER=`root`@`localhost` FUNCTION `print_new_tables`() RETURNS int(10)
begin
    declare total int(10);

    select * from avantio_booking;
    select * from avantio_booking_accommodation;
    select * from avantio_booking_localizer;
    select * from avantio_booking_details;
    select * from avantio_booking_occupants;
    select * from avantio_booking_type;
    select * from avantio_board;
    select * from avantio_client;

    return total;
end