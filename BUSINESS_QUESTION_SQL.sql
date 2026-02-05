select * from postings_cleaned;

--(1)Total Job Postings
select count(job_id)as Total_Job_postings
from postings_cleaned;

-- (3)Total Applicants
select sum([num_applicants]) as Total_applicants
from postings_cleaned

--(4)Avg Applicants per Job
select [job_title] as Job_Title,
avg([num_applicants]) as Average_Applicants
from postings_cleaned
group by job_title
order by 2 desc

with cte as(select sum([num_applicants]) as Total_applicants,
count([job_id]) as Total_jobs
from postings_cleaned),
cte2 as(select (Total_applicants/Total_jobs) as Avg_Applicants_per_Job
from cte)
select round([Avg_Applicants_per_Job],2)as Avg_Applicants_per_Job
from cte2;

--(5)Avg Market Salary

select round(avg([normalized_salary]),0) as Avg_Market_Salary
from postings_cleaned;

--(6)Remote Jobs %
SELECT 
    ISNULL(
        (COUNT(CASE WHEN remote_allowed = 1 THEN 1 END) * 1.0) 
        / NULLIF(COUNT(*), 0), 
    0) AS RemoteJobsPercentage
FROM postings_cleaned;

--(7) Sponsored Jobs %
SELECT 
    round(ISNULL(
        (COUNT(CASE WHEN remote_allowed = 1 THEN 1 END) * 1.0) 
        / NULLIF(COUNT(*), 0), 
    0),2) AS RemoteJobsPercentage,
    round(ISNULL(
        (COUNT(CASE WHEN sponsored = 1 THEN 1 END) * 1.0) 
        / NULLIF(COUNT(*), 0), 
    0),2) AS SponsoredJobsPercentage
FROM postings_cleaned;