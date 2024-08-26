PREPARE GetOrderDetail FROM
'SELECT orderid, quantity, cost
 FROM Orders
 WHERE customerid = ?';

SET @id = 1;

EXECUTE GetOrderDetail USING @id;

DEALLOCATE PREPARE GetOrderDetail;
