CREATE TABLE `db_eldoradoparabrisas`.`marcas` (
`id_marca` INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrip_marca` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_personas` (
`id_tipo_persona` INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrip_tipo_persona` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`servicios` (
`id_servicio` INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrip_servicio` VARCHAR(35) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_cristales` (
`id_tipo_cristal` INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrip_tipo_cristal` VARCHAR(35) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_presupuestos` (
`id_tipo_presup` INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrip_tipo_presup` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`paises` (
`id_pais` INT(3) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrip_pais` VARCHAR(45) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_pagos` (
`id_tipo_pago` INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrip_tipo_pago` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_movimientos` (
`id_tipo_mov` INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrip_tipo_mov` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_tarjetas` (
`id_tipo_tarjeta` INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrip_tipo_tarjeta` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`bancos` (
`id_banco` INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`nombre_banco` VARCHAR(45) NOT NULL,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`seguros` (
`id_seguro` INT(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`nombre_seguro` VARCHAR(35) NOT NULL,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_cheques` (
`id_tipo_cheque` INT(2) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`descrip_tipo_cheque` VARCHAR(35) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`productos` (
  `codigo_produc` VARCHAR(15) PRIMARY KEY NOT NULL,
  `descrip_produc` VARCHAR(45) NOT NULL,
  `marca_id` INT(4) NOT NULL,
  `cant_existencia` INT(4) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`productos` ADD INDEX `marcas_idx` (`marca_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`productos` ADD CONSTRAINT `marcas_fk` FOREIGN KEY (`id_marca`)
REFERENCES `db_eldoradoparabrisas`.`marcas` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`provincias` (
  `id_provincia` INT(6) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `pais_id` INT(3) NOT NULL,
  `nombre_provincia` VARCHAR(45) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`provincias` ADD INDEX `paises_idx` (`pais_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`provincias` ADD CONSTRAINT `paises_fk` FOREIGN KEY (`id_pais`)
REFERENCES `db_eldoradoparabrisas`.`paises` (`id_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`personas` (
  `dni_cuit` VARCHAR(15) PRIMARY KEY NOT NULL,
  `nombre_completo` VARCHAR(45) NOT NULL,
  `tipo_persona_id` INT(2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`personas` ADD INDEX `tipos_personas_idx` (`tipo_persona_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`personas` ADD CONSTRAINT `tipos_personas_fk` FOREIGN KEY (`id_tipo_persona`)
REFERENCES `db_eldoradoparabrisas`.`tipos_personas` (`id_tipo_persona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`presupuestos` (
  `id_presup` INT(6) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `tipo_presup_id` INT(2) NOT NULL,
  `total_presup` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`presupuestos` ADD INDEX `tipos_presupuestos_idx` (`tipo_presup_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presupuestos` ADD CONSTRAINT `tipos_presupuestos_fk` FOREIGN KEY (`id_tipo_presup`)
REFERENCES `db_eldoradoparabrisas`.`tipos_presupuestos` (`id_tipo_presup`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`precios_servicios` (
  `id_precio_servicio` INT(6) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `servicio_id` INT(4) NOT NULL,
  `precio_servicio` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
  );

ALTER TABLE `db_eldoradoparabrisas`.`precios_servicios` ADD INDEX `servicios_idx` (`servicio_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`precios_servicios` ADD CONSTRAINT `servicios_fk` FOREIGN KEY (`id_servicio`)
REFERENCES `db_eldoradoparabrisas`.`servicios` (`id_servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`precios_productos` (
  `id_precio_produc` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `produc_codigo` VARCHAR(15) NOT NULL,
  `precio_produc` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
  );

ALTER TABLE `db_eldoradoparabrisas`.`precios_productos` ADD INDEX `productos_idx` (`produc_codigo` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`precios_productos` ADD CONSTRAINT `productos_fk` FOREIGN KEY (`codigo_produc`)
REFERENCES `db_eldoradoparabrisas`.`productos` (`codigo_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`modelos` (
  `id_modelo` INT(6) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `marca_id` INT(4) NOT NULL,
  `descrip_modelo` VARCHAR(25) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`modelos` ADD INDEX `marcas_idx` (`marca_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`modelos` ADD CONSTRAINT `marcas_fk` FOREIGN KEY (`id_marca`)
REFERENCES `db_eldoradoparabrisas`.`marcas` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`vehiculos` (
  `dominio_vehiculo` VARCHAR(15) PRIMARY KEY NOT NULL,
  `modelo_id` INT(6) NOT NULL,
  `annio` INT(4) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`vehiculos` ADD INDEX `modelos_idx` (`modelo_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`vehiculos` ADD CONSTRAINT `modelos_fk` FOREIGN KEY (`id_modelo`)
REFERENCES `db_eldoradoparabrisas`.`modelos` (`id_modelo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`cristales` (
  `tipo_cristal_id` INT(4) PRIMARY KEY NOT NULL,
  `produc_codigo` VARCHAR(15) PRIMARY KEY NOT NULL,
  `modelo_id` INT(6) NOT NULL,
  `cant_minima` INT(4) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD INDEX `tipos_critales_idx` (`tipo_crital_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD CONSTRAINT `tipos_cristales_fk` FOREIGN KEY (`id_tipo_crital`)
REFERENCES `db_eldoradoparabrisas`.`tipos_critales` (`id_tipo_crital`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD INDEX `productos_idx` (`produc_codigo` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD CONSTRAINT `productos_fk` FOREIGN KEY (`codigo_produc`)
REFERENCES `db_eldoradoparabrisas`.`productos` (`codigo_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD INDEX `modelos_idx` (`modelo_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD CONSTRAINT `modelos_fk` FOREIGN KEY (`id_modelo`)
REFERENCES `db_eldoradoparabrisas`.`modelos` (`id_modelo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`presup_produc` (
  `presup_id` INT(6) PRIMARY KEY NOT NULL,
  `precio_produc_id` INT PRIMARY KEY NOT NULL,
  `cant_produc` INT(4) NOT NULL,
  `subtotal_presup_produc` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD INDEX `presupuestos_idx` (`presup_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD CONSTRAINT `presupuestos_fk` FOREIGN KEY (`id_presup`)
REFERENCES `db_eldoradoparabrisas`.`presupuestos` (`id_presup`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD INDEX `precios_productos_idx` (`precio_produc_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD CONSTRAINT `precios_productos_fk` FOREIGN KEY (`id_precio_produc`)
REFERENCES `db_eldoradoparabrisas`.`precios_productos` (`id_precio_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`presup_servicio` (
  `presup_id` INT(6) PRIMARY KEY NOT NULL,
  `precio_servicio_id` INT(6) PRIMARY KEY NOT NULL,
  `cant_servicio` INT(4) NOT NULL,
  `subtotal_presup_servicio` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`presup_servicio` ADD INDEX `presupuestos_idx` (`presup_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presup_servicio` ADD CONSTRAINT `presupuestos_fk` FOREIGN KEY (`id_presup`)
REFERENCES `db_eldoradoparabrisas`.`presupuestos` (`id_presup`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`presup_servicio` ADD INDEX `precios_servicios_idx` (`precio_servicio_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presup_servicio` ADD CONSTRAINT `precios_servicios_fk` FOREIGN KEY (`id_precio_servicio`)
REFERENCES `db_eldoradoparabrisas`.`precios_servicios` (`id_precio_servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`ciudades` (
  `id_ciudad` INT(9) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `provincia_id` INT(6) NOT NULL,
  `nombre_ciudad` VARCHAR(45) NOT NULL,
  `cp` INT(10) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`ciudades` ADD INDEX `provincias_idx` (`provincia_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`ciudades` ADD CONSTRAINT `provincias_fk` FOREIGN KEY (`id_provincia`)
REFERENCES `db_eldoradoparabrisas`.`provincias` (`id_provincia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`pedidos` (
  `id_pedido` INT PRIMARY KEY NOT NULL,
  `fecha_pedido` DATETIME NOT NULL,
  `produc_codigo` VARCHAR(15) NOT NULL,
  `cant_pedida` INT(3) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD INDEX `productos_idx` (`produc_codigo` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD CONSTRAINT `codigo_produc` FOREIGN KEY (`codigo_produc`)
REFERENCES `db_eldoradoparabrisas`.`productos` (`codigo_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`asegurados` (
  `seguro_id` INT(4) PRIMARY KEY NOT NULL,
  `cuit_dni` VARCHAR(15) PRIMARY KEY NOT NULL,
  `num_poliza` VARCHAR(25) NOT NULL,
  `num_siniestro` VARCHAR(25) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`asegurados` ADD INDEX `seguros_idx` (`seguro_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`asegurados` ADD CONSTRAINT `seguros_fk` FOREIGN KEY (`id_seguro`)
REFERENCES `db_eldoradoparabrisas`.`seguros` (`id_seguro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`asegurados` ADD INDEX `personas_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`asegurados` ADD CONSTRAINT `personas_fk` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`movimientos` (
  `id_movimiento` INT PRIMARY KEY NOT NULL,
  `tipo_mov_id` INT(2) NOT NULL,
  `num_factura` VARCHAR(15) NOT NULL,
  `presup_id` INT(6) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`movimientos` ADD INDEX `tipos_movimientos_idx` (`tipo_mov_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`movimientos` ADD CONSTRAINT `tipos_movimientos_fk` FOREIGN KEY (`id_tipo_mov`)
REFERENCES `db_eldoradoparabrisas`.`tipos_movimientos` (`id_tipo_mov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`movimientos` ADD INDEX `presupuestos_idx` (`presup_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`movimientos` ADD CONSTRAINT `presupuestos_fk` FOREIGN KEY (`id_presup`)
REFERENCES `db_eldoradoparabrisas`.`presupuestos` (`id_presup`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`contactos` (
  `id_contacto` INT(6) PRIMARY KEY NOT NULL,
  `cuit_dni` VARCHAR(15) NOT NULL,
  `correo_electronico` VARCHAR(45) NOT NULL UNIQUE,
  `tel_fijo` VARCHAR(18) NOT NULL,
  `tel_celular` VARCHAR(18) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`contactos` ADD INDEX `personas_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`contactos` ADD CONSTRAINT `personas_fk` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`turnos` (
  `id_turno` INT(6) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `dominio_vehiculo` VARCHAR(15) NOT NULL,
  `fecha_hora` DATETIME NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`turnos` ADD INDEX `vehiculos_idx` (`dominio_vehiculo` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`turnos` ADD CONSTRAINT `vehiculos_fk` FOREIGN KEY (`dominio_vehiculo`)
REFERENCES `db_eldoradoparabrisas`.`vehiculos` (`dominio_vehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`direcciones` (
  `id_direccion` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `ciudad_id` INT(9) NOT NULL,
  `calle` VARCHAR(35) NOT NULL,
  `numero` INT(6) NOT NULL,
  `piso` INT(3) NOT NULL,
  `depto` VARCHAR(4) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`direcciones` ADD INDEX `ciudades_idx` (`ciudad_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`direcciones` ADD CONSTRAINT `ciudades_fk` FOREIGN KEY (`id_ciudad`)
REFERENCES `db_eldoradoparabrisas`.`ciudades` (`id_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`examenes_vehiculos` (
  `num_examen` INT(9) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `dominio_vehiculo` VARCHAR(15) NOT NULL,
  `cuit_dni` VARCHAR(15) NOT NULL,
  `examinador` VARCHAR(15) NOT NULL,
  `fecha_hora` DATETIME NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD INDEX `vehiculos_idx` (`dominio_vehiculo` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD CONSTRAINT `vehiculos_fk` FOREIGN KEY (`dominio_vehiculo`)
REFERENCES `db_eldoradoparabrisas`.`vehiculos` (`dominio_vehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD INDEX `personas_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD CONSTRAINT `personas_fk` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD INDEX `personas_idx` (`examinador` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD CONSTRAINT `personas_examinador_fk` FOREIGN KEY (`examinador`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`detalles_movimientos` (
  `id_detalle_mov` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `movimiento_id` INT NOT NULL,
  `tipo_pago_id` INT(2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`detalles_movimientos` ADD INDEX `movimientos_idx` (`movimiento_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`detalles_movimientos` ADD CONSTRAINT `movimientos_fk` FOREIGN KEY (`id_movimiento`)
REFERENCES `db_eldoradoparabrisas`.`movimientos` (`id_movimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`detalles_movimientos` ADD INDEX `tipos_pagos_idx` (`tipo_pago_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`detalles_movimientos` ADD CONSTRAINT `tipos_pagos_fk` FOREIGN KEY (`id_tipo_pago`)
REFERENCES `db_eldoradoparabrisas`.`tipos_pagos` (`id_tipo_pago`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`movimientos_seguros` (
  `movimiento_id` INT PRIMARY KEY NOT NULL,
  `seguro_id` INT(4) PRIMARY KEY NOT NULL,
  `cuit_dni` VARCHAR(15) PRIMARY KEY NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`movimientos_seguros` ADD INDEX `movimientos_idx` (`movimiento_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`movimientos_seguros` ADD CONSTRAINT `movimientos_fk` FOREIGN KEY (`id_movimiento`)
REFERENCES `db_eldoradoparabrisas`.`movimientos` (`id_movimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`movimientos_seguros` ADD INDEX `asegurados_idx` (`seguro_id` ASC, `cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`movimientos_seguros` ADD CONSTRAINT `asegurados_fk` FOREIGN KEY (`id_seguro`, `dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`asegurados` (`id_seguro`, `dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`direccion_persona` (
  `cuit_dni` VARCHAR(15) PRIMARY KEY NOT NULL,
  `direccion_id` INT PRIMARY KEY NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`direccion_persona` ADD INDEX `personas_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`direccion_persona` ADD CONSTRAINT `personas_fk` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`direccion_persona` ADD INDEX `direcciones_idx` (`direccion_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`direccion_persona` ADD CONSTRAINT `direcciones_fk` FOREIGN KEY (`id_direccion`)
REFERENCES `db_eldoradoparabrisas`.`direcciones` (`id_direccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`detalles_examen` (
  `id_detalle` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `examen_num` INT(9) NOT NULL,
  `descrip_detalle` TEXT NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`detalles_examen` ADD INDEX `examenes_vehiculos_idx` (`examen_num` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`detalles_examen` ADD CONSTRAINT `examenes_vehiculos_fk` FOREIGN KEY (`num_examen`)
REFERENCES `db_eldoradoparabrisas`.`examenes_vehiculos` (`num_examen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`efectivo` (
  `id_efectivo` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `detalle_mov_id` INT NOT NULL,
  `monto_efec` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`efectivo` ADD INDEX `detalles_movimientos_idx` (`detalle_mov_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`efectivo` ADD CONSTRAINT `detalles_movimientos_fk` FOREIGN KEY (`id_detalle_mov`)
REFERENCES `db_eldoradoparabrisas`.`detalles_movimientos` (`id_detalle_mov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`tarjetas` (
  `id_tarjeta` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `detalle_mov_id` INT NOT NULL,
  `tipo_tarjeta_id` INT(2) NOT NULL,
  `banco_id` INT(4) NULL,
  `num_comp` VARCHAR(15) NOT NULL,
  `num_lote` INT(6) NOT NULL,
  `num_tarjeta` VARCHAR(25) NOT NULL,
  `monto_tarjetas` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD INDEX `detalles_movimientos_idx` (`detalle_mov_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD CONSTRAINT `detalles_movimientos_fk` FOREIGN KEY (`id_detalle_mov`)
REFERENCES `db_eldoradoparabrisas`.`detalles_movimientos` (`id_detalle_mov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD INDEX `tipos_tarjetas_idx` (`tipo_tarjeta_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD CONSTRAINT `tipos_tarjetas_fk` FOREIGN KEY (`id_tipo_tarjeta`)
REFERENCES `db_eldoradoparabrisas`.`tipos_tarjetas` (`id_tipo_tarjeta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD INDEX `bancos_idx` (`banco_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD CONSTRAINT `bancos_fk` FOREIGN KEY (`id_banco`)
REFERENCES `db_eldoradoparabrisas`.`bancos` (`id_banco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`sucursales_bancos` (
  `banco_id` INT(6) PRIMARY KEY NOT NULL,
  `direccion_id` INT PRIMARY KEY NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`sucursales_bancos` ADD INDEX `bancos_idx` (`banco_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`sucursales_bancos` ADD CONSTRAINT `bancos_fk` FOREIGN KEY (`id_banco`)
REFERENCES `db_eldoradoparabrisas`.`bancos` (`id_banco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`sucursales_bancos` ADD INDEX `direcciones_idx` (`direccion_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`sucursales_bancos` ADD CONSTRAINT `direcciones_fk` FOREIGN KEY (`id_direccion`)
REFERENCES `db_eldoradoparabrisas`.`direcciones` (`id_direccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`cheques` (
  `num_cheque` VARCHAR(25) PRIMARY KEY NOT NULL,
  `tipo_cheque_id` INT(2) NOT NULL,
  `detalle_mov_id` INT NOT NULL,
  `fecha_cheque` DATETIME NOT NULL,
  `fecha_cobro` DATETIME NOT NULL,
  `banco_id` INT(4) NOT NULL,
  `direccion_id` INT NOT NULL,
  `cuit_dni` VARCHAR(15) NOT NULL,
  `monto_cheque` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD INDEX `tipos_cheques_idx` (`tipo_cheque_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD CONSTRAINT `tipos_cheques_fk` FOREIGN KEY (`id_tipo_cheque`)
REFERENCES `db_eldoradoparabrisas`.`tipos_cheques` (`id_tipo_cheque`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD INDEX `detalles_movimientos_idx` (`detalle_mov_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD CONSTRAINT `detalles_movimientos_fk` FOREIGN KEY (`id_detalle_mov`)
REFERENCES `db_eldoradoparabrisas`.`detalles_movimientos` (`id_detalle_mov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD INDEX `sucursales_bancos_idx` (`banco_id` ASC, `direccion_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD CONSTRAINT `sucursales_bancos_fk` FOREIGN KEY (`banco_id`, `direccion_id`)
REFERENCES `db_eldoradoparabrisas`.`sucursales_bancos` (`banco_id`, `direccion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD INDEX `personas_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD CONSTRAINT `personas_fk` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`cheque_endozo` (
  `cheque_num` VARCHAR(25) PRIMARY KEY NOT NULL,
  `cuit_dni` VARCHAR(15) PRIMARY KEY NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`cheque_endozo` ADD INDEX `cheques_idx` (`cheque_num` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cheque_endozo` ADD CONSTRAINT `cheques_fk` FOREIGN KEY (`num_cheque`)
REFERENCES `db_eldoradoparabrisas`.`cheques` (`num_cheque`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cheque_endozo` ADD INDEX `personas_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cheque_endozo` ADD CONSTRAINT `personas_fk` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;