Use BobShoes

CREATE TABLE Orders.OrderTracking(
    OrderId INT IDENTITY (1,1) NOT NULL,
    OrderDate DATETIME2(0) NOT NULL,
    RequestDate DATETIME2(0) NOT NULL,
    DeliveryDate DATETIME2(0) NULL,
    CustName NVARCHAR(200) NOT NULL,
    CustAddress NVARCHAR(200) NOT NULL,
    ShoeStyle NVARCHAR(200) NOT NULL,
    ShoeSize NVARCHAR(10) NOT NULL,
    Sku NVARCHAR(8) NOT NULL,
    UnitPrice NUMERIC(7,2) NOT null,
    Quantity SMALLINT NOT NULL,
    Discount NUMERIC(4,2) NOT NULL,
    IsExpedited BIT NOT null,
    TotalPrice AS (Quantity * UnitPrice * (1.0 - Discount)), -- PERSISTED
)

ON BobData
WITH (DATA_COMPRESSION = PAGE);
GO