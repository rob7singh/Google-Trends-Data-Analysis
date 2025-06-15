select
extract(month from week_start_date) as month_number,
term,
avg(score) as average_monthly_score
from googlr-trends-project.my_trends_data.my_trends_data
group by month_number, term
order by month_number ASC, average_monthly_score DESC;