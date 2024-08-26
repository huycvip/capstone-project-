CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `customersordersview` AS
    SELECT 
        `customer`.`CustomerID` AS `CustomerID`,
        `customer`.`FullName` AS `FullName`,
        `orders`.`OrderID` AS `OrderID`,
        `orders`.`Cost` AS `Cost`
    FROM
        (`customer`
        JOIN `orders`)
    WHERE
        (`orders`.`Cost` > 150)
    ORDER BY `orders`.`Cost`