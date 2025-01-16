CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://varshdatalake.blob.core.windows.net/silver',
    CREDENTIAL = credential_varsh
);

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://varshdatalake.blob.core.windows.net/gold',
    CREDENTIAL = credential_varsh
);

CREATE EXTERNAL FILE FORMAT format_csv
WITH
(
    FORMAT_TYPE = DELIMITEDTEXT,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.GzipCodec'
);

-- Create the external table, defining the columns explicitly based on your dataset
CREATE EXTERNAL TABLE gold.extsales
(
    OrderDate DATE,
    TotalOrders INT
)
WITH
(
    LOCATION = 'extsales/',  -- Folder path where your CSV files are located
    DATA_SOURCE = source_gold,  -- Your external data source
    FILE_FORMAT = format_csv  -- Your CSV file format
)
AS
SELECT * FROM gold.Sales

SELECT * FROM gold.extsales

