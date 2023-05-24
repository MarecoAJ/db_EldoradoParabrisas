CREATE TABLE `db_eldoradoparabrisas`.`marcaCristales` (
`iuMarcaCris` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrMarcaCris` VARCHAR(35) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);