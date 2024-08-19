SELECT * FROM patients;
SELECT * FROM appointments;
SELECT * FROM medicalrecords;
SELECT count(*) FROM patients;
SELECT count(*) FROM appointments WHERE status='completed';
SELECT count(*) FROM medicalrecords WHERE Diagnosis='Asthma';
SELECT * FROM billing;
SELECT SUM(TotalAmount) FROM billing;
SELECT patientID,sum(PaidAmount) FROM billing GROUP BY patientID;
SELECT SUM(BalanceAmount) FROM billing WHERE paymentStatus='Unpaid';


-- AVG
SELECT AppointmentID,AVG(TotalAmount) FROM billing GROUP BY AppointmentID;
SELECT AVG(YEAR(curdate())-YEAR( DateOfBirth)) AS AverageAge
FROM Patients;
select avg(PaidAmount) from billing where PaymentStatus='paid';
select avg(dosage) from prescriptions;


-- MIN() and MAx() Functions

SELECT MIN(AppointmentDate) AS EarliestAppointment,MAX(AppointmentDate) AS LateAppointment FROM appointments;

SELECT MIN(TotalAmount),Max(TotalAmount) FROM billing;

SELECT MIN(dosage),MAX(dosage) FROM prescriptions;
SELECT min
(YEAR(curdate())-YEAR( DateOfBirth)) AS YoungestPatient,MAX(YEAR(curdate())-YEAR(DateOfBirth)) AS OldestPatient FROM patients;

-- CASE statement

select TotalAmount,
case
when TotalAmount>1000 then 'High'
when TotalAmount between 500 and 1000 then 'Medium'
else 'Low'
End as Billcategory
FROM billing;

select DateOfBirth,
case
when year(curdate())-year(DateofBirth)<18 then 'Minor'
when year(curdate())-year(DateofBirth)between 18 and 65 then 'Major'
else 'senior'
end as Agecategory 
FROM patients;




-- IN operator
select * from appointments where status IN('completed','scheduled');
select * from doctors where Specialization IN('Internal Medicine', 'Cardiology','Pediatrics');
select * from medicalrecords where Diagnosis IN ('Diabetes', 'Hypertension', 'Asthma');
select * from departments where DepartmentName IN('Surgery', 'Cardiology','Pediatrics');

