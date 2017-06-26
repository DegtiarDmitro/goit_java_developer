#Найти самый дорогой проект (исходя из ЗП разработчиков)
SELECT name
	FROM(
		SELECT max(t1.totalSalary), t1.name
		FROM (
			SELECT sum(salary) as totalSalary, p.name
			FROM developers AS d INNER JOIN project_realization AS pr
			ON d.id_developers = pr.developer_id
			INNER JOIN projects AS p
			ON pr.project_id = p.id_projects
			GROUP BY pr.project_id
            ) as t1
		) as t2;