/* se unifican todas las tablas creadas con anterioridad - version final testis */

/*tablas fuertes*/

CREATE TABLE `db_eldoradoparabrisas`.`marcaVehiculo` (
`codMarcaVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`descrMarcaVeh` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`marcaCristales` (
`iuMarcaCris` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrMarcaCris` VARCHAR(35) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`emisoresDeTarjetas` (
`iuEmisoresDeTarjetas` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrEmisor` VARCHAR(35) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`serviciosPrestados` (
`iuServicios` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrServicios` VARCHAR(35) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipoCartera` (
`iuTipoCartera` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrTipoCartera` VARCHAR(35) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipoPagos` (
`iuTipoPago` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrTipoPago` VARCHAR(35) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipoFactura` (
`iuTipoFactura` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrTipoFactura` VARCHAR(35) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipoCaja` (
`iuTipoCaja` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrTipoCaja` VARCHAR(35) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`seguros` (
`iuSeguros` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrSeguros` VARCHAR(35) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

/* tablas debiles */

CREATE TABLE `db_eldoradoparabrisas`.`modeloVehiculo` (
`codModeloVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`codMarcaVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`descrModeloVeh` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`modeloVehiculo` ADD INDEX `marcaVehiculo_idx` (`codMarcaVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`modeloVehiculo` ADD CONSTRAINT `marcaVehiculo` FOREIGN KEY (`codMarcaVeh`)
REFERENCES `db_eldoradoparabrisas`.`marcaVehiculo` (`codMarcaVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`catalogoCristales` (
`codigoCristal` VARCHAR(15) PRIMARY KEY NOT NULL,
`codModeloVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`iuMarcaCris` INT PRIMARY KEY NOT NULL,
`descrCristal` VARCHAR(45) NULL,
`cantidadMinima` INT NULL,
`cantidadMaxima` INT NULL,
`precioPieza` DECIMAL NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`catalogoCristales` ADD INDEX `modeloVehiculo_idx` (`codModeloVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`catalogoCristales` ADD CONSTRAINT `modeloVehiculo` FOREIGN KEY (`codModeloVeh`)
REFERENCES `db_eldoradoparabrisas`.`modeloVehiculo` (`codModeloVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`catalogoCristales` ADD INDEX `marcaCristales_idx` (`iuMarcaCris` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`catalogoCristales` ADD CONSTRAINT `marcaCristales` FOREIGN KEY (`iuMarcaCris`)
REFERENCES `db_eldoradoparabrisas`.`marcaCristales` (`iuMarcaCris`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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

CREATE TABLE `db_eldoradoparabrisas`.`vehiculos` (
`dominioVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`codModeloVeh` VARCHAR(15)  NULL,
`anioVeh` VARCHAR(15) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`vehiculos` ADD INDEX `modeloVehiculo_idx` (`codModeloVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`vehiculos` ADD CONSTRAINT `modeloVehiculo` FOREIGN KEY (`codModeloVeh`)
REFERENCES `db_eldoradoparabrisas`.`modeloVehiculo` (`codModeloVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`contactoCartera` (
`iuContactoCartera` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`iuCartera` INT PRIMARY KEY NOT NULL,
`anioVeh` VARCHAR(15) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`contactoCartera` ADD INDEX `cartera_idx` (`iuCartera` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`contactoCartera` ADD CONSTRAINT `cartera` FOREIGN KEY (`iuCartera`)
REFERENCES `db_eldoradoparabrisas`.`cartera` (`iuCartera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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

CREATE TABLE `db_eldoradoparabrisas`.`presupuesto` (
`iuPresupuesto` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`fechaPresup` VARCHAR(15)  NULL,
`tipoPresup` VARCHAR(45) NULL,
`dirigidoA` VARCHAR(45) NULL,
`codModeloVeh` VARCHAR(15) NULL,
`patenteVeh` VARCHAR(15) NULL,
`codigoCristal` VARCHAR(15) NULL,
`iuMarcaCris` INT NULL,
`iuServicios` INT NULL,
`descrPresup` VARCHAR(45) NULL,
`totalPresup` DECIMAL NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`presupuesto` ADD INDEX `servicios_idx` (`iuServicios` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presupuesto` ADD CONSTRAINT `servicios` FOREIGN KEY (`iuServicios`)
REFERENCES `db_eldoradoparabrisas`.`servicios` (`iuServicios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`presupuesto` ADD INDEX `catalogo_idx` (`codigoCristal` ASC, `codModeloVeh` ASC, `iuMarcaCris` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presupuesto` ADD CONSTRAINT `catalogo` FOREIGN KEY (`codigoCristal` , `codModeloVeh` , `iuMarcaCris`)
REFERENCES `db_eldoradoparabrisas`.`catalogo` (`codigoCristal` , `codModeloVeh` , `iuMarcaCris`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`turnos` (
`fechaTurno` VARCHAR(15)  PRIMARY KEY NOT NULL,
`dominioVeh` VARCHAR(15) PRIMARY KEY NOT NULL,
`horaTurno` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`turnos` ADD INDEX `vehiculos_idx` (`dominioVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`turnos` ADD CONSTRAINT `vehiculos` FOREIGN KEY (`dominioVeh`)
REFERENCES `db_eldoradoparabrisas`.`vehiculos` (`dominioVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`examenVehiculo` (
`numExamenVeh` INT PRIMARY KEY NOT NULL,
`nombExaminador` VARCHAR(45)  NULL,
`iuCartera` INT NULL,
`dominioVeh` VARCHAR(15) NULL,
`fechaExamen` VARCHAR(15) NULL,
`patenteVeh` VARCHAR(15) NULL,
`posibleRetirador` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`examenVehiculo` ADD INDEX `vehiculo_idx` (`dominioVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`examenVehiculo` ADD CONSTRAINT `vehiculo` FOREIGN KEY (`dominioVeh`)
REFERENCES `db_eldoradoparabrisas`.`vehiculo` (`dominioVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`examenVehiculo` ADD INDEX `cartera_idx` (`iuCartera` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`examenVehiculo` ADD CONSTRAINT `carter` FOREIGN KEY (`iuCartera`)
REFERENCES `db_eldoradoparabrisas`.`cartera` (`iuCartera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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

CREATE TABLE `db_eldoradoparabrisas`.`polizaSiniestro` (
`iuPolizaSiniestro` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 `iuSeguros` INT NULL,
 `numPoliza` VARCHAR(45) NULL,
 `numSiniestro` VARCHAR(45) NULL,
 `dominioVeh` VARCHAR(15) NULL,
 `nombreAsegurado` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`polizaSiniestro` ADD INDEX `vehiculos_idx` (`dominioVeh` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`polizaSiniestro` ADD CONSTRAINT `vehiculox` FOREIGN KEY (`dominioVeh`)
REFERENCES `db_eldoradoparabrisas`.`vehiculos` (`dominioVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`polizaSiniestro` ADD INDEX `seguros_idx` (`iuSeguros` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`polizaSiniestro` ADD CONSTRAINT `segur` FOREIGN KEY (`iuSeguros`)
REFERENCES `db_eldoradoparabrisas`.`seguros` (`iuSeguros`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`detallesEnVehiculos` (
`iuDetallesVisibles` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`numExamenVehe` INT PRIMARY KEY NOT NULL,
`descrDetallesVisibles` VARCHAR(45) NULL,
`fechaInsercion` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estadoEliminacion` INT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`detallesEnVehiculos` ADD INDEX `examen_idx` (`numExamenVehe` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`detallesEnVehiculos` ADD CONSTRAINT `examen` FOREIGN KEY (`numExamenVehe`)
REFERENCES `db_eldoradoparabrisas`.`examenVehiculos` (`numExamenVeh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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