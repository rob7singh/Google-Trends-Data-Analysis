#  Google Trends Analysis: Monthly Fitness Term Popularity
This project analyzes Google Trends data to identify the **Fitness, Nutrition and Wellbeing** over time, aggregated by **month**.

## 📊 Query Output Example
The SQL query returns a list of search terms with their **average popularity scores** per month:
1	1	fitness	75.608695652173921
2	1	nutrition	22.217391304347828
3	1	wellness	10.217391304347824
4	2	fitness	71.449999999999989
5	2	nutrition	22.200000000000003
6	2	wellness	10.899999999999999

## 📈 Sample Chart
![Trends](https://github.com/user-attachments/assets/a35f16a7-e0a2-42b0-92ff-896f2d4ed736)


> This chart shows how the popularity of top fitness-related terms varies across months

## 🧠 SQL Query

```sql
SELECT
    EXTRACT(MONTH FROM week_start_date) AS month_number,
    term,
    AVG(score) AS average_monthly_score
FROM
    `your-project-id.my_google_trends.my_fitness_trends`
GROUP BY
    month_number, term
ORDER BY
    month_number ASC, average_monthly_score DESC;
