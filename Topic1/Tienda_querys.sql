/*1*/ SELECT nombre FROM producto;
/*2*/SELECT nombre, precio FROM producto;
/*3*/SELECT * FROM producto;
/*4*/SELECT nombre, precio AS "EUR", precio * 1.1 AS "USD" FROM producto;
/*5*/SELECT 
nombre AS "Product Name", 
precio AS "Euros", 
precio * 1.1 AS  "US dollars" 
FROM producto;
/*6*/SELECT 
UPPER(nombre) AS "Product Name",
precio 
FROM producto;

/*7*/SELECT LOWER (nombre) AS "Product Name",
precio
FROM producto;

/*8*/SELECT nombre AS 'Manufacturer Name', 
CONCAT (UPPER(SUBSTRING(nombre,2)), SUBSTRING(nombre,3)) AS 'Two first letters capitilized'
FROM fabricante;

/*9*/SELECT nombre AS "Product Name",
ROUND(precio) AS 'Rounded Price'  
FROM producto;

/*10*/SELECT nombre AS "Product Name",
ROUND(precio,0) AS 'Rounded Price'  
FROM producto;

/*11*/SELECT codigo_fabricante AS 'manufacturer code' FROM producto;

/*12*/SELECT DISTINCT
codigo_fabricante AS 'manufacturer code'
FROM producto;

/*13*/SELECT
nombre AS 'manufacturer name'
FROM fabricante
ORDER BY 
nombre ASC;

/*14*/SELECT
nombre AS 'manufacturer name'
FROM fabricante
ORDER BY nombre DESC;

/*15*/SELECT
nombre AS 'product name',
precio
FROM 
producto
ORDER BY 
nombre ASC,
precio DESC;

/*16*/SELECT nombre AS 'manufacturer name'FROM fabricante LIMIT 5;
/*17*/SELECT nombre AS 'manufacturer name'FROM fabricante LIMIT 2 OFFSET 3; 
/*18*/ SELECT nombre, precio 
FROM producto   
ORDER BY precio ASC 
LIMIT 1;
/*19*/
SELECT nombre, precio
FROM producto
ORDER BY precio DESC
LIMIT 1;
/*20*/ SELECT nombre, codigo_fabricante
from producto
where codigo_fabricante = 2;









