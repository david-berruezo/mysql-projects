CREATE DEFINER=`root`@`localhost` PROCEDURE `get_option_by_name`(name varchar(255))
BEGIN
    select * from wp_options where option_name = name;
END