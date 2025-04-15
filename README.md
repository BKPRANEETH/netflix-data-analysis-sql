# Netflix Data Analysis using SQL

This project explores Netflix's publicly available dataset to uncover trends in movies and TV shows using SQL. It focuses on genre distribution, content types, release year patterns, and other useful insights that could help in content strategy or user engagement.

## 📊 Objective

- Analyze the composition of Netflix's content library.
- Identify trends in movie and show releases over the years.
- Explore relationships between countries, genres, and content type.

## 📁 Project Structure

- `/SQL`: SQL queries used for analysis.
- `/Data`: Dataset source info and instructions to download.
- `/Outputs`: Sample screenshots of query results.

## 📄 Dataset

- Source: [Netflix Movies and TV Shows on Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows)
- Format: CSV file
- Size: ~1MB

## ⚙️ How to Run

1. Download the dataset from the Kaggle link above and place it in the `/Data` folder.
2. Use a SQL engine (e.g., **SQLite**, **PostgreSQL**, or **MySQL**) and import the dataset.
3. Run queries from `/SQL/netflix_analysis.sql` to view results.

## 🔍 Key Queries & Sample Outputs

### 1. Top 10 Genres by Frequency
```sql
SELECT listed_in AS genre, COUNT(*) AS total
FROM netflix_titles
GROUP BY genre
ORDER BY total DESC
LIMIT 10;
```
**Sample Output:**
| Genre                         | Total |
|------------------------------|-------|
| Dramas                       | 2400  |
| Comedies                     | 1700  |
| Documentaries                | 1300  |

### 2. Movie vs TV Show Ratio
```sql
SELECT type, COUNT(*) AS count
FROM netflix_titles
GROUP BY type;
```
**Sample Output:**
| Type    | Count |
|---------|-------|
| Movie   | 4300  |
| TV Show | 1500  |

### 3. Content Released per Year
```sql
SELECT release_year, COUNT(*) AS total
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year DESC;
```
**Sample Output:**
| Release Year | Total |
|--------------|-------|
| 2021         | 1200  |
| 2020         | 1000  |
| 2019         | 850   |

### 4. Country-wise Content Distribution
```sql
SELECT country, COUNT(*) AS total
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC
LIMIT 10;
```
**Sample Output:**
| Country      | Total |
|--------------|-------|
| United States| 2500  |
| India        | 1100  |
| United Kingdom| 950  |

## ✅ Tools Used

- SQL (PostgreSQL recommended for date/time queries)
- Data from Kaggle

---

*This project was built to improve SQL data analysis skills through hands-on dataset exploration.*

