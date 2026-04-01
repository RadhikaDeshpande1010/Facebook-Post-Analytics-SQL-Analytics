/* ============================================================
   FILE    : facebook_post_analytics_sql_queries.sql
   TABLE   : FACEBOOK_POST_ANALYTICS
   PURPOSE : 15 Facebook Post Analytics SQL Queries
   DATABASE: Oracle SQL
   AUTHOR  : Radhika Deshpande
   ============================================================ */


/* ------------------------------------------------------------
   DDL : CREATE TABLE
   ------------------------------------------------------------ */

CREATE TABLE facebook_post_analytics (
    post_id                  INT             PRIMARY KEY,
    user_id                  INT,
    user_name                VARCHAR(100),
    page_name                VARCHAR(100),
    post_type                VARCHAR(50),
    content_category         VARCHAR(50),
    post_content             VARCHAR(200),
    country                  VARCHAR(50),
    language                 VARCHAR(50),
    post_date                DATE,
    reach                    INT,
    likes                    INT,
    comments                 INT,
    shares                   INT,
    engagement_time_minutes  INT
);


/* ------------------------------------------------------------
   DML : INSERT 20 RECORDS
   ------------------------------------------------------------ */

INSERT INTO facebook_post_analytics VALUES
(1,  2001, 'Rahul Sharma',   'Tech Insights',  'Video', 'Technology', 'AI Revolution 2024',       'India',       'English', TO_DATE('2024-01-05','YYYY-MM-DD'), 150000, 12000, 1500,  800, 300000),
(2,  2002, 'Sneha Verma',    'Food Lovers',    'Image', 'Food',       'Street Food in Mumbai',    'India',       'Hindi',   TO_DATE('2024-01-06','YYYY-MM-DD'),  90000,  8000,  900,  500, 180000),
(3,  2003, 'Amit Singh',     'Travel Diaries', 'Video', 'Travel',     'Trip to Paris',            'France',      'English', TO_DATE('2024-01-07','YYYY-MM-DD'), 180000, 15000, 2000, 1000, 350000),
(4,  2004, 'Rohit Malhotra', 'Gaming Hub',     'Video', 'Gaming',     'Top PC Games 2024',        'USA',         'English', TO_DATE('2024-01-08','YYYY-MM-DD'), 220000, 20000, 3000, 1500, 450000),
(5,  2005, 'Pooja Gupta',    'Fitness Freaks', 'Reel',  'Fitness',    'Morning Workout Tips',     'India',       'English', TO_DATE('2024-01-10','YYYY-MM-DD'), 130000, 11000, 1400,  700, 260000),
(6,  2006, 'Manish Jain',    'Finance World',  'Video', 'Finance',    'Stock Market Guide',       'India',       'Hindi',   TO_DATE('2024-01-12','YYYY-MM-DD'), 140000, 10000, 1300,  650, 280000),
(7,  2007, 'Neha Patel',     'Daily Life',     'Image', 'Lifestyle',  'A Day in London',          'UK',          'English', TO_DATE('2024-01-14','YYYY-MM-DD'),  80000,  6000,  700,  400, 150000),
(8,  2001, 'Rahul Sharma',   'Tech Insights',  'Video', 'Technology', 'Cloud Computing Basics',   'India',       'English', TO_DATE('2024-01-15','YYYY-MM-DD'), 170000, 14000, 1800,  900, 320000),
(9,  2004, 'Rohit Malhotra', 'Gaming Hub',     'Reel',  'Gaming',     'Mobile Gaming Trends',     'USA',         'English', TO_DATE('2024-01-18','YYYY-MM-DD'), 250000, 22000, 3500, 1700, 500000),
(10, 2002, 'Sneha Verma',    'Food Lovers',    'Video', 'Food',       'Best Cafes in Delhi',      'India',       'English', TO_DATE('2024-01-20','YYYY-MM-DD'),  95000,  8500, 1000,  550, 190000),
(11, 2003, 'Amit Singh',     'Travel Diaries', 'Video', 'Travel',     'Swiss Alps Adventure',     'Switzerland', 'English', TO_DATE('2024-01-22','YYYY-MM-DD'), 160000, 13000, 1700,  850, 310000),
(12, 2006, 'Manish Jain',    'Finance World',  'Reel',  'Finance',    'Crypto Tips 2024',         'India',       'English', TO_DATE('2024-01-25','YYYY-MM-DD'), 155000, 12500, 1600,  750, 300000),
(13, 2005, 'Pooja Gupta',    'Fitness Freaks', 'Video', 'Fitness',    'Yoga for Beginners',       'India',       'Hindi',   TO_DATE('2024-01-28','YYYY-MM-DD'), 120000,  9500, 1200,  600, 240000),
(14, 2007, 'Neha Patel',     'Daily Life',     'Reel',  'Lifestyle',  'Shopping in London',       'UK',          'English', TO_DATE('2024-02-01','YYYY-MM-DD'),  85000,  7000,  800,  450, 160000),
(15, 2001, 'Rahul Sharma',   'Tech Insights',  'Video', 'Technology', 'Python Coding Tutorial',   'India',       'English', TO_DATE('2024-02-03','YYYY-MM-DD'), 210000, 18000, 2500, 1200, 400000),
(16, 2004, 'Rohit Malhotra', 'Gaming Hub',     'Video', 'Gaming',     'GTA Gameplay Live',        'USA',         'English', TO_DATE('2024-02-05','YYYY-MM-DD'), 230000, 21000, 3200, 1600, 470000),
(17, 2002, 'Sneha Verma',    'Food Lovers',    'Reel',  'Food',       'Hyderabad Biryani Review', 'India',       'Hindi',   TO_DATE('2024-02-07','YYYY-MM-DD'), 105000,  9000, 1100,  600, 200000),
(18, 2003, 'Amit Singh',     'Travel Diaries', 'Image', 'Travel',     'Thailand Beaches',         'Thailand',    'English', TO_DATE('2024-02-10','YYYY-MM-DD'), 175000, 14000, 1900,  900, 330000),
(19, 2006, 'Manish Jain',    'Finance World',  'Video', 'Finance',    'Budget Planning Guide',    'India',       'English', TO_DATE('2024-02-12','YYYY-MM-DD'), 145000, 11500, 1500,  700, 290000),
(20, 2005, 'Pooja Gupta',    'Fitness Freaks', 'Reel',  'Fitness',    'Home Workout Routine',     'India',       'English', TO_DATE('2024-02-15','YYYY-MM-DD'), 135000, 10500, 1300,  650, 270000);

