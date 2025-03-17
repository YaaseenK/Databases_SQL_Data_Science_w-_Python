# SQL Query Notes

## 📚 General Query Templates

### 🔍 Select First Few Rows
```sql
SELECT * FROM TableName LIMIT 5;
```
*Purpose*: Retrieve a quick preview of the first 5 rows from any table.

---

### 🔢 Count Total Rows
```sql
SELECT COUNT(*) FROM TableName;
```
*Purpose*: Get the total number of records in a table.

---

### 🎯 Count Rows with a Specific Condition
```sql
SELECT COUNT(ColumnName) FROM TableName WHERE AnotherColumn = "SomeValue";
```
*Purpose*: Count the number of rows that meet a specific condition.

---

### 📑 Select Specific Columns
```sql
SELECT Column1, Column2 FROM TableName LIMIT 10;
```
*Purpose*: Retrieve specific columns for a limited number of rows.

---

### 🧹 Filter Records Based on Condition
```sql
SELECT * FROM TableName WHERE ColumnName = "SpecificValue";
```
*Purpose*: Retrieve rows that meet a specified condition.

---

## 🎥 Example Queries for `FilmLocations` Table

### 🔍 Preview First 5 Film Locations
```sql
SELECT * FROM FilmLocations LIMIT 5;
```
*Purpose*: View a sample of the FilmLocations table.

---

### 🔢 Count All Film Location Records
```sql
SELECT COUNT(*) FROM FilmLocations;
```
*Purpose*: Find out how many film locations are recorded in the table.

---

### 🎬 Count Locations Written by James Cameron
```sql
SELECT COUNT(Locations) FROM FilmLocations WHERE Writer = "James Cameron";
```
*Purpose*: Count how many filming locations are associated with James Cameron as a writer.

---

## ✅ Usage Notes
- **General queries** are reusable for any dataset — just replace `TableName`, `ColumnName`, and `Value`.
- **Specific queries** are targeted to the `FilmLocations` dataset but serve as examples of applying general patterns.
- You can adapt these patterns for other databases and projects.

---

> **Tip:** Keep this file as a reference when working on different databases. Add new general patterns and specific case studies as you encounter them!
