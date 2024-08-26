CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelOrder`(IN order_id INT)
BEGIN
   
    DELETE FROM Orders
    WHERE order_id = p_order_id;
    
    IF ROW_COUNT() > 0 THEN
        SELECT CONCAT('Order with ID ', order_id, ' has been successfully deleted.') AS ResultMessage;
    ELSE
        SELECT CONCAT('No order found with ID ', order_id, '.') AS ResultMessage;
    END IF;
END