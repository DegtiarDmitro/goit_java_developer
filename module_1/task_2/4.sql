#Добавить поле (cost - стоимость) в таблицу Projects
ALTER TABLE `work_relationship`.`projects`
ADD COLUMN `cost` FLOAT NULL AFTER `deadline`;