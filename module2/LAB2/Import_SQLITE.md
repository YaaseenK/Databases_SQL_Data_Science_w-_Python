# Importing CSV Data into SQLite

## **Step 1: Open SQLite in VS Code**
1. Open **VS Code** and launch the **terminal**.
2. Start SQLite and connect to your database:
   ```sh
   sqlite3 C:\Users\River\Documents\MySQL\module2\LAB2\Mysql_Learners.db
   ```

---

## **Step 2: Set Mode to CSV**
Before importing, ensure SQLite is in CSV mode:
```sql
.mode csv
```

---

## **Step 3: Import CSV Files into Tables**
Use the `.import` command to load each CSV file into its corresponding table.

```sql
.import C:\Users\River\Documents\MySQL\module2\LAB2\csv_data\PATIENTS.csv PATIENTS
.import C:\Users\River\Documents\MySQL\module2\LAB2\csv_data\DOCTORS.csv DOCTORS
.import C:\Users\River\Documents\MySQL\module2\LAB2\csv_data\APPOINTMENTS.csv APPOINTMENTS
.import C:\Users\River\Documents\MySQL\module2\LAB2\csv_data\HOSPITALS.csv HOSPITALS
.import C:\Users\River\Documents\MySQL\module2\LAB2\csv_data\MEDICAL_DEPARTMENTS.csv MEDICAL_DEPARTMENTS
```

---

## **Step 4: Verify Data Import**
Check if data was successfully imported by running:
```sql
SELECT * FROM PATIENTS LIMIT 5;
SELECT * FROM DOCTORS LIMIT 5;
```

---

## **Optional: Skipping Headers**
If the first row contains column headers, skip them using:
```sql
.import --skip 1 C:\Users\River\Documents\MySQL\module2\LAB2\csv_data\PATIENTS.csv PATIENTS
```

---

## **Troubleshooting Tips**
- If import fails, ensure:
  - The CSV file exists at the specified path.
  - The table structure in SQLite matches the CSV data.
  - The **mode is set to CSV** before importing.
- To re-import, you may need to clear the table:
  ```sql
  DELETE FROM PATIENTS;
  ```

---

## **Conclusion**
This process allows you to import large datasets into SQLite for querying and analysis. 🎯
