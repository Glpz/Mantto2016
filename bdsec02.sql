SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`estado`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`estado` (
  `idEstado` INT NOT NULL ,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`idEstado`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`lugares`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`lugares` (
  `idLugares` INT NOT NULL ,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  `poblacion` VARCHAR(45) NULL ,
  `coordenadas` VARCHAR(45) NULL ,
  `idEstado` INT NOT NULL ,
  `idLugar` INT NOT NULL ,
  `Estado_idEstado` INT NOT NULL ,
  PRIMARY KEY (`idLugares`, `idEstado`, `idLugar`, `Estado_idEstado`) ,
  INDEX `fk_Lugares_Estado_idx` (`Estado_idEstado` ASC) ,
  CONSTRAINT `fk_Lugares_Estado`
    FOREIGN KEY (`Estado_idEstado` )
    REFERENCES `mydb`.`estado` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`usuarios` (
  `idUsuario` INT NOT NULL ,
  `nombrePrefijo` VARCHAR(45) NULL ,
  `nombreNombre` VARCHAR(45) NULL ,
  `nombreApellidoPaterno` VARCHAR(45) NULL ,
  `nombreApellidoMaterno` VARCHAR(45) NULL ,
  `nombrePosfijo` VARCHAR(45) NULL ,
  `nombreIniciales` VARCHAR(45) NULL ,
  `nombreUsuario` VARCHAR(45) NULL ,
  `claveAcceso` VARCHAR(45) NULL ,
  PRIMARY KEY (`idUsuario`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`recomendaciones`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`recomendaciones` (
  `idRecomendaciones` INT NOT NULL ,
  `usuario` VARCHAR(45) NULL ,
  `fechahora` DATETIME NULL ,
  `comentario` VARCHAR(45) NULL ,
  `calificacion` FLOAT NULL ,
  `idLugar` INT NOT NULL ,
  `idEstado` INT NOT NULL ,
  `Estado_idEstado` INT NOT NULL ,
  `Lugares_idLugares` INT NOT NULL ,
  `Lugares_idEstado` INT NOT NULL ,
  `Lugares_idLugar` INT NOT NULL ,
  `Lugares_Estado_idEstado` INT NOT NULL ,
  `usuarios_idUsuario` INT NOT NULL ,
  PRIMARY KEY (`idRecomendaciones`, `idLugar`, `idEstado`, `Estado_idEstado`, `Lugares_idLugares`, `Lugares_idEstado`, `Lugares_idLugar`, `Lugares_Estado_idEstado`, `usuarios_idUsuario`) ,
  INDEX `fk_Recomendaciones_Estado1_idx` (`Estado_idEstado` ASC) ,
  INDEX `fk_Recomendaciones_Lugares1_idx` (`Lugares_idLugares` ASC, `Lugares_idEstado` ASC, `Lugares_idLugar` ASC, `Lugares_Estado_idEstado` ASC) ,
  INDEX `fk_Recomendaciones_usuarios1_idx` (`usuarios_idUsuario` ASC) ,
  CONSTRAINT `fk_Recomendaciones_Estado1`
    FOREIGN KEY (`Estado_idEstado` )
    REFERENCES `mydb`.`estado` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Recomendaciones_Lugares1`
    FOREIGN KEY (`Lugares_idLugares` , `Lugares_idEstado` , `Lugares_idLugar` , `Lugares_Estado_idEstado` )
    REFERENCES `mydb`.`lugares` (`idLugares` , `idEstado` , `idLugar` , `Estado_idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Recomendaciones_usuarios1`
    FOREIGN KEY (`usuarios_idUsuario` )
    REFERENCES `mydb`.`usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`roles`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`roles` (
  `idRol` INT NOT NULL ,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`idRol`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuarios_has_Lugares`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`usuarios_has_Lugares` (
  `usuarios_idUsuario` INT NOT NULL ,
  `Lugares_idLugares` INT NOT NULL ,
  `Lugares_idEstado` INT NOT NULL ,
  `Lugares_idLugar` INT NOT NULL ,
  `Lugares_Estado_idEstado` INT NOT NULL ,
  PRIMARY KEY (`usuarios_idUsuario`, `Lugares_idLugares`, `Lugares_idEstado`, `Lugares_idLugar`, `Lugares_Estado_idEstado`) ,
  INDEX `fk_usuarios_has_Lugares_Lugares1_idx` (`Lugares_idLugares` ASC, `Lugares_idEstado` ASC, `Lugares_idLugar` ASC, `Lugares_Estado_idEstado` ASC) ,
  INDEX `fk_usuarios_has_Lugares_usuarios1_idx` (`usuarios_idUsuario` ASC) ,
  CONSTRAINT `fk_usuarios_has_Lugares_usuarios1`
    FOREIGN KEY (`usuarios_idUsuario` )
    REFERENCES `mydb`.`usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_has_Lugares_Lugares1`
    FOREIGN KEY (`Lugares_idLugares` , `Lugares_idEstado` , `Lugares_idLugar` , `Lugares_Estado_idEstado` )
    REFERENCES `mydb`.`lugares` (`idLugares` , `idEstado` , `idLugar` , `Estado_idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`estado_has_usuarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`estado_has_usuarios` (
  `Estado_idEstado` INT NOT NULL ,
  `usuarios_idUsuario` INT NOT NULL ,
  PRIMARY KEY (`Estado_idEstado`, `usuarios_idUsuario`) ,
  INDEX `fk_Estado_has_usuarios_usuarios1_idx` (`usuarios_idUsuario` ASC) ,
  INDEX `fk_Estado_has_usuarios_Estado1_idx` (`Estado_idEstado` ASC) ,
  CONSTRAINT `fk_Estado_has_usuarios_Estado1`
    FOREIGN KEY (`Estado_idEstado` )
    REFERENCES `mydb`.`estado` (`idEstado` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Estado_has_usuarios_usuarios1`
    FOREIGN KEY (`usuarios_idUsuario` )
    REFERENCES `mydb`.`usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuariorol`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`usuariorol` (
  `idUsuario` INT NOT NULL ,
  `idRol` INT NOT NULL ,
  PRIMARY KEY (`idUsuario`, `idRol`) ,
  INDEX `fk_usuarios_has_roles_roles1_idx` (`idRol` ASC) ,
  INDEX `fk_usuarios_has_roles_usuarios1_idx` (`idUsuario` ASC) ,
  CONSTRAINT `fk_usuarios_has_roles_usuarios1`
    FOREIGN KEY (`idUsuario` )
    REFERENCES `mydb`.`usuarios` (`idUsuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuarios_has_roles_roles1`
    FOREIGN KEY (`idRol` )
    REFERENCES `mydb`.`roles` (`idRol` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
