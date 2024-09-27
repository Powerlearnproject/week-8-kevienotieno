DROP DATABASE IF EXISTS hunger;

-- creating a database
CREATE DATABASE IF NOT EXISTS hunger;

USE hunger;

-- Farmers Table
CREATE TABLE Farmers (
    FarmerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    ContactInfo VARCHAR(50)
);

-- Crops Table
CREATE TABLE Crops (
    CropID INT PRIMARY KEY,
    CropName VARCHAR(50),
    PlantingDate DATE,
    ExpectedHarvestDate DATE
);

-- Harvests Table
CREATE TABLE Harvests (
    HarvestID INT PRIMARY KEY,
    CropID INT,
    FarmerID INT,
    HarvestQuantity DECIMAL(10, 2),
    HarvestDate DATE,
    FOREIGN KEY (CropID) REFERENCES Crops(CropID),
    FOREIGN KEY (FarmerID) REFERENCES Farmers(FarmerID)
);

-- Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    HarvestID INT,
    SaleQuantity DECIMAL(10, 2),
    SalePrice DECIMAL(10, 2),
    BuyerName VARCHAR(100),
    SaleDate DATE,
    FOREIGN KEY (HarvestID) REFERENCES Harvests(HarvestID)
);

-- Distribution Table
CREATE TABLE distribution (
    DistributionID INT PRIMARY KEY,
    SaleID INT,
    TransporterName VARCHAR(100),
    DistributionDate DATE,
    Destination VARCHAR(100),
    FOREIGN KEY (SaleID) REFERENCES sales(SaleID)
);

INSERT INTO Farmers (FarmerID, Name, Location, ContactInfo) VALUES
(1, 'John Otieno', 'Migori', 'johnotieno@example.com'),
(2, 'Mary Atieno', 'Migori', 'maryatieno@example.com'),
(3, 'Kevin Owino', 'Kisumu', 'kevinowino@example.com'),
(4, 'Alice Mwangi', 'Homa Bay', 'alicemwangi@example.com'),
(5, 'James Ouma', 'Migori', 'jamesouma@example.com'),
(6, 'Grace Achieng', 'Siaya', 'graceachieng@example.com'),
(7, 'Peter Njoroge', 'Nairobi', 'peternjoroge@example.com'),
(8, 'Nancy Anyango', 'Migori', 'nancyanyango@example.com'),
(9, 'Tom Onyango', 'Migori', 'tomonyango@example.com'),
(10, 'Sarah Wanjiku', 'Nairobi', 'sarahwanjiku@example.com'),
(11, 'Joseph Okoth', 'Migori', 'josephokoth@example.com'),
(12, 'Paul Mwenda', 'Kisii', 'paulmwenda@example.com'),
(13, 'Beatrice Awuor', 'Migori', 'beatriceawuor@example.com'),
(14, 'Brian Onyango', 'Migori', 'brianonyango@example.com'),
(15, 'Evelyn Ochieng', 'Migori', 'evelynochieng@example.com'),
(16, 'Robert Nyanumba', 'Siaya', 'robertnyanumba@example.com'),
(17, 'Faith Owino', 'Kisumu', 'faithowino@example.com'),
(18, 'David Wambugu', 'Homa Bay', 'davidwambugu@example.com'),
(19, 'Emily Njeri', 'Kisumu', 'emilynjeri@example.com'),
(20, 'Patrick Oloo', 'Kisii', 'patrickoloo@example.com');


INSERT INTO Crops (CropID, CropName, PlantingDate, ExpectedHarvestDate) VALUES
(1, 'Sweet Potatoes', '2024-03-15', '2024-08-15'),
(2, 'Sweet Potatoes', '2024-05-10', '2024-10-10'),
(3, 'Sweet Potatoes', '2024-06-01', '2024-11-01'),
(4, 'Sweet Potatoes', '2024-07-05', '2024-12-05'),
(5, 'Sweet Potatoes', '2024-04-20', '2024-09-20'),
(6, 'Sweet Potatoes', '2024-02-10', '2024-07-10'),
(7, 'Sweet Potatoes', '2024-01-15', '2024-06-15'),
(8, 'Sweet Potatoes', '2024-02-25', '2024-07-25'),
(9, 'Sweet Potatoes', '2024-03-18', '2024-08-18'),
(10, 'Sweet Potatoes', '2024-04-01', '2024-09-01'),
(11, 'Sweet Potatoes', '2024-05-05', '2024-10-05'),
(12, 'Sweet Potatoes', '2024-06-10', '2024-11-10'),
(13, 'Sweet Potatoes', '2024-07-15', '2024-12-15'),
(14, 'Sweet Potatoes', '2024-08-01', '2024-12-31'),
(15, 'Sweet Potatoes', '2024-04-18', '2024-09-18'),
(16, 'Sweet Potatoes', '2024-05-28', '2024-10-28'),
(17, 'Sweet Potatoes', '2024-06-08', '2024-11-08'),
(18, 'Sweet Potatoes', '2024-07-12', '2024-12-12'),
(19, 'Sweet Potatoes', '2024-08-02', '2024-12-30'),
(20, 'Sweet Potatoes', '2024-03-05', '2024-08-05');


