CREATE TABLE `db_eldoradoparabrisas`.`serviciosPrestados` (
`iuServicios` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrServicios` VARCHAR(35) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);