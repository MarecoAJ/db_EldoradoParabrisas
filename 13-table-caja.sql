CREATE TABLE `db_eldoradoparabrisas`.`caja` (
`iuCaja` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`iuTipoCaja` INT  NULL,
`iuTipoFactura` INT NULL,
`fechaCaja` VARCHAR(25) NULL,
`fechaFactura` VARCHAR(25) NULL,
`aNombreDe` VARCHAR(45) NULL,
`numFactura` INT NULL,
`descrCaja` VARCHAR(45) NULL,
`totalCaja` DECIMAL(25) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`caja` ADD INDEX `tipoCaja_idx` (`iuTipoCaja` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`caja` ADD CONSTRAINT `tipoCaja` FOREIGN KEY (`iuTipoCaja`)
REFERENCES `db_eldoradoparabrisas`.`tipoCaja` (`iuTipoCaja`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`caja` ADD INDEX `tipoFactura_idx` (`iuTipoFactura` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`caja` ADD CONSTRAINT `tipoFactura` FOREIGN KEY (`iuTipoFactura`)
REFERENCES `db_eldoradoparabrisas`.`tipoFactura` (`iuTipoFactura`) ON DELETE NO ACTION ON UPDATE NO ACTION;