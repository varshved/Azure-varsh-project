CREATE VIEW GOLD.Calender
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://varshdatalake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) as QUERY1

CREATE VIEW gold.Customers
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://varshdatalake.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) as QUERY2

GO

CREATE VIEW gold.Pro_Cat
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://varshdatalake.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) as QUERY3

GO

CREATE VIEW gold.Products
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://varshdatalake.blob.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) as QUERY4

GO

CREATE VIEW gold.Returns
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://varshdatalake.blob.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) as QUERY5

GO

CREATE VIEW gold.Sales
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://varshdatalake.blob.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) as QUERY6

DROP VIEW gold.Sales
GO

CREATE VIEW gold.Territoriess
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://varshdatalake.blob.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) as QUERY7

GO

CREATE VIEW gold.Pro_subcat
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://varshdatalake.blob.core.windows.net/silver/Product_Subcategories/',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) as QUERY8

SELECT * FROM gold.Sales
