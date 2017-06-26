#Найти клиента (customer), которая приносит меньше всего прибыли компании (company) для каждой из компаний
SELECT in_t_1.comp_name, in_t_1.cust_name, min(in_t_1.cust_invest)
FROM(
	SELECT com.name as comp_name, cust.name as cust_name, sum(proj.cost) as cust_invest
	FROM companies AS com INNER JOIN project_realization AS pr_real ON com.id_companies = pr_real.company_id
	INNER JOIN customers AS cust ON cust.id_customers = pr_real.customer_id
	INNER JOIN projects AS proj ON proj.id_projects = pr_real.project_id
	GROUP BY com.name, cust.name
	) AS in_t_1
GROUP BY in_t_1.comp_name;