CREATE TABLE `db_eldoradoparabrisas`.`pedidos` (
`fechaPedido` VARCHAR(15) PRIMARY KEY NOT NULL,
`codigoCristal` VARCHAR(15) PRIMARY KEY NOT NULL,
`codModeloVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`iuMarcaCris` INT PRIMARY KEY NOT NULL,
`cantidadPieza` INT NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`pedidos` ADD INDEX `catalogo_idx` (`codigoCristal` ASC, `codModeloVeh` ASC, `iuMarcaCris` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`pedidos` ADD CONSTRAINT `catalogo` FOREIGN KEY (`codigoCristal` , `codModeloVeh` , `iuMarcaCris`)
REFERENCES `db_eldoradoparabrisas`.`catalogo` (`codigoCristal` , `codModeloVeh` , `iuMarcaCris`) ON DELETE NO ACTION ON UPDATE NO ACTION;
