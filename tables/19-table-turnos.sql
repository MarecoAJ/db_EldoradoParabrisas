CREATE TABLE `db_eldoradoparabrisas`.`turnos` (
`fechaTurno` VARCHAR(15)  PRIMARY KEY NOT NULL,
`dominioVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`horaTurno` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`turnos` ADD INDEX `vehiculos_idx` (`dominioVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`turnos` ADD CONSTRAINT `vehiculos` FOREIGN KEY (`dominioVeh`)
REFERENCES `db_eldoradoparabrisas`.`vehiculos` (`dominioVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;