COMMIT;

SELECT * FROM facebook_post_analytics;


/* ============================================================
   ANALYTICS QUERIES  (Q1 – Q15)
   ============================================================ */

/* ------------------------------------------------------------
   Q1 : Technology Content Reach Analysis
        Total reach per country — Technology posts,
        content containing 'o', Video or Reel,
        Jan 1 – Feb 15 2024 | Countries > 300,000 reach only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    SUM(REACH)                                              AS TOTAL_REACH
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    CONTENT_CATEGORY = 'Technology'
    AND POST_CONTENT LIKE '%o%'
    AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-15'
    AND POST_TYPE IN ('Video', 'Reel')
GROUP BY
    COUNTRY
HAVING
    SUM(REACH) > 300000
ORDER BY
    TOTAL_REACH;

/*
   OUTPUT (1 row):
   +---------+-------------+
   | COUNTRY | TOTAL_REACH |
   +---------+-------------+
   | India   |      530000 |
   +---------+-------------+
*/


/* ------------------------------------------------------------
   Q2 : Creator Engagement Performance
        Total engagement time per user and category —
        names starting 'R' or 'P', India / USA / UK,
        Jan 5 – Feb 10 2024 | Groups > 500,000 min only.
   ------------------------------------------------------------ */
SELECT
    USER_NAME,
    CONTENT_CATEGORY,
    SUM(ENGAGEMENT_TIME_MINUTES)                            AS TOTAL_ENGAGEMENT_TIME
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    (USER_NAME LIKE 'R%' OR USER_NAME LIKE 'P%')
    AND COUNTRY IN ('India', 'USA', 'UK')
    AND POST_DATE BETWEEN DATE '2024-01-05' AND DATE '2024-02-10'
GROUP BY
    USER_NAME,
    CONTENT_CATEGORY
HAVING
    SUM(ENGAGEMENT_TIME_MINUTES) > 500000
ORDER BY
    TOTAL_ENGAGEMENT_TIME DESC;

/*
   OUTPUT (2 rows):
   +----------------+------------------+-----------------------+
   | USER_NAME      | CONTENT_CATEGORY | TOTAL_ENGAGEMENT_TIME |
   +----------------+------------------+-----------------------+
   | Rohit Malhotra | Gaming           |               1420000 |
   | Rahul Sharma   | Technology       |               1020000 |
   +----------------+------------------+-----------------------+
*/


