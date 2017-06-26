-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema work_relationship
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema work_relationship
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `work_relationship` DEFAULT CHARACTER SET utf8 ;
USE `work_relationship` ;

-- -----------------------------------------------------
-- Table `work_relationship`.`companies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `work_relationship`.`companies` (
  `id_companies` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `registration_number` VARCHAR(20) NOT NULL,
  `phone` VARCHAR(15) NULL DEFAULT NULL,
  `address` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id_companies`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `work_relationship`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `work_relationship`.`customers` (
  `id_customers` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `address` VARCHAR(255) NULL DEFAULT NULL,
  `phone` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id_customers`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `work_relationship`.`developers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `work_relationship`.`developers` (
  `id_developers` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `skype` VARCHAR(45) NULL DEFAULT NULL,
  `phone` VARCHAR(15) NULL DEFAULT NULL,
  `salary` FLOAT NOT NULL,
  PRIMARY KEY (`id_developers`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `work_relationship`.`skills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `work_relationship`.`skills` (
  `id_skills` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_skills`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `work_relationship`.`developers_skills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `work_relationship`.`developers_skills` (
  `developers_id_developers` INT(11) NOT NULL,
  `skills_id_skills` INT(11) NOT NULL,
  `experience` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`developers_id_developers`, `skills_id_skills`),
  INDEX `fk_developers_has_skills_skills1_idx` (`skills_id_skills` ASC),
  INDEX `fk_developers_has_skills_developers_idx` (`developers_id_developers` ASC),
  CONSTRAINT `fk_developers_has_skills_developers`
    FOREIGN KEY (`developers_id_developers`)
    REFERENCES `work_relationship`.`developers` (`id_developers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_developers_has_skills_skills1`
    FOREIGN KEY (`skills_id_skills`)
    REFERENCES `work_relationship`.`skills` (`id_skills`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `work_relationship`.`projects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `work_relationship`.`projects` (
  `id_projects` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `deadline` INT(11) NULL DEFAULT NULL,
  `cost` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`id_projects`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `work_relationship`.`project_realization`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `work_relationship`.`project_realization` (
  `project_id` INT NOT NULL,
  `company_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `developer_id` INT NOT NULL,
  INDEX `FK_ID_PROJECTS_PROJECTS_idx` (`project_id` ASC),
  INDEX `FK_ID_COMPANIES_COMPANIES_idx` (`company_id` ASC),
  INDEX `FK_ID_CUSTOMERS_CUSTOMERS_idx` (`customer_id` ASC),
  PRIMARY KEY (`project_id`, `company_id`, `customer_id`, `developer_id`),
  INDEX `FK_ID_DEVELOPERS_DEVELOPERS_idx` (`developer_id` ASC),
  CONSTRAINT `FK_ID_PROJECTS_PROJECTS`
    FOREIGN KEY (`project_id`)
    REFERENCES `work_relationship`.`projects` (`id_projects`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_ID_COMPANIES_COMPANIES`
    FOREIGN KEY (`company_id`)
    REFERENCES `work_relationship`.`companies` (`id_companies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_ID_CUSTOMERS_CUSTOMERS`
    FOREIGN KEY (`customer_id`)
    REFERENCES `work_relationship`.`customers` (`id_customers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_ID_DEVELOPERS_DEVELOPERS`
    FOREIGN KEY (`developer_id`)
    REFERENCES `work_relationship`.`developers` (`id_developers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
