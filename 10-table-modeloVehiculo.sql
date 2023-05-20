CREATE TABLE `db_eldoradoparabrisas`.`modeloVehiculo` (
`codModeloVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`codMarcaVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`descrModeloVeh` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`modeloVehiculo` ADD INDEX `marcaVehiculo_idx` (`codMarcaVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`modeloVehiculo` ADD CONSTRAINT `marcaVehiculo` FOREIGN KEY (`codMarcaVeh`)
REFERENCES `db_eldoradoparabrisas`.`marcaVehiculo` (`codMarcaVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;
