CREATE TABLE `db_eldoradoparabrisas`.`detallesEnVehiculos` (
`iuDetallesVisibles` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`numExamenVehe` INT PRIMARY KEY NOT NULL,
`descrDetallesVisibles` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`detallesEnVehiculos` ADD INDEX `examen_idx` (`numExamenVehe` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`detallesEnVehiculos` ADD CONSTRAINT `examen` FOREIGN KEY (`numExamenVehe`)
REFERENCES `db_eldoradoparabrisas`.`examenVehiculos` (`numExamenVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;