/* ------------------------------------------------------------
   Q3 : Gaming Category Popularity
        Average likes per country — Gaming posts,
        content containing 'G', Jan 1 – Feb 28 2024
        | Countries with avg likes > 18,000 only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    CONTENT_CATEGORY,
    ROUND(AVG(LIKES), 2)                                    AS AVERAGE_LIKES
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    CONTENT_CATEGORY = 'Gaming'
    AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'
    AND POST_CONTENT LIKE '%G%'
GROUP BY
    COUNTRY,
    CONTENT_CATEGORY
HAVING
    AVG(LIKES) > 18000
ORDER BY
    AVERAGE_LIKES DESC;

/*
   OUTPUT (1 row):
   +---------+------------------+---------------+
   | COUNTRY | CONTENT_CATEGORY | AVERAGE_LIKES |
   +---------+------------------+---------------+
   | USA     | Gaming           |      21000.00 |
   +---------+------------------+---------------+
*/


/* ------------------------------------------------------------
   Q4 : Video Post Engagement Summary
        Total likes and shares per category and country —
        Video posts, content containing 'e',
        Jan 1 – Feb 28 2024 | Total shares > 1,500 only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    CONTENT_CATEGORY,
    SUM(LIKES)                                              AS TOTAL_LIKES,
    SUM(SHARES)                                             AS TOTAL_SHARES
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    POST_TYPE = 'Video'
    AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'
    AND POST_CONTENT LIKE '%e%'
GROUP BY
    COUNTRY,
    CONTENT_CATEGORY
HAVING
    SUM(SHARES) > 1500
ORDER BY
    TOTAL_LIKES DESC;

/*
   OUTPUT (1 row):
   +---------+------------------+-------------+--------------+
   | COUNTRY | CONTENT_CATEGORY | TOTAL_LIKES | TOTAL_SHARES |
   +---------+------------------+-------------+--------------+
   | USA     | Gaming           |       41000 |         3100 |
   +---------+------------------+-------------+--------------+
*/


/* ------------------------------------------------------------
   Q5 : Finance Content Regional Analysis
        Total reach per language and country — Finance posts,
        user names containing 'a', Jan 1 – Feb 28 2024
        | Groups > 250,000 reach only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    LANGUAGE,
    SUM(REACH)                                              AS TOTAL_REACH
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    CONTENT_CATEGORY = 'Finance'
    AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'
    AND LOWER(USER_NAME) LIKE '%a%'
GROUP BY
    COUNTRY,
    LANGUAGE
HAVING
    SUM(REACH) > 250000
ORDER BY
    TOTAL_REACH DESC;

/*
   OUTPUT (1 row):
   +---------+----------+-------------+
   | COUNTRY | LANGUAGE | TOTAL_REACH |
   +---------+----------+-------------+
   | India   | English  |      300000 |
   +---------+----------+-------------+
*/


/* ------------------------------------------------------------
   Q6 : Fitness Reel Performance
        Average engagement time per country — Fitness posts,
        reach between 100K–200K, content containing 'Work'
        | Countries with avg > 250,000 min only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    ROUND(AVG(ENGAGEMENT_TIME_MINUTES), 2)                  AS AVG_ENGAGEMENT
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    CONTENT_CATEGORY = 'Fitness'
    AND REACH BETWEEN 100000 AND 200000
    AND POST_CONTENT LIKE '%Work%'
GROUP BY
    COUNTRY
HAVING
    AVG(ENGAGEMENT_TIME_MINUTES) > 250000
ORDER BY
    AVG_ENGAGEMENT;

/*
   OUTPUT (1 row):
   +---------+----------------+
   | COUNTRY | AVG_ENGAGEMENT |
   +---------+----------------+
   | India   |      265000.00 |
   +---------+----------------+
*/


/* ------------------------------------------------------------
   Q7 : Multi-Country Travel and Lifestyle Report
        Total comments per country and category —
        Travel & Lifestyle, names starting 'A' or 'N',
        Jan 1 – Feb 28 2024 | Groups > 1,000 comments only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    CONTENT_CATEGORY,
    SUM(COMMENTS)                                           AS TOTAL_COMMENTS
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    CONTENT_CATEGORY IN ('Travel', 'Lifestyle')
    AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'
    AND (USER_NAME LIKE 'A%' OR USER_NAME LIKE 'N%')
GROUP BY
    COUNTRY,
    CONTENT_CATEGORY
HAVING
    SUM(COMMENTS) > 1000
ORDER BY
    TOTAL_COMMENTS;

/*
   OUTPUT (4 rows):
   +-------------+------------------+----------------+
   | COUNTRY     | CONTENT_CATEGORY | TOTAL_COMMENTS |
   +-------------+------------------+----------------+
   | UK          | Lifestyle        |           1500 |
   | Switzerland | Travel           |           1700 |
   | Thailand    | Travel           |           1900 |
   | France      | Travel           |           2000 |
   +-------------+------------------+----------------+
*/


