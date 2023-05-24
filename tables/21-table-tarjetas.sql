CREATE TABLE `db_eldoradoparabrisas`.`tarjetas` (
`iuTarjetas` INT PRIMARY KEY NOT NULL,
`iuEmisoresDeTarjetas` INT NULL,
`iuCaja` INT  PRIMARY KEY NOT NULL,
`iuDetalleCaja` INT  PRIMARY KEY NOT NULL,
`numTarjeta` INT NULL,
`numComprobante` INT NULL,
`lote` INT NULL,
`totalTarjeta` DECIMAL NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD INDEX `detallesCaja_idx` (`iuCaja` ASC, `iuDetalleCaja` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD CONSTRAINT `detallesCaja` FOREIGN KEY (`iuCaja`, `iuDetalleCaja`)
REFERENCES `db_eldoradoparabrisas`.`detallesDeCaja` (`iuCaja`, `iuDetalleCaja`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD INDEX `emisores_idx` (`iuEmisoresDeTarjetas` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD CONSTRAINT `emisores` FOREIGN KEY (`iuEmisoresDeTarjetas`)
REFERENCES `db_eldoradoparabrisas`.`emisoresDeTarjetas` (`iuEmisoresDeTarjetas`) ON DELETE NO ACTION ON UPDATE NO ACTION;