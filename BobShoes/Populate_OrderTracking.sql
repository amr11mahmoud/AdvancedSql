USE BobShoes;
GO

TRUNCATE TABLE Orders.OrderTracking;

INSERT INTO Orders.OrderTracking(
OrderDate,
RequestDate,
CustName,
CustAddress,
ShoeStyle,
ShoeStyle,
Sku,
UnitPrice,
Quantity,
Discount,
IsExpedited
)
VALUES
('20230301', '20230201', 'Amr Mahmoud', 'Cairo', '0xTesla', '10_D',
'0xTESLA10_D', 50.0, 1, 0, 0),
('20230301', '20230201', 'Amr Mahmoud', 'Cairo', 'BabySneakers', '3',
'BABYSHO1', 20.0, 1, 0, 0),
('20230301', '20230201', 'Amr Mahmoud', 'Cairo', 'Killer Heels', '7',
'HEELS001', 75.0, 1, 0, 0);