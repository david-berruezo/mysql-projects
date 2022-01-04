CREATE DEFINER=`root`@`localhost` FUNCTION `get_all_menu_items`() RETURNS int(11)
BEGIN
    SELECT *
    FROM wp_posts
    WHERE post_type = 'nav_menu_item';
    return 1;
END