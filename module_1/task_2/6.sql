#Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль
SELECT avg(dev.salary) AS avarage_salary
FROM projects AS proj
INNER JOIN developers_projects AS dev_proj ON proj.id_projects = dev_proj.projects_id_projects
INNER JOIN developers AS dev ON dev.id_developers = dev_proj.developers_id_developers
WHERE proj.cost IN (
	SELECT min(cost) 
    FROM projects
    );