/* ------------------------------------------------------------
   Q8 : Country-wise Content Comparison
        Total reach per category and language —
        India, USA, UK, content containing 'a',
        Jan 10 – Feb 15 2024 | Groups > 300,000 reach only.
   ------------------------------------------------------------ */
SELECT
    CONTENT_CATEGORY,
    LANGUAGE,
    SUM(REACH)                                              AS TOTAL_REACH
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    COUNTRY IN ('India', 'USA', 'UK')
    AND POST_CONTENT LIKE '%a%'
    AND POST_DATE BETWEEN DATE '2024-01-10' AND DATE '2024-02-15'
GROUP BY
    CONTENT_CATEGORY,
    LANGUAGE
HAVING
    SUM(REACH) > 300000
ORDER BY
    TOTAL_REACH DESC;

/*
   OUTPUT (2 rows):
   +------------------+----------+-------------+
   | CONTENT_CATEGORY | LANGUAGE | TOTAL_REACH |
   +------------------+----------+-------------+
   | Gaming           | English  |      480000 |
   | Technology       | English  |      380000 |
   +------------------+----------+-------------+
*/


/* ------------------------------------------------------------
   Q9 : High Share Engagement Analysis
        Total shares per country and post type —
        reach between 80K–250K, content containing 't',
        Jan 1 – Feb 28 2024 | Groups > 1,200 shares only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    POST_TYPE,
    SUM(SHARES)                                             AS TOTAL_SHARES
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'
    AND REACH BETWEEN 80000 AND 250000
    AND LOWER(POST_CONTENT) LIKE '%t%'
GROUP BY
    COUNTRY,
    POST_TYPE
HAVING
    SUM(SHARES) > 1200
ORDER BY
    TOTAL_SHARES DESC;

/*
   OUTPUT (4 rows):
   +---------+-----------+--------------+
   | COUNTRY | POST_TYPE | TOTAL_SHARES |
   +---------+-----------+--------------+
   | India   | Video     |         4800 |
   | USA     | Video     |         3100 |
   | India   | Reel      |         2100 |
   | USA     | Reel      |         1700 |
   +---------+-----------+--------------+
*/


/* ------------------------------------------------------------
   Q10 : User Performance by Category
         Total reach per user and category —
         India & USA, content containing 'i',
         Jan 1 – Feb 28 2024 | Groups > 300,000 reach only.
   ------------------------------------------------------------ */
SELECT
    USER_NAME,
    CONTENT_CATEGORY,
    SUM(REACH)                                              AS TOTAL_REACH
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    COUNTRY IN ('India', 'USA')
    AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'
    AND POST_CONTENT LIKE '%i%'
GROUP BY
    USER_NAME,
    CONTENT_CATEGORY
HAVING
    SUM(REACH) > 300000
ORDER BY
    TOTAL_REACH DESC;

/*
   OUTPUT (4 rows):
   +----------------+------------------+-------------+
   | USER_NAME      | CONTENT_CATEGORY | TOTAL_REACH |
   +----------------+------------------+-------------+
   | Rahul Sharma   | Technology       |      530000 |
   | Rohit Malhotra | Gaming           |      480000 |
   | Manish Jain    | Finance          |      440000 |
   | Pooja Gupta    | Fitness          |      385000 |
   +----------------+------------------+-------------+
*/


/* ------------------------------------------------------------
   Q11 : Lifestyle and Food Engagement
         Average likes per country — Lifestyle & Food,
         user names containing 'e', Jan 1 – Feb 28 2024
         | Countries with avg likes > 8,000 only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    ROUND(AVG(LIKES), 2)                                    AS AVG_LIKES
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    CONTENT_CATEGORY IN ('Lifestyle', 'Food')
    AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'
    AND LOWER(USER_NAME) LIKE '%e%'
GROUP BY
    COUNTRY
HAVING
    AVG(LIKES) > 8000
ORDER BY
    AVG_LIKES DESC;

/*
   OUTPUT (1 row):
   +---------+-----------+
   | COUNTRY | AVG_LIKES |
   +---------+-----------+
   | India   |   8500.00 |
   +---------+-----------+
*/


