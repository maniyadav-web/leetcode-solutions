# Write your MySQL query statement below
select e1.employee_id, e1.name, count(e.employee_id) as reports_count, round(avg(e.age)) as average_age
from employees e1
join employees e
on e.reports_to = e1.employee_id
WHERE e.reports_to IS NOT NULL
group by e1.employee_id, e1.name
order by e1.employee_id;