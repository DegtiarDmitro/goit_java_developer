#Найти самый дорогой проект (исходя из ЗП разработчиков)
SELECT sum(dev.salary) as totalSalary, proj.name
FROM developers AS dev 
INNER JOIN developers_projects AS dev_proj ON dev.id_developers = dev_proj.developers_id_developers
INNER JOIN projects as proj ON proj.id_projects = dev_proj.projects_id_projects 
GROUP BY proj.name
ORDER BY totalSalary DESC
LIMIT 1