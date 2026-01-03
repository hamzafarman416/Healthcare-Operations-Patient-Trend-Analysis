-- CREATE database healthcare
 -- Use healthcare;
 
 
-- CREATE TABLE healthcare_data (
--     Patient_ID VARCHAR(10),
--     Visit_Date DATE,
--     Age INT,
--     Gender VARCHAR(10),
--     Disease VARCHAR(50),
--     Doctor VARCHAR(50),
--     Hospital VARCHAR(50),
--     Treatment_Cost DECIMAL(10,2),
--     Insurance VARCHAR(5)
-- );
  -- select * from healthcare_data ;
  
  INSERT INTO healthcare_data (Patient_ID, Visit_Date, Age, Gender, Disease, Doctor, Hospital, Treatment_Cost, Insurance)
VALUES
('P0001', '2024-01-01 00:00:00', 38, 'Male', 'Diabetes', 'Dr. Emma', 'National Hospital', 966, 'No'),
          to 
('P0520', '2024-12-31 00:00:00', 81, 'Male', 'Flu', 'Dr. Ahmed', 'National Hospital', 1240, 'Yes');
  
  
-- Total patients by disease
-- SELECT Disease, COUNT(*) AS Patient_Count
-- FROM healthcare_data
-- GROUP BY Disease
-- ORDER BY Patient_Count DESC;

-- Average treatment cost by hospital
-- SELECT Hospital, AVG(Treatment_Cost) AS Avg_Cost
-- FROM healthcare_data
-- GROUP BY Hospital

-- Insurance vs Non-Insurance cost
-- SELECT Insurance, AVG(Treatment_Cost) AS Avg_Cost
-- FROM healthcare_data
-- GROUP BY Insurance;

-- Monthly patient trend
-- SELECT 
--     MONTH(Visit_Date) AS Month,
--     COUNT(*) AS Total_Visits
-- FROM healthcare_data
-- GROUP BY MONTH(Visit_Date)
-- ORDER BY Month;

-- Gender-based analysis
-- SELECT Gender, COUNT(*) AS Total_Patients
-- FROM healthcare_data
-- GROUP BY Gender;

-- SELECT 
--     Doctor, 
--     COUNT(*) AS Total_Patients, 
--     SUM(Treatment_Cost) AS Total_Revenue,
--     ROUND(AVG(Treatment_Cost), 2) AS Avg_Cost_Per_Patient
-- FROM healthcare_data
-- GROUP BY Doctor
-- ORDER BY Total_Revenue DESC;

-- SELECT 
--     CASE 
--         WHEN Age < 18 THEN 'Pediatric'
--         WHEN Age BETWEEN 18 AND 64 THEN 'Adult'
--         ELSE 'Senior'
--     END AS Age_Group,
--     COUNT(*) AS Patient_Count,
--     AVG(Treatment_Cost) AS Avg_Cost
-- FROM healthcare_data
-- GROUP BY Age_Group;

-- SELECT 
--     Hospital, 
--     Disease, 
--     MAX(Treatment_Cost) AS Max_Cost,
--     AVG(Treatment_Cost) AS Average_Cost
-- FROM healthcare_data
-- GROUP BY Hospital, Disease
-- ORDER BY Max_Cost DESC;

-- SELECT 
--     Disease, 
--     Hospital, 
--     COUNT(*) AS Frequency
-- FROM healthcare_data
-- WHERE Disease IN ('Asthma', 'Diabetes', 'Hypertension')
-- GROUP BY Disease, Hospital
-- ORDER BY Disease, Frequency DESC;

-- SELECT 
--     Hospital,
--     COUNT(*) AS Total_Patients,
--     SUM(CASE WHEN Insurance = 'Yes' THEN 1 ELSE 0 END) AS Insured_Patients,
--     ROUND(SUM(CASE WHEN Insurance = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Insurance_Rate_Percentage
-- FROM healthcare_data
-- GROUP BY Hospital;

-- SELECT 
--     HOUR(Visit_Date) AS Hour_of_Day, 
--     COUNT(*) AS Patient_Arrivals
-- FROM healthcare_data
-- GROUP BY Hour_of_Day
-- ORDER BY Patient_Arrivals DESC;
