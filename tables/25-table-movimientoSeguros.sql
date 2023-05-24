CREATE TABLE `db_eldoradoparabrisas`.`movimientoSeguros` (
  `iuMovimientoSeg` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `iuPolizaSiniestro` INT PRIMARY KEY NOT NULL,
  `fechaAproxCobro` VARCHAR(15) NULL,
  `fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estadoEliminacion` INT NULL DEFAULT 1,
);

ALTER TABLE `db_eldoradoparabrisas`.`movimientoSeguros` ADD INDEX `poliSInie_idx` (`iuPolizaSiniestro` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`movimientoSeguros` ADD CONSTRAINT `poliSInie` FOREIGN KEY (`iuPolizaSiniestro`)
REFERENCES `db_eldoradoparabrisas`.`polizaSiniestro` (`iuPolizaSiniestro`) ON DELETE NO ACTION ON UPDATE NO ACTION;