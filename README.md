# 📘 Facebook Post Analytics — SQL Analytics

A structured SQL practice project built on a simulated **Facebook social media dataset** covering 20 posts across 7 creators, 8 countries, and 7 content categories. The project covers DDL, DML, and 15 real-world analytics queries using `WHERE`, `GROUP BY`, `HAVING`, aggregate functions, date filters, and pattern matching — written for **Oracle SQL**.

---

## 📁 Repository Structure

```
facebook-post-analytics-sql/
│
├── facebook_post_analytics_sql_queries.sql     # Full script — DDL + DML + 15 analytics queries
└── README.md
```

---

## 🗃️ Dataset Schema

**Table:** `FACEBOOK_POST_ANALYTICS`
**Records:** 20 simulated Facebook posts
**Date Range:** January 2024 – February 2024

| Column | Type | Description |
|---|---|---|
| `post_id` | INT | Primary key |
| `user_id` | INT | Creator's user ID |
| `user_name` | VARCHAR(100) | Creator's full name |
| `page_name` | VARCHAR(100) | Facebook page name |
| `post_type` | VARCHAR(50) | `Video`, `Reel`, or `Image` |
| `content_category` | VARCHAR(50) | e.g. Technology, Gaming, Finance |
| `post_content` | VARCHAR(200) | Post title / description |
| `country` | VARCHAR(50) | Country of the post |
| `language` | VARCHAR(50) | `English` or `Hindi` |
| `post_date` | DATE | Date the post was published |
| `reach` | INT | Total number of accounts reached |
| `likes` | INT | Total likes |
| `comments` | INT | Total comments |
| `shares` | INT | Total shares |
| `engagement_time_minutes` | INT | Total user engagement time in minutes |

---

## 📊 Analysis Covered

15 queries spanning reach analysis, creator engagement, gaming popularity, video performance, finance & fitness trends, multi-country comparisons, and premium content simulation across categories, countries, languages, and post types.
Filters use `WHERE`, `HAVING`, `GROUP BY`, `SUM`, `AVG`, `ROUND`, `BETWEEN`, `IN`, `LIKE`, and `LOWER()` for case-insensitive pattern matching.

---

## 🔑 Key Concepts Demonstrated

**WHERE vs HAVING — correct layering**
```sql
-- WHERE filters rows before aggregation
-- HAVING filters groups after aggregation
SELECT COUNTRY, SUM(REACH) AS TOTAL_REACH
FROM   FACEBOOK_POST_ANALYTICS
WHERE  CONTENT_CATEGORY = 'Technology'
   AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-15'   -- row-level filter
GROUP  BY COUNTRY
HAVING SUM(REACH) > 300000;                                         -- group-level filter
```

**Case-insensitive pattern matching with LOWER()**
```sql
-- Safely matches names containing 'a' regardless of case
WHERE LOWER(USER_NAME) LIKE '%a%'

-- Matches post content containing 't' in any case
WHERE LOWER(POST_CONTENT) LIKE '%t%'
```

**Multi-value filtering with IN**
```sql
-- Filter by multiple countries
WHERE COUNTRY IN ('India', 'USA', 'UK')

-- Filter by multiple post types
WHERE POST_TYPE IN ('Video', 'Reel')
```

**Date literals in Oracle SQL**
```sql
-- Always use TO_DATE for inserts and DATE keyword for filters
TO_DATE('2024-01-05', 'YYYY-MM-DD')        -- INSERT
WHERE POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'    -- SELECT
```

---

## ⚙️ Getting Started

### Prerequisites

- Oracle Database (19c or later recommended) **or** any SQL environment supporting ANSI date literals
- SQL client: SQL\*Plus, SQL Developer, DBeaver, or similar

### Run the Script

```bash
# Connect via SQL*Plus
sqlplus username/password@your_db

# Run the full script
@facebook_post_analytics_sql_queries.sql
```

Or open `facebook_post_analytics_sql_queries.sql` in SQL Developer and execute with **F5** (run as script).

---

## 🛠️ Technologies Used

![Oracle SQL](https://img.shields.io/badge/Oracle%20SQL-F80000?style=for-the-badge&logo=oracle&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)

---

*Built by **Radhika Deshpande** · Facebook Post Analytics — SQL Analytics Practice*
