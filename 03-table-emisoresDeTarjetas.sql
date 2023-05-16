CREATE TABLE `db_eldoradoparabrisas`.`emisoresDeTarjetas` (
`iuEmisoresDeTarjetas` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrEmisor` VARCHAR(35) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);