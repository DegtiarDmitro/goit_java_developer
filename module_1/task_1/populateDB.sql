/*
-- Query: SELECT * FROM work_relationship.companies
LIMIT 0, 1000

-- Date: 2017-06-08 17:38
*/
INSERT INTO `companies` (`id_companies`,`name`,`registration_number`,`phone`,`address`) VALUES (1,'Apple','2321234567','111-111-11',NULL);
INSERT INTO `companies` (`id_companies`,`name`,`registration_number`,`phone`,`address`) VALUES (2,'Google','2342343565','222-222-22',NULL);
INSERT INTO `companies` (`id_companies`,`name`,`registration_number`,`phone`,`address`) VALUES (3,'EngaigePoint','4356346324','333-333-33',NULL);


/*
-- Query: SELECT * FROM work_relationship.customers
LIMIT 0, 1000

-- Date: 2017-06-08 17:41
*/
INSERT INTO `customers` (`id_customers`,`name`,`surname`,`email`,`address`,`phone`) VALUES (1,'David','First',NULL,NULL,NULL);
INSERT INTO `customers` (`id_customers`,`name`,`surname`,`email`,`address`,`phone`) VALUES (2,'Stiven','Second',NULL,NULL,NULL);
INSERT INTO `customers` (`id_customers`,`name`,`surname`,`email`,`address`,`phone`) VALUES (3,'Peter','Big',NULL,NULL,NULL);
INSERT INTO `customers` (`id_customers`,`name`,`surname`,`email`,`address`,`phone`) VALUES (4,'Ivan','Cloud',NULL,NULL,NULL);

/*
-- Query: SELECT * FROM work_relationship.developers
LIMIT 0, 1000

-- Date: 2017-06-08 17:44
*/
INSERT INTO `developers` (`id_developers`,`name`,`skype`,`phone`) VALUES (1,'Max',NULL,NULL);
INSERT INTO `developers` (`id_developers`,`name`,`skype`,`phone`) VALUES (2,'Jack',NULL,NULL);
INSERT INTO `developers` (`id_developers`,`name`,`skype`,`phone`) VALUES (3,'Semen',NULL,NULL);
INSERT INTO `developers` (`id_developers`,`name`,`skype`,`phone`) VALUES (4,'Peter',NULL,NULL);


/*
-- Query: SELECT * FROM work_relationship.projects
LIMIT 0, 1000

-- Date: 2017-06-08 17:47
*/
INSERT INTO `projects` (`id_projects`,`name`,`deadline`,`cost`) VALUES (1,'BigData',NULL,'50000');
INSERT INTO `projects` (`id_projects`,`name`,`deadline`,`cost`) VALUES (2,'Bank_1',NULL,'35000');
INSERT INTO `projects` (`id_projects`,`name`,`deadline`,`cost`) VALUES (3,'Automatization system',NULL,'22000');
INSERT INTO `projects` (`id_projects`,`name`,`deadline`,`cost`) VALUES (4,'Test system',NULL,'15000');
INSERT INTO `projects` (`id_projects`,`name`,`deadline`,`cost`) VALUES (5,'Provider system',NULL,'42000');
INSERT INTO `projects` (`id_projects`,`name`,`deadline`,`cost`) VALUES (6,'Cloud system',NULL,'60000');



/*
-- Query: SELECT * FROM work_relationship.skills
LIMIT 0, 1000

-- Date: 2017-06-08 17:48
*/
INSERT INTO `skills` (`id_skills`,`name`) VALUES (1,'C++');
INSERT INTO `skills` (`id_skills`,`name`) VALUES (2,'Java');
INSERT INTO `skills` (`id_skills`,`name`) VALUES (3,'HTML');
INSERT INTO `skills` (`id_skills`,`name`) VALUES (4,'PHP');



/*
-- Query: SELECT * FROM work_relationship.developers_skills
LIMIT 0, 1000

-- Date: 2017-06-08 17:52
*/
INSERT INTO `developers_skills` (`developers_id_developers`,`skills_id_skills`,`experience`) VALUES (1,2,1);
INSERT INTO `developers_skills` (`developers_id_developers`,`skills_id_skills`,`experience`) VALUES (2,3,2);
INSERT INTO `developers_skills` (`developers_id_developers`,`skills_id_skills`,`experience`) VALUES (2,1,1);
INSERT INTO `developers_skills` (`developers_id_developers`,`skills_id_skills`,`experience`) VALUES (3,1,1);
INSERT INTO `developers_skills` (`developers_id_developers`,`skills_id_skills`,`experience`) VALUES (4,4,1);



/*
-- Query: SELECT * FROM work_relationship.customers_projects
LIMIT 0, 1000

-- Date: 2017-06-08 17:52
*/
INSERT INTO `customers_projects`(`customers_id_customers`, `projects_id_projects`) VALUES(1,4);
INSERT INTO `customers_projects`(`customers_id_customers`, `projects_id_projects`) VALUES(2,2);
INSERT INTO `customers_projects`(`customers_id_customers`, `projects_id_projects`) VALUES(3,1);
INSERT INTO `customers_projects`(`customers_id_customers`, `projects_id_projects`) VALUES(4,3);
INSERT INTO `customers_projects`(`customers_id_customers`, `projects_id_projects`) VALUES(3,6);
INSERT INTO `customers_projects`(`customers_id_customers`, `projects_id_projects`) VALUES(1,5);



/*
-- Query: SELECT * FROM work_relationship.companies_projects
LIMIT 0, 1000

-- Date: 2017-06-08 17:52
*/
INSERT INTO `companies_projects`(`companies_id_companies`, `projects_id_projects`) VALUES(1,2);
INSERT INTO `companies_projects`(`companies_id_companies`, `projects_id_projects`) VALUES(1,3);
INSERT INTO `companies_projects`(`companies_id_companies`, `projects_id_projects`) VALUES(2,1);
INSERT INTO `companies_projects`(`companies_id_companies`, `projects_id_projects`) VALUES(2,6);
INSERT INTO `companies_projects`(`companies_id_companies`, `projects_id_projects`) VALUES(3,4);
INSERT INTO `companies_projects`(`companies_id_companies`, `projects_id_projects`) VALUES(3,5);



/*
-- Query: SELECT * FROM work_relationship.companies_projects
LIMIT 0, 1000

-- Date: 2017-06-08 17:52
*/
INSERT INTO `developers_projects`(`developers_id_developers`, `projects_id_projects`) VALUES(1,2);
INSERT INTO `developers_projects`(`developers_id_developers`, `projects_id_projects`) VALUES(2,1);
INSERT INTO `developers_projects`(`developers_id_developers`, `projects_id_projects`) VALUES(3,3);
INSERT INTO `developers_projects`(`developers_id_developers`, `projects_id_projects`) VALUES(4,4);
INSERT INTO `developers_projects`(`developers_id_developers`, `projects_id_projects`) VALUES(2,5);
INSERT INTO `developers_projects`(`developers_id_developers`, `projects_id_projects`) VALUES(4,6);