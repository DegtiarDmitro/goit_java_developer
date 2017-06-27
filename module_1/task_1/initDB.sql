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
-- Table `work_relationship`.`developers_projects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `work_relationship`.`developers_projects` (
  `developers_id_developers` INT(11) NOT NULL,
  `projects_id_projects` INT(11) NOT NULL,
  PRIMARY KEY (`developers_id_developers`, `projects_id_projects`),
  INDEX `fk_developers_has_projects_projects1_idx` (`projects_id_projects` ASC),
  INDEX `fk_developers_has_projects_developers1_idx` (`developers_id_developers` ASC),
  CONSTRAINT `fk_developers_has_projects_developers1`
    FOREIGN KEY (`developers_id_developers`)
    REFERENCES `work_relationship`.`developers` (`id_developers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_developers_has_projects_projects1`
    FOREIGN KEY (`projects_id_projects`)
    REFERENCES `work_relationship`.`projects` (`id_projects`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `work_relationship`.`companies_projects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `work_relationship`.`companies_projects` (
  `companies_id_companies` INT(11) NOT NULL,
  `projects_id_projects` INT(11) NOT NULL,
  PRIMARY KEY (`companies_id_companies`, `projects_id_projects`),
  INDEX `fk_companies_has_projects_projects1_idx` (`projects_id_projects` ASC),
  INDEX `fk_companies_has_projects_companies1_idx` (`companies_id_companies` ASC),
  CONSTRAINT `fk_companies_has_projects_companies1`
    FOREIGN KEY (`companies_id_companies`)
    REFERENCES `work_relationship`.`companies` (`id_companies`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_companies_has_projects_projects1`
    FOREIGN KEY (`projects_id_projects`)
    REFERENCES `work_relationship`.`projects` (`id_projects`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `work_relationship`.`customers_projects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `work_relationship`.`customers_projects` (
  `customers_id_customers` INT(11) NOT NULL,
  `projects_id_projects` INT(11) NOT NULL,
  PRIMARY KEY (`customers_id_customers`, `projects_id_projects`),
  INDEX `fk_customers_has_projects_projects1_idx` (`projects_id_projects` ASC),
  INDEX `fk_customers_has_projects_customers1_idx` (`customers_id_customers` ASC),
  CONSTRAINT `fk_customers_has_projects_customers1`
    FOREIGN KEY (`customers_id_customers`)
    REFERENCES `work_relationship`.`customers` (`id_customers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_has_projects_projects1`
    FOREIGN KEY (`projects_id_projects`)
    REFERENCES `work_relationship`.`projects` (`id_projects`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
