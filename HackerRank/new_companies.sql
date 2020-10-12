/*
https://www.hackerrank.com/challenges/the-company/problem
*/

SELECT co.company_code,
       co.founder,
       COUNT(DISTINCT(lm.lead_manager_code)),
       COUNT(DISTINCT(sm.senior_manager_code)),
       COUNT(DISTINCT(mgr.manager_code)),
       COUNT(DISTINCT(ee.employee_code))
FROM Company co, Lead_Manager lm, Senior_Manager sm, Manager mgr, Employee ee
WHERE co.company_code = lm.company_code
AND lm.lead_manager_code = sm.lead_manager_code
AND sm.senior_manager_code = mgr.senior_manager_code
AND mgr.manager_code = ee.manager_code
GROUP BY co.company_code,
         co.founder
