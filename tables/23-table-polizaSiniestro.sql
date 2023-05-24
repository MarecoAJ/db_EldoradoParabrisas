CREATE TABLE `db_eldoradoparabrisas`.`polizaSiniestro` (
`iuPolizaSiniestro` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 `iuSeguros` INT NULL,
 `numPoliza` VARCHAR(45) NULL,
 `numSiniestro` VARCHAR(45) NULL,
 `dominioVeh` VARCHAR(15) NULL,
 `nombreAsegurado` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`polizaSiniestro` ADD INDEX `vehiculos_idx` (`dominioVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`polizaSiniestro` ADD CONSTRAINT `vehiculox` FOREIGN KEY (`dominioVeh`)
REFERENCES `db_eldoradoparabrisas`.`vehiculos` (`dominioVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`polizaSiniestro` ADD INDEX `seguros_idx` (`iuSeguros` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`polizaSiniestro` ADD CONSTRAINT `segur` FOREIGN KEY (`iuSeguros`)
REFERENCES `db_eldoradoparabrisas`.`seguros` (`iuSeguros`) ON DELETE NO ACTION ON UPDATE NO ACTION;