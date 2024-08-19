Healthcare_database_1.0.2 : Practice project to increase your sql skills using aggregate functions & operations

---

### Ticket Breakdown

**Ticket 1: Setup the Healthcare System Database**

- **Tasks:**
  
  To set up the database, you can use the SQL script provided below:

[Download healthcare_system.sql](https://raw.githubusercontent.com/RaheemAbol/healthcare_db_1.0.2/main/healthcare_system.sql)

### Instructions:

1. Download the SQL file from the link above.
2. Execute the SQL script in your MySQL Workbench or another MySQL environment.
3. The database schema and sample data will be created for you.

---

**Ticket 2: COUNT() Function**

- **Description:** Use the `COUNT()` function to answer the following questions.
  
- **Tasks:**
  1. **Count the total number of patients in the database.**
     - Use `COUNT(*)` to determine the total number of entries in the `Patients` table.
  2. **Count the number of appointments that have been completed.**
     - Filter the `Appointments` table where `Status` is 'Completed' and count the results.
  3. **Count the number of medical records with a diagnosis of "Asthma".**
     - Use `COUNT(*)` with a `WHERE` clause on the `Diagnosis` field in the `MedicalRecords` table.


---

**Ticket 3: SUM() Function**

- **Description:** Use the `SUM()` function to calculate the following totals.
  
- **Tasks:**
  1. **Calculate the total amount billed for all appointments.**
     - Sum the `TotalAmount` in the `Billing` table to get the total billed.
  2. **Find the total amount paid by all patients for their bills.**
     - Sum the `PaidAmount` field in the `Billing` table.
  3. **Calculate the total balance amount remaining for unpaid bills.**
     - Use `SUM()` on the `BalanceAmount` field where `PaymentStatus` is 'Unpaid'.

---

**Ticket 4: AVG() Function**

- **Description:** Use the `AVG()` function to calculate the following averages.
  
- **Tasks:**
  1. **Calculate the average amount billed per appointment.**
     - Use `AVG()` on the `TotalAmount` field in the `Billing` table.
  2. **Find the average age of patients based on their `DateOfBirth`.**
     - Calculate the average age using the `DateOfBirth` field in the `Patients` table.
  3. **Calculate the average amount of paid bills.**
     - Use `AVG()` on the `PaidAmount` field where `PaymentStatus` is 'Paid'.
  4. **Determine the average dosage prescribed per prescription.**
     - Use `AVG()` on the `Dosage` field in the `Prescriptions` table.

---

**Ticket 5: MIN() and MAX() Functions**

- **Description:** Use the `MIN()` and `MAX()` functions to find the following minimum and maximum values.
  
- **Tasks:**
  1. **Find the earliest and latest `AppointmentDate`.**
     - Use `MIN()` and `MAX()` on the `AppointmentDate` field in the `Appointments` table.
  2. **Identify the lowest and highest billed amounts in the `Billing` table.**
     - Use `MIN()` and `MAX()` on the `TotalAmount` field in the `Billing` table.
  3. **Find the minimum and maximum dosage prescribed in the `Prescriptions` table.**
     - Use `MIN()` and `MAX()` on the `Dosage` field.
  4. **Determine the youngest and oldest patients in the database.**
     - Use `MIN()` and `MAX()` on the age derived from the `DateOfBirth` field in the `Patients` table.

---

**Ticket 6: CASE Statement**

- **Description:** Use the `CASE` statement to categorize data based on conditions.
  
- **Tasks:**
  1. **Create a query that labels bills as 'High' if the `TotalAmount` is greater than $1000, 'Medium' if between $500 and $1000, and 'Low' if below $500.**
     - Use a `CASE` statement to categorize each bill based on `TotalAmount`.
  2. **Write a query to show patients labeled as 'Minor' if their age is less than 18, 'Adult' if between 18 and 65, and 'Senior' if older than 65.**
     - Use `CASE` to create age categories based on `DateOfBirth`.

---

**Ticket 7: IN Operator**

- **Description:** Use the `IN` operator to filter data based on a list of values.
  
- **Tasks:**
  1. **Find all appointments where the `Status` is either 'Completed' or 'Scheduled'.**
     - Use `IN` to filter the `Status` field in the `Appointments` table.
  2. **Retrieve all doctors who specialize in 'Internal Medicine', 'Cardiology', or 'Pediatrics'.**
     - Use `IN` to filter the `Specialization` field in the `Doctors` table.
  3. **Find all `MedicalRecords` with diagnoses of 'Diabetes', 'Hypertension', or 'Asthma'.**
     - Use `IN` to filter the `Diagnosis` field in the `MedicalRecords` table.
  4. **List all departments with names 'Surgery', 'Cardiology', or 'Pediatrics'.**
     - Use `IN` to filter the `DepartmentName` field in the `Departments` table.

---


---

rma
