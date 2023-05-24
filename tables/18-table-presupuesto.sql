CREATE TABLE `db_eldoradoparabrisas`.`presupuesto` (
`iuPresupuesto` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`fechaPresup` VARCHAR(15)  NULL,
`tipoPresup` VARCHAR(45) NULL,
`dirigidoA` VARCHAR(45) NULL,
`codModeloVeh` VARCHAR(15) NULL,
`patenteVeh` VARCHAR(15) NULL,
`codigoCristal` VARCHAR(15) NULL,
`iuMarcaCris` INT NULL,
`iuServicios` INT NULL,
`descrPresup` VARCHAR(45) NULL,
`totalPresup` DECIMAL NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`presupuesto` ADD INDEX `servicios_idx` (`iuServicios` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presupuesto` ADD CONSTRAINT `servicios` FOREIGN KEY (`iuServicios`)
REFERENCES `db_eldoradoparabrisas`.`servicios` (`iuServicios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`presupuesto` ADD INDEX `catalogo_idx` (`codigoCristal` ASC, `codModeloVeh` ASC, `iuMarcaCris` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presupuesto` ADD CONSTRAINT `catalogo` FOREIGN KEY (`codigoCristal` , `codModeloVeh` , `iuMarcaCris`)
REFERENCES `db_eldoradoparabrisas`.`catalogo` (`codigoCristal` , `codModeloVeh` , `iuMarcaCris`) ON DELETE NO ACTION ON UPDATE NO ACTION;