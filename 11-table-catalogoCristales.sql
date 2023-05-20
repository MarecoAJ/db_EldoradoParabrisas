CREATE TABLE `db_eldoradoparabrisas`.`catalogoCristales` (
`codigoCristal` VARCHAR(15) PRIMARY KEY NOT NULL,
`codModeloVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`iuMarcaCris` INT PRIMARY KEY NOT NULL,
`descrCristal` VARCHAR(45) NULL,
`cantidadMinima` INT NULL,
`cantidadMaxima` INT NULL,
`precioPieza` DECIMAL NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`catalogoCristales` ADD INDEX `modeloVehiculo_idx` (`codModeloVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`catalogoCristales` ADD CONSTRAINT `modeloVehiculo` FOREIGN KEY (`codModeloVeh`)
REFERENCES `db_eldoradoparabrisas`.`modeloVehiculo` (`codModeloVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`catalogoCristales` ADD INDEX `marcaCristales_idx` (`iuMarcaCris` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`catalogoCristales` ADD CONSTRAINT `marcaCristales` FOREIGN KEY (`iuMarcaCris`)
REFERENCES `db_eldoradoparabrisas`.`marcaCristales` (`iuMarcaCris`) ON DELETE NO ACTION ON UPDATE NO ACTION;
