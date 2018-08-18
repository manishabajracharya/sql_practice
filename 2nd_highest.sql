/*
Select 2nd highest price from the product table.
Select 2nd highest salary from employee
*/


SELECT TOP 1 Price FROM (Select TOP 2 Price from Products Order By Price Desc)
Order By Price ASC;

