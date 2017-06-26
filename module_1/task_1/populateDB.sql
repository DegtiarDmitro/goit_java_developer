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

/*
-- Query: SELECT * FROM work_relationship.developers
LIMIT 0, 1000

-- Date: 2017-06-08 17:44
*/
INSERT INTO `developers` (`id_developers`,`name`,`skype`,`phone`) VALUES (1,'Max',NULL,NULL);
INSERT INTO `developers` (`id_developers`,`name`,`skype`,`phone`) VALUES (2,'Jack',NULL,NULL);
INSERT INTO `developers` (`id_developers`,`name`,`skype`,`phone`) VALUES (3,'Semen',NULL,NULL);


/*
-- Query: SELECT * FROM work_relationship.projects
LIMIT 0, 1000

-- Date: 2017-06-08 17:47
*/
INSERT INTO `projects` (`id_projects`,`name`,`deadline`) VALUES (1,'BigData',NULL);
INSERT INTO `projects` (`id_projects`,`name`,`deadline`) VALUES (2,'Bank_1',NULL);
INSERT INTO `projects` (`id_projects`,`name`,`deadline`) VALUES (3,'Automatization system',NULL);


/*
-- Query: SELECT * FROM work_relationship.skills
LIMIT 0, 1000

-- Date: 2017-06-08 17:48
*/
INSERT INTO `skills` (`id_skills`,`name`) VALUES (1,'C++');
INSERT INTO `skills` (`id_skills`,`name`) VALUES (2,'Java');
INSERT INTO `skills` (`id_skills`,`name`) VALUES (3,'HTML');



/*
-- Query: SELECT * FROM work_relationship.developers_skills
LIMIT 0, 1000

-- Date: 2017-06-08 17:52
*/
INSERT INTO `developers_skills` (`developers_id_developers`,`skills_id_skills`,`experience`) VALUES (1,2,1);
INSERT INTO `developers_skills` (`developers_id_developers`,`skills_id_skills`,`experience`) VALUES (2,3,2);
INSERT INTO `developers_skills` (`developers_id_developers`,`skills_id_skills`,`experience`) VALUES (3,1,1);


/*
-- Query: SELECT * FROM work_relationship.project_realization
LIMIT 0, 1000

-- Date: 2017-06-09 15:12
*/
INSERT INTO `project_realization` (`project_id`,`company_id`,`customer_id`,`developer_id`) VALUES (1,2,1,1);
INSERT INTO `project_realization` (`project_id`,`company_id`,`customer_id`,`developer_id`) VALUES (1,2,1,2);
INSERT INTO `project_realization` (`project_id`,`company_id`,`customer_id`,`developer_id`) VALUES (2,3,3,1);
INSERT INTO `project_realization` (`project_id`,`company_id`,`customer_id`,`developer_id`) VALUES (3,1,2,3);
