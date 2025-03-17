## FilmLocations Table

The **FilmLocations** table contains information about movies filmed in San Francisco. Below are the columns and their descriptions:

| Column Name         | Description                                                  |
|---------------------|--------------------------------------------------------------|
| `Title`              | Titles of the films                                          |
| `ReleaseYear`       | Year the film was released                                   |
| `Locations`         | Locations in San Francisco where the films were shot         |
| `FunFacts`          | Fun facts about the filming locations                        |
| `ProductionCompany` | Companies that produced the films                            |
| `Distributor`       | Companies that distributed the films                         |
| `Director`          | People who directed the films                                |
| `Writer`            | People who wrote the films                                   |
| `Actor1`            | First actor featured in the film                             |
| `Actor2`            | Second actor featured in the film                            |
| `Actor3`            | Third actor featured in the film                             |

### Example Query

```sql
SELECT Title, ReleaseYear, Locations
FROM FilmLocations
WHERE Director = 'Christopher Nolan';
``
