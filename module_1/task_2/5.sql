#Найти клиента (customer), которая приносит меньше всего прибыли компании (company) для каждой из компаний
SELECT in_t_1.comp_name, in_t_1.cust_name, min(in_t_1.cust_invest)
FROM(
    SELECT com.name as comp_name, cust.name as cust_name, sum(proj.cost) as cust_invest
    FROM customers AS cust
    INNER JOIN customers_projects AS cust_proj ON cust.id_customers = cust_proj.customers_id_customers
    INNER JOIN projects AS proj ON proj.id_projects = cust_proj.projects_id_projects
    INNER JOIN companies_projects AS com_proj ON com_proj.projects_id_projects = proj.id_projects
    INNER JOIN companies AS com ON com_proj.companies_id_companies = com.id_companies
    GROUP BY com.name, cust.name
	) AS in_t_1
GROUP BY in_t_1.comp_name;