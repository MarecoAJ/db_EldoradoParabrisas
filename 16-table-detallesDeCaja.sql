CREATE TABLE `db_eldoradoparabrisas`.`detallesDeCaja` (
`iuCaja` INT PRIMARY KEY NOT NULL,
`iuDetalleCaja` INT PRIMARY KEY NOT NULL,
`iuTipoPago` INT NULL,
`subTotal` DECIMAL NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`detallesDeCaja` ADD INDEX `caja_idx` (`iuCaja` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`detallesDeCaja` ADD CONSTRAINT `caja` FOREIGN KEY (`iuCaja`)
REFERENCES `db_eldoradoparabrisas`.`caja` (`iuCaja`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`detallesDeCaja` ADD INDEX `tipoPago_idx` (`iuTipoPago` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`detallesDeCaja` ADD CONSTRAINT `tipoPago` FOREIGN KEY (`iuTipoPago`)
REFERENCES `db_eldoradoparabrisas`.`tipoPago` (`iuTipoPago`) ON DELETE NO ACTION ON UPDATE NO ACTION;