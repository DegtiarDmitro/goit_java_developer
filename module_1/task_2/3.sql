#Вычислить общую ЗП всех Java разработчиков.
SELECT sum(dev.salary) as totalSalary
FROM developers AS dev INNER JOIN developers_skills AS ds
ON dev.id_developers = ds.developers_id_developers
INNER JOIN skills AS s ON ds.skills_id_skills = s.id_skills
WHERE s.name = 'JAVA';