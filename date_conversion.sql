create view postings_100k as 
with cte as (SELECT  [job_id]
      ,[job_title]
      ,[company_id]
      ,[company_name]
      ,[industry_id]
      ,[industry_name]
      ,[job_description]
      ,[normalized_salary]
      ,[max_salary]
      ,[min_salary]
      ,[pay_period]
      ,[work_type]
      ,[views]
      ,[num_applicants]
      ,[remote_allowed]
      ,[application_type]
      ,[experience_level]
      ,[listed_time]
      ,[expiry_time]
      ,[posting_domain]
      ,[currency]
      ,[location]
      ,round([zip_code],1) as zip_code
      ,DATEADD(SECOND, [listed_time] / 1000, '1970-01-01') AS lis_datetime,
    CAST(DATEADD(SECOND, [listed_time] / 1000, '1970-01-01') AS DATE) AS lis_date
    ,DATEADD(SECOND, [expiry_time] / 1000, '1970-01-01') AS exp_datetime,
    CAST(DATEADD(SECOND, [expiry_time] / 1000, '1970-01-01') AS DATE) AS exp_date
    FROM [linked_in_scraping].[dbo].[final_postings]
    where [normalized_salary]>=100000)
    select 
    [job_id]
      ,[job_title]
      ,[company_id]
      ,[company_name]
      ,[industry_id]
      ,[industry_name]
      ,[job_description]
      ,[normalized_salary]
      ,[max_salary]
      ,[min_salary]
      ,[pay_period]
      ,[work_type]
      ,[views]
      ,[num_applicants]
      ,[remote_allowed]
      ,[experience_level]
      ,[lis_date]
      ,year([lis_date]) as listed_year
      ,Datename(MONTH,[lis_date]) as listed_month
      ,DAY([lis_date])as listed_day
      ,[exp_date]
      ,[currency]
      ,[location]
      ,[zip_code]
      ,[application_type]
      ,[posting_domain]
       from cte;
       