CREATE TABLE `db_eldoradoparabrisas`.`cheques` (
`numcheque` INT PRIMARY KEY NOT NULL,
`iuCaja` INT  PRIMARY KEY NOT NULL,
`iuDetalleCaja` INT  PRIMARY KEY NOT NULL,
`fechaCheque` VARCHAR(15) NULL,
`fechaCobre` VARCHAR(15) NULL,
`bancoEmisor` VARCHAR(45) NULL,
`sucursalBanco` VARCHAR(45) NULL,
`montoCheque` DECIMAL NULL,
`tipoCheque` VARCHAR(45) NULL,
`iuCartera` INT NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD INDEX `detalleCaja_idx` (`iuCaja` ASC, `iuDetalleCaja` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD CONSTRAINT `detalleCaja` FOREIGN KEY (`iuCaja`, `iuDetalleCaja`)
REFERENCES `db_eldoradoparabrisas`.`detallesDeCaja` (`iuCaja`, `iuDetalleCaja`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD INDEX `carteras_idx` (`iuCartera` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD CONSTRAINT `carterax` FOREIGN KEY (`iuCartera`)
REFERENCES `db_eldoradoparabrisas`.`cartera` (`iuCartera`) ON DELETE NO ACTION ON UPDATE NO ACTION;