CREATE TABLE `db_eldoradoparabrisas`.`vehiculos` (
`dominioVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`codModeloVeh` VARCHAR(15)  NULL,
`anioVeh` VARCHAR(15) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`vehiculos` ADD INDEX `modeloVehiculo_idx` (`codModeloVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`vehiculos` ADD CONSTRAINT `modeloVehiculo` FOREIGN KEY (`codModeloVeh`)
REFERENCES `db_eldoradoparabrisas`.`modeloVehiculo` (`codModeloVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;