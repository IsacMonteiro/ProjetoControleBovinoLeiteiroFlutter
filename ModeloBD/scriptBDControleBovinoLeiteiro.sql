-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema controle_bovino_leiteiro
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema controle_bovino_leiteiro
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `controle_bovino_leiteiro` DEFAULT CHARACTER SET utf8 ;
USE `controle_bovino_leiteiro` ;

-- -----------------------------------------------------
-- Table `controle_bovino_leiteiro`.`ProdLeite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controle_bovino_leiteiro`.`ProdLeite` (
  `codProdLeite` INT NOT NULL,
  `dataProdLeite` DATE NOT NULL,
  `qtdProdLeite` DOUBLE NOT NULL,
  PRIMARY KEY (`codProdLeite`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `controle_bovino_leiteiro`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controle_bovino_leiteiro`.`Categoria` (
  `codCategoria` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `controle_bovino_leiteiro`.`Animal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controle_bovino_leiteiro`.`Animal` (
  `codAnimal` INT NOT NULL,
  `codProdLeite` INT NOT NULL,
  `codCategoria` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `dataNascimento` DATE NOT NULL,
  `sexo` VARCHAR(45) NOT NULL,
  `raca` VARCHAR(45) NOT NULL,
  `idade` INT NOT NULL,
  `formaManejo` VARCHAR(45) NOT NULL,
  `mediaLeite` DOUBLE NULL,
  PRIMARY KEY (`codAnimal`),
  INDEX `fk_Animal_ProdLeite1_idx` (`codProdLeite` ASC) VISIBLE,
  INDEX `fk_Animal_Categoria1_idx` (`codCategoria` ASC) VISIBLE,
  CONSTRAINT `fk_Animal_ProdLeite1`
    FOREIGN KEY (`codProdLeite`)
    REFERENCES `controle_bovino_leiteiro`.`ProdLeite` (`codProdLeite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Animal_Categoria1`
    FOREIGN KEY (`codCategoria`)
    REFERENCES `controle_bovino_leiteiro`.`Categoria` (`codCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `controle_bovino_leiteiro`.`Comprador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controle_bovino_leiteiro`.`Comprador` (
  `codComprador` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`codComprador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `controle_bovino_leiteiro`.`VendaAnimal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controle_bovino_leiteiro`.`VendaAnimal` (
  `codVendaAnimal` INT NOT NULL,
  `codComprador` INT NOT NULL,
  `dataVendaAnimal` DATE NOT NULL,
  `valorTotalAnimal` DOUBLE NOT NULL,
  PRIMARY KEY (`codVendaAnimal`),
  INDEX `fk_VendaAnimal_Comprador_idx` (`codComprador` ASC) VISIBLE,
  CONSTRAINT `fk_VendaAnimal_Comprador`
    FOREIGN KEY (`codComprador`)
    REFERENCES `controle_bovino_leiteiro`.`Comprador` (`codComprador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `controle_bovino_leiteiro`.`VendaLeite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controle_bovino_leiteiro`.`VendaLeite` (
  `codVendaLeite` INT NOT NULL,
  `codComprador` INT NOT NULL,
  `dataVendaLeite` DATE NOT NULL,
  `valorTotalLeite` DOUBLE NOT NULL,
  PRIMARY KEY (`codVendaLeite`),
  INDEX `fk_VendaLeite_Comprador1_idx` (`codComprador` ASC) VISIBLE,
  CONSTRAINT `fk_VendaLeite_Comprador1`
    FOREIGN KEY (`codComprador`)
    REFERENCES `controle_bovino_leiteiro`.`Comprador` (`codComprador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `controle_bovino_leiteiro`.`ItensVenda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controle_bovino_leiteiro`.`ItensVenda` (
  `codItensVenda` INT NOT NULL,
  `codVendaAnimal` INT NOT NULL,
  `codAnimal` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `valorUnitario` DOUBLE NOT NULL,
  `valorTotalItemAnimal` DOUBLE NOT NULL,
  PRIMARY KEY (`codItensVenda`, `codVendaAnimal`, `codAnimal`),
  INDEX `fk_VendaAnimal_has_Animal_Animal1_idx` (`codAnimal` ASC) VISIBLE,
  INDEX `fk_VendaAnimal_has_Animal_VendaAnimal1_idx` (`codVendaAnimal` ASC) VISIBLE,
  CONSTRAINT `fk_VendaAnimal_has_Animal_VendaAnimal1`
    FOREIGN KEY (`codVendaAnimal`)
    REFERENCES `controle_bovino_leiteiro`.`VendaAnimal` (`codVendaAnimal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VendaAnimal_has_Animal_Animal1`
    FOREIGN KEY (`codAnimal`)
    REFERENCES `controle_bovino_leiteiro`.`Animal` (`codAnimal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `controle_bovino_leiteiro`.`VendaProdLeite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controle_bovino_leiteiro`.`VendaProdLeite` (
  `codVendaProdLeite` INT NOT NULL,
  `codVendaLeite` INT NOT NULL,
  `codProdLeite` INT NOT NULL,
  `qtdLeite` DOUBLE NOT NULL,
  `valorLitro` DOUBLE NOT NULL,
  `valorTotalItemLeite` DOUBLE NOT NULL,
  PRIMARY KEY (`codVendaProdLeite`, `codVendaLeite`, `codProdLeite`),
  INDEX `fk_VendaLeite_has_ProdLeite_ProdLeite1_idx` (`codProdLeite` ASC) VISIBLE,
  INDEX `fk_VendaLeite_has_ProdLeite_VendaLeite1_idx` (`codVendaLeite` ASC) VISIBLE,
  CONSTRAINT `fk_VendaLeite_has_ProdLeite_VendaLeite1`
    FOREIGN KEY (`codVendaLeite`)
    REFERENCES `controle_bovino_leiteiro`.`VendaLeite` (`codVendaLeite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VendaLeite_has_ProdLeite_ProdLeite1`
    FOREIGN KEY (`codProdLeite`)
    REFERENCES `controle_bovino_leiteiro`.`ProdLeite` (`codProdLeite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
