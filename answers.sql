Question 1: Get employee details with office info using INNER JOIN
SELECT 
    employees.firstName,
    employees.lastName,
    employees.email,
    employees.officeCode
FROM 
    employees
INNER JOIN 
    offices ON employees.officeCode = offices.officeCode;


Question 2: Get product details with product line info using LEFT JOIN
SELECT 
    products.productName,
    products.productVendor,
    products.productLine
FROM 
    products
LEFT JOIN 
    productlines ON products.productLine = productlines.productLine;


Question 3: Get the first 10 orders with customer info using RIGHT JOIN
SELECT 
    orders.orderDate,
    orders.shippedDate,
    orders.status,
    orders.customerNumber
FROM 
    customers
RIGHT JOIN 
    orders ON customers.customerNumber = orders.customerNumber
ORDER BY 
    orders.orderDate
LIMIT 10;
