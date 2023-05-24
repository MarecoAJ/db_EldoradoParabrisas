CREATE TABLE `db_eldoradoparabrisas`.`cartera` (
`iuCartera` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`iuTipoCartera` INT  NULL,
`dniOCuit` INT NULL,
`nombreCompleto` VARCHAR(45) NULL,
`direccionCartera` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`cartera` ADD INDEX `tipoCartera_idx` (`iuTipoCartera` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cartera` ADD CONSTRAINT `tipoCartera` FOREIGN KEY (`iuTipoCartera`)
REFERENCES `db_eldoradoparabrisas`.`tipoCartera` (`iuTipoCartera`) ON DELETE NO ACTION ON UPDATE NO ACTION;
