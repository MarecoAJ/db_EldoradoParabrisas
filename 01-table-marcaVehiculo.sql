CREATE TABLE `db_eldoradoparabrisas`.`marcaVehiculo` (
`codMarcaVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`descrMarcaVeh` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);