USE cape_codd;

select *
from BUYER ;

-- 20.16
select SKU, SKU_Description
from Inventory;

-- 20.17
select SKU_Description, SKU
from Inventory;

-- 20.18
select WarehouseID
from Inventory;

-- 20.19
select distinct WarehouseID as ID
from Inventory;

-- 20.20
select WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder
from Inventory;

-- 20.21
select *
from Inventory;

-- 20.22
select SKU_Description FROM INVENTORY WHERE QuantityOnHand > 0;

-- 20.23
SELECT SKU,SKU_Description FROM Inventory WHERE QuantityOnHand = 0;

-- 20.24
SELECT SKU,SKU_Description, WarehouseID FROM Inventory WHERE QuantityOnHand = 0 ;

-- 20.25
SELECT SKU,SKU_Description,WarehouseID
FROM Inventory
ORDER BY WarehouseID ASC;

-- 20.26
SELECT SKU,SKU_Description,WarehouseID
FROM Inventory
ORDER BY WarehouseID desc, SKU ASC;

-- 20.27
SELECT SKU,SKU_Description,WarehouseID FROM Inventory where QuantityOnhand = 0 and QuantityOnOrder > 0
ORDER BY WarehouseID desc, SKU ASC;

-- 20.28
SELECT SKU,SKU_Description,WarehouseID FROM Inventory where QuantityOnhand = 0 and QuantityOnOrder = 0
ORDER BY WarehouseID desc, SKU ASC;

-- 20.29
SELECT SKU,SKU_Description,WarehouseID, QuantityOnHand FROM Inventory where  QuantityOnhand > 1 and QuantityOnHand < 10;

-- 20.30
SELECT SKU,SKU_Description,WarehouseID, QuantityOnHand FROM Inventory where  QuantityOnhand BETWEEN 1 and 10;


-- 20.31
SELECT DISTINCT SKU, SKU_Description
FROM Inventory
WHERE SKU_Description LIKE 'Half-Dome%';

-- 20.32
SELECT DISTINCT SKU, SKU_Description
FROM Inventory
WHERE SKU_Description LIKE '%Climb%';

-- 20.33
SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE '__d%';

-- 20.34
SELECT 
SUM(QuantityOnHand) AS TotalQuantityOnHand,
AVG(QuantityOnHand) AS AverageQuantityOnHand,
MIN(QuantityOnHand) AS MininumQuantityOnHand,
MAX(QuantityOnHand) AS MaximumQuantityOnHand

FROM Inventory;

-- 20,.36
SELECT WarehouseID,
SUM(QuantityOnHand) AS TotalItemsOnHand
FROM Inventory
GROUP BY
	WarehouseID
ORDER BY
	TotalItemsOnHand DESC;

-- 20.37
SELECT WarehouseID,
SUM(CASE WHEN QuantityOnHand < 3 THEN QuantityOnHand ELSE 0 END) AS  TotalItemsOnHandLT3

FROM 
	Inventory
GROUP BY
	WarehouseID
ORDER BY
	TotalItemsOnHandLT3 DESC;
    
-- 20.38
SELECT WarehouseID,
	SUM(CASE WHEN QuantityOnHand < 3 THEN QuantityOnHand ELSE 0 END) AS TotalItemsOnHandLT3
    
FROM
	Inventory 
GROUP BY
	WarehouseID
HAVING
  COUNT(SKU) < 2
ORDER BY
  TotalItemsOnHandLT3 DESC;