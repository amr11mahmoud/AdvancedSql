USE BobShoes;
GO

ALTER TABLE Orders.OrderTracking
ADD CONSTRAINT PK_OrderTracking_OrderId
    PRIMARY KEY (OrderId)
        ON [BobData];

GO