/* ------------------------------------------------------------
   Q12 : English Language Post Report
         Total engagement time per category and country —
         English language, content containing 'p',
         Jan 1 – Feb 28 2024 | Groups > 600,000 min only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    CONTENT_CATEGORY,
    SUM(ENGAGEMENT_TIME_MINUTES)                            AS TOTAL_ENGAGEMENT
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    LANGUAGE = 'English'
    AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'
    AND LOWER(POST_CONTENT) LIKE '%p%'
GROUP BY
    COUNTRY,
    CONTENT_CATEGORY
HAVING
    SUM(ENGAGEMENT_TIME_MINUTES) > 600000
ORDER BY
    TOTAL_ENGAGEMENT DESC;

/*
   OUTPUT (2 rows):
   +---------+------------------+------------------+
   | COUNTRY | CONTENT_CATEGORY | TOTAL_ENGAGEMENT |
   +---------+------------------+------------------+
   | USA     | Gaming           |           920000 |
   | India   | Technology       |           720000 |
   +---------+------------------+------------------+
*/


/* ------------------------------------------------------------
   Q13 : Technology vs Finance Performance
         Total reach per category and country —
         Technology & Finance, names starting 'M' or 'R',
         Jan 1 – Feb 28 2024 | Groups > 250,000 reach only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    CONTENT_CATEGORY,
    SUM(REACH)                                              AS TOTAL_REACH
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    CONTENT_CATEGORY IN ('Technology', 'Finance')
    AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'
    AND (USER_NAME LIKE 'M%' OR USER_NAME LIKE 'R%')
GROUP BY
    COUNTRY,
    CONTENT_CATEGORY
HAVING
    SUM(REACH) > 250000
ORDER BY
    TOTAL_REACH DESC;

/*
   OUTPUT (2 rows):
   +---------+------------------+-------------+
   | COUNTRY | CONTENT_CATEGORY | TOTAL_REACH |
   +---------+------------------+-------------+
   | India   | Technology       |      530000 |
   | India   | Finance          |      440000 |
   +---------+------------------+-------------+
*/


/* ------------------------------------------------------------
   Q14 : High Engagement Countries
         Total engagement time per country —
         Video or Reel, content containing 'o',
         Jan 1 – Feb 28 2024 | Countries > 800,000 min only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    SUM(ENGAGEMENT_TIME_MINUTES)                            AS TOTAL_ENGAGEMENT
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    POST_TYPE IN ('Video', 'Reel')
    AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'
    AND LOWER(POST_CONTENT) LIKE '%o%'
GROUP BY
    COUNTRY
HAVING
    SUM(ENGAGEMENT_TIME_MINUTES) > 800000
ORDER BY
    TOTAL_ENGAGEMENT DESC;

/*
   OUTPUT (2 rows):
   +---------+------------------+
   | COUNTRY | TOTAL_ENGAGEMENT |
   +---------+------------------+
   | India   |          2370000 |
   | USA     |           950000 |
   +---------+------------------+
*/


/* ------------------------------------------------------------
   Q15 : Premium Content Simulation (Video & Reel)
         Total reach per category and country —
         Video or Reel, reach between 100K–250K,
         user names containing 'a', Jan 1 – Feb 28 2024
         | Groups > 300,000 reach only.
   ------------------------------------------------------------ */
SELECT
    COUNTRY,
    CONTENT_CATEGORY,
    SUM(REACH)                                              AS TOTAL_REACH
FROM
    FACEBOOK_POST_ANALYTICS
WHERE
    POST_TYPE IN ('Video', 'Reel')
    AND POST_DATE BETWEEN DATE '2024-01-01' AND DATE '2024-02-28'
    AND REACH BETWEEN 100000 AND 250000
    AND LOWER(USER_NAME) LIKE '%a%'
GROUP BY
    COUNTRY,
    CONTENT_CATEGORY
HAVING
    SUM(REACH) > 300000
ORDER BY
    TOTAL_REACH DESC;

/*
   OUTPUT (4 rows):
   +---------+------------------+-------------+
   | COUNTRY | CONTENT_CATEGORY | TOTAL_REACH |
   +---------+------------------+-------------+
   | USA     | Gaming           |      700000 |
   | India   | Technology       |      530000 |
   | India   | Finance          |      440000 |
   | India   | Fitness          |      385000 |
   +---------+------------------+-------------+
*/