INSERT INTO Harvests (HarvestID, CropID, FarmerID, HarvestQuantity, HarvestDate) VALUES
(1, 1, 1, 1000.50, '2024-08-16'),
(2, 2, 2, 1500.75, '2024-10-11'),
(3, 3, 3, 2000.00, '2024-11-05'),
(4, 4, 4, 1750.30, '2024-12-06'),
(5, 5, 5, 1250.10, '2024-09-21'),
(6, 6, 6, 900.25, '2024-07-11'),
(7, 7, 7, 1100.60, '2024-06-16'),
(8, 8, 8, 1450.45, '2024-07-26'),
(9, 9, 9, 1300.15, '2024-08-19'),
(10, 10, 10, 1600.35, '2024-09-02'),
(11, 11, 11, 1200.50, '2024-10-06'),
(12, 12, 12, 1700.70, '2024-11-11'),
(13, 13, 13, 1350.40, '2024-12-16'),
(14, 14, 14, 1900.25, '2024-12-31'),
(15, 15, 15, 950.80, '2024-09-19'),
(16, 16, 16, 1400.90, '2024-10-29'),
(17, 17, 17, 1800.60, '2024-11-09'),
(18, 18, 18, 1550.40, '2024-12-13'),
(19, 19, 19, 1150.70, '2024-12-31'),
(20, 20, 20, 1050.20, '2024-08-06');


INSERT INTO Sales (SaleID, HarvestID, SaleQuantity, SalePrice, BuyerName, SaleDate) VALUES
(1, 1, 500.50, 20000.00, 'Local Market', '2024-08-20'),
(2, 2, 750.75, 30000.00, 'Supermarket', '2024-10-15'),
(3, 3, 1200.00, 48000.00, 'Distributor A', '2024-11-07'),
(4, 4, 1000.30, 40000.00, 'Retail Chain B', '2024-12-10'),
(5, 5, 850.10, 34000.00, 'Wholesale Market', '2024-09-23'),
(6, 6, 650.25, 26000.00, 'Local Vendor C', '2024-07-13'),
(7, 7, 700.60, 28000.00, 'Supermarket D', '2024-06-18'),
(8, 8, 1000.45, 40000.00, 'Distributor E', '2024-07-28'),
(9, 9, 900.15, 36000.00, 'Local Market', '2024-08-21'),
(10, 10, 1100.35, 44000.00, 'Retail Chain F', '2024-09-05'),
(11, 11, 950.50, 38000.00, 'Local Vendor G', '2024-10-08'),
(12, 12, 1150.70, 46000.00, 'Supermarket H', '2024-11-13'),
(13, 13, 1000.40, 40000.00, 'Distributor I', '2024-12-18'),
(14, 14, 1250.25, 50000.00, 'Wholesale Market', '2024-12-31'),
(15, 15, 700.80, 28000.00, 'Local Vendor J', '2024-09-21'),
(16, 16, 950.90, 38000.00, 'Supermarket K', '2024-10-31'),
(17, 17, 1150.60, 46000.00, 'Retail Chain L', '2024-11-11'),
(18, 18, 950.40, 38000.00, 'Distributor M', '2024-12-15'),
(19, 19, 800.70, 32000.00, 'Supermarket N', '2024-12-31'),
(20, 20, 700.20, 28000.00, 'Local Market', '2024-08-08');


INSERT INTO distribution (DistributionID, SaleID, TransporterName, DistributionDate, Destination) VALUES
(1, 1, 'ABC Transport', '2024-08-22', 'Nairobi'),
(2, 2, 'XYZ Logistics', '2024-10-17', 'Kisumu'),
(3, 3, 'Migori Haulers', '2024-11-10', 'Migori'),
(4, 4, 'Kisumu Movers', '2024-12-12', 'Kisumu'),
(5, 5, 'ABC Transport', '2024-09-25', 'Nairobi'),
(6, 6, 'XYZ Logistics', '2024-07-15', 'Homa Bay'),
(7, 7, 'Migori Haulers', '2024-06-20', 'Migori'),
(8, 8, 'Kisumu Movers', '2024-07-30', 'Nairobi'),
(9, 9, 'ABC Transport', '2024-08-24', 'Migori'),
(10, 10, 'XYZ Logistics', '2024-09-07', 'Kisumu'),
(11, 11, 'Migori Haulers', '2024-10-10', 'Nairobi'),
(12, 12, 'Kisumu Movers', '2024-11-15', 'Migori'),
(13, 13, 'ABC Transport', '2024-12-20', 'Nairobi'),
(14, 14, 'XYZ Logistics', '2024-12-31', 'Kisumu'),
(15, 15, 'Migori Haulers', '2024-09-23', 'Migori'),
(16, 16, 'Kisumu Movers', '2024-11-02', 'Nairobi'),
(17, 17, 'ABC Transport', '2024-11-13', 'Kisumu'),
(18, 18, 'XYZ Logistics', '2024-12-17', 'Homa Bay'),
(19, 19, 'Migori Haulers', '2024-12-31', 'Migori'),
(20, 20, 'Kisumu Movers', '2024-08-10', 'Kisumu');

-- Retrieve Total Harvest by Farmer

SELECT f.Name, SUM(h.HarvestQuantity) AS TotalHarvest
FROM Farmers f
JOIN Harvests h ON f.FarmerID = h.FarmerID
GROUP BY f.Name;

-- Sales Analysis: Total Sales per Farmer

SELECT f.Name, SUM(s.SaleQuantity) AS TotalSales, SUM(s.SalePrice) AS TotalRevenue
FROM Farmers f
JOIN Harvests h ON f.FarmerID = h.FarmerID
JOIN Sales s ON h.HarvestID = s.HarvestID
GROUP BY f.Name;


-- viewing the tables for extraction
SELECT * FROM crops;
SELECT * FROM distribution;
SELECT * FROM farmers;
SELECT * FROM sales;
SELECT * FROM harvests;
