CREATE TABLE `db_eldoradoparabrisas`.`examenVehiculo` (
`numExamenVeh` INT PRIMARY KEY NOT NULL,
`nombExaminador` VARCHAR(45)  NULL,
`iuCartera` INT NULL,
`dominioVeh` VARCHAR(15) NULL,
`fechaExamen` VARCHAR(15) NULL,
`patenteVeh` VARCHAR(15) NULL,
`posibleRetirador` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`examenVehiculo` ADD INDEX `vehiculo_idx` (`dominioVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`examenVehiculo` ADD CONSTRAINT `vehiculo` FOREIGN KEY (`dominioVeh`)
REFERENCES `db_eldoradoparabrisas`.`vehiculo` (`dominioVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`examenVehiculo` ADD INDEX `cartera_idx` (`iuCartera` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`examenVehiculo` ADD CONSTRAINT `carter` FOREIGN KEY (`iuCartera`)
REFERENCES `db_eldoradoparabrisas`.`cartera` (`iuCartera`) ON DELETE NO ACTION ON UPDATE NO ACTION;