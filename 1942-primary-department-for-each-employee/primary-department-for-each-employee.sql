# Write your MySQL query statement below
with cte1 as(
    select employee_id, department_id, primary_flag
    from Employee
    where primary_flag = "Y"),
cte2 as(
    select employee_id, department_id, count(department_id) as cnt, primary_flag
    from employee
    group by employee_id
    having cnt < 2 and primary_flag = "N")
select employee_id, department_id
from cte1
union
select employee_id, department_id
from cte2;