#Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль
SELECT avg(dev.salary) AS avarage_salary
FROM developers AS dev INNER JOIN project_realization AS proj_real ON dev.id_developers = proj_real.developer_id
INNER JOIN projects AS proj ON proj_real.project_id = proj.id_projects
WHERE proj.cost IN (
	SELECT min(cost) 
    FROM projects
    );