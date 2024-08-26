CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `menuview` AS
    SELECT 
        `menus`.`Name` AS `Name`
    FROM
        `menus`
    WHERE
        `menus`.`MenuID` IN (SELECT 
                `orders`.`MenuID`
            FROM
                `orders`
            WHERE
                (`orders`.`Quantity` > 2))