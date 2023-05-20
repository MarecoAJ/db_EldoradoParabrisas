CREATE TABLE `db_eldoradoparabrisas`.`contactoCartera` (
`iuContactoCartera` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`iuCartera` INT PRIMARY KEY NOT NULL,
`anioVeh` VARCHAR(15) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`contactoCartera` ADD INDEX `cartera_idx` (`iuCartera` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`contactoCartera` ADD CONSTRAINT `cartera` FOREIGN KEY (`iuCartera`)
REFERENCES `db_eldoradoparabrisas`.`cartera` (`iuCartera`) ON DELETE NO ACTION ON UPDATE NO ACTION;