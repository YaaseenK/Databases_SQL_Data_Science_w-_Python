# Lab 3 Notes

## **STRING PATTERNS - Filtering Query Results**

### **Example 1: Retrieve Employees from Elgin, IL**
To retrieve the first names (`F_NAME`) and last names (`L_NAME`) of all employees who live in **Elgin, IL**, use the `LIKE` operator.

#### **Syntax:**
```sql
SELECT F_NAME, L_NAME
FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin,IL%';
```

- The `%` wildcard is used **before and after** `'Elgin,IL'`.
- This allows matching addresses that **contain** `'Elgin,IL'` anywhere.

---

### **Example 2: Identify Employees Born in the 1970s**
To filter employees born in the **1970s**, use the `LIKE` operator on the **B_DATE** (Birth Date) column.

#### **Syntax:**
```sql
SELECT * FROM EMPLOYEES
WHERE B_DATE LIKE '197%';
```
- The `%` wildcard is used **after** `'197'` to match any value from `1970-1979`.
- This assumes the date format starts with the year (e.g., `YYYY-MM-DD`).

---

### **Example 3: Retrieve Employees in Department 5 with Salary Between 60,000 and 70,000**
Use the `BETWEEN` operator to filter salaries **within a range** and specify department ID (`DEP_ID`).

#### **Syntax:**
```sql
SELECT *
FROM EMPLOYEES
WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;
```
- **`BETWEEN 60000 AND 70000`** ensures salary falls within this range.
- **`AND DEP_ID = 5`** limits results to department 5.

---

## **Sorting Data**
You can **sort retrieved records** using `ORDER BY`.
By default, it sorts **ascending (`ASC`)**, but `DESC` can be used for descending order.

### **Example: Retrieve Employees Ordered by Department ID**
#### **Syntax:**
```sql
SELECT F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES
ORDER BY DEP_ID;
```
- This sorts employees **by `DEP_ID` in ascending order (default)**.

---

## **Grouping Data**
To **group records** and apply aggregate functions, use `GROUP BY`.

### **Example: Retrieve Employee Count Per Department**
#### **Syntax:**
```sql
SELECT DEP_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEP_ID;
```
- **`COUNT(*)`** counts employees in each department.
- **`GROUP BY DEP_ID`** groups records by department.

---

## **Summary**
✅ **Filtering:** `LIKE`, `BETWEEN`, `AND` for refining results.  
✅ **Sorting:** `ORDER BY` (default `ASC`, optional `DESC`).  
✅ **Grouping:** `GROUP BY` with aggregate functions (e.g., `COUNT(*)`).

---

This concludes **Lab 3 Notes** on String Patterns, Sorting, and Grouping in SQL. 🚀
