# FilmLocations Database Query Notes

## Table: FilmLocations

### Column Descriptions
- **Title**: Titles of the films
- **ReleaseYear**: Time of public release of the films
- **Locations**: Locations of San Francisco where the films were shot
- **FunFacts**: Fun facts about the filming locations
- **ProductionCompany**: Companies who produced the films
- **Distributor**: Companies who distributed the films
- **Director**: People who directed the films
- **Writer**: People who wrote the films
- **Actor1**: Person 1 who acted in the films
- **Actor2**: Person 2 who acted in the films
- **Actor3**: Person 3 who acted in the films

---

## Query Examples

### Using `COUNT` Statement

1. **Count the number of records (rows) in the FilmLocations table:**
```sql
SELECT COUNT(*) FROM FilmLocations;
```

2. **Count the number of locations for films written by a specific writer (e.g., "James Cameron"):**
```sql
SELECT COUNT(Locations) FROM FilmLocations WHERE Writer = "James Cameron";
```

---

### Using `DISTINCT` Statement

1. **Retrieve the titles of all films, removing duplicates:**
```sql
SELECT DISTINCT Title FROM FilmLocations;
```

2. **Count the distinct release years of films produced by a specific company (e.g., "Warner Bros. Pictures"):**
```sql
SELECT COUNT(DISTINCT ReleaseYear) FROM FilmLocations WHERE ProductionCompany = "Warner Bros. Pictures";
```

---

### Using `LIMIT` Statement

1. **Retrieve only the first 25 rows from the FilmLocations table:**
```sql
SELECT * FROM FilmLocations LIMIT 25;
```

2. **Retrieve 15 rows starting from row 11 (using OFFSET):**
```sql
SELECT * FROM FilmLocations LIMIT 15 OFFSET 10;
```
