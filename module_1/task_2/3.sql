#Вычислить общую ЗП всех Java разработчиков.
SELECT sum(d.salary) as totalSalary
FROM developers AS d INNER JOIN developers_skills AS ds
ON d.id_developers = ds.developers_id_developers
INNER JOIN skills AS s ON ds.skills_id_skills = s.id_skills
WHERE s.name = 'JAVA';