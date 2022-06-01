CREATE DEFINER=`root`@`localhost` PROCEDURE `get_post_type`(post_type varchar(128))
    NO SQL
BEGIN
    SELECT *
    FROM wp_posts
    WHERE post_type = post_type;
END