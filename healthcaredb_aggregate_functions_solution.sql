SELECT * FROM patients;
SELECT * FROM appointments;
SELECT * FROM medicalrecords;
/* Task 1: Count the total number of patients in the database */
SELECT count(*) FROM patients;

/* Task 2 : Count the number of appointments that have been completed. */
SELECT count(*) FROM appointments WHERE status='completed';


/* Task 3 : Count the number of medical records with a diagnosis of "Asthma" */
SELECT count(*) FROM medicalrecords WHERE Diagnosis='Asthma';


/* Ticket 3 */
SELECT * FROM billing;

/* Task 1 : Calculate the total amount billed for all appointment */
SELECT SUM(TotalAmount) FROM billing;

/*Task 2 : Find the total amount paid by all patients for their bills. */
SELECT patientID,sum(PaidAmount) FROM billing GROUP BY patientID;

/*Task 3 : Calculate the total balance amount remaining for unpaid bills */
SELECT SUM(BalanceAmount) FROM billing WHERE paymentStatus='Unpaid';

/* Ticket 4 */
/*Task 1 : Calculate the average amount billed per appointmen*/
-- AVG
SELECT AppointmentID,AVG(TotalAmount) FROM billing GROUP BY AppointmentID;

#Find the average age of patients based on their DateOfBirth
  -- method 1
SELECT AVG(YEAR(curdate())-YEAR( DateOfBirth)) AS AverageAge
FROM Patients;
-- method 2
select avg(datediff(current_Date, dateOfBirth)) as AverageAge
from patients;
-- method 3
SELECT AVG(timestampdiff(YEAR, DateOfBirth, CURDATE())) AS AverageAge FROM Patients;

# Task 3 : Calculate the average amount of paid bills
select avg(PaidAmount) from billing where PaymentStatus='paid';
select avg(dosage) from prescriptions;

/*Ticket 5 */
-- MIN() and MAx() Functions

# Task 1 : Find the earliest and latest AppointmentDate
SELECT MIN(AppointmentDate) AS EarliestAppointment,MAX(AppointmentDate) AS LateAppointment FROM appointments;

#Task 2 : Identify the lowest and highest billed amounts in the Billing table
SELECT MIN(TotalAmount) as LowestBillAmount,Max(TotalAmount) as HighestBillAmount FROM billing;

#Task 3 : Find the minimum and maximum dosage prescribed in the Prescriptions table
SELECT MIN(dosage) as MinimumDosage,MAX(dosage) as MaximumDosage FROM prescriptions;

#Task 4 :  Determine the youngest and oldest patients in the database
  -- method 1
SELECT min
(YEAR(curdate())-YEAR( DateOfBirth)) AS YoungestPatient,MAX(YEAR(curdate())-YEAR(DateOfBirth)) AS OldestPatient FROM patients;

-- method 2
select min(timestampdiff(year, dateOfBirth, current_date)) as youngest, 
max(timestampdiff(year, dateOfBirth, current_date)) as oldest
from patients;

/* Ticket 6 */

-- CASE statement
/* Task 1 : Create a query that labels bills as 'High' if the TotalAmount is greater than $1000, 
'Medium' if between $500 and $1000, and 'Low' if below $500.*/

-- method 1
select TotalAmount,
case
when TotalAmount>1000 then 'High'
when TotalAmount between 500 and 1000 then 'Medium'
else 'Low'
End as Billcategory
FROM billing;

-- method 2
select billId,totalamount,
case
	when totalAmount > 1000 then "HIGH"
    when totalAmount >=500 and totalAmount<1000 then "Medium"
    when totalAmount < 500 then "Low"
    else "Out of Range" end as billstatus
from billing;

/* Task 2 : Write a query to show patients labeled as 'Minor' if their age is less than 18, 
'Adult' if between 18 and 65, and 'Senior' if older than 65.*/
select DateOfBirth,
case
when year(curdate())-year(DateofBirth)<18 then 'Minor'
when year(curdate())-year(DateofBirth)between 18 and 65 then 'Major'
else 'senior'
end as Agecategory 
FROM patients;



/* Ticket 7 - IN operator*/
-- IN operator
#Task 1 : Find all appointments where the Status is either 'Completed' or 'Scheduled'
select * from appointments where status IN('completed','scheduled');

#Task2 : Retrieve all doctors who specialize in 'Internal Medicine', 'Cardiology', or 'Pediatrics'
select * from doctors where Specialization IN('Internal Medicine', 'Cardiology','Pediatrics');

#Task3 : Find all MedicalRecords with diagnoses of 'Diabetes', 'Hypertension', or 'Asthma'
select * from medicalrecords where Diagnosis IN ('Diabetes', 'Hypertension', 'Asthma');

#Task4 : List all departments with names 'Surgery', 'Cardiology', or 'Pediatrics'.
select * from departments where DepartmentName IN('Surgery', 'Cardiology','Pediatrics');

