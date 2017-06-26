#Добавить разаработчикам поле (salary - зарплата)
ALTER TABLE `work_relationship`.`developers` 
ADD COLUMN `salary` FLOAT NOT NULL AFTER `phone`;