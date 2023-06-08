CREATE TABLE `db_eldoradoparabrisas`.`marcas` (
`id_marca` INT(4) PRIMARY KEY NOT NULL,
`descrip_marca` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_personas` (
`id_tipo_persona` INT(3) PRIMARY KEY NOT NULL,
`descrip_tipo_persona` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`servicios` (
`id_servicio` INT(4) PRIMARY KEY NOT NULL,
`descrip_servicio` VARCHAR(35) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_cristales` (
`id_tipo_cristal` INT(4) PRIMARY KEY NOT NULL,
`descrip_tipo_cristal` VARCHAR(35) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_presupuestos` (
`id_tipo_presupuesto` INT(2) PRIMARY KEY NOT NULL,
`descrip_tipo_presupuesto` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`paises` (
`id_pais` INT(3) PRIMARY KEY NOT NULL,
`descrip_pais` VARCHAR(45) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_pagos` (
`id_tipo_pago` INT(2) PRIMARY KEY NOT NULL,
`descrip_tipo_pago` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_movimientos` (
`id_tipo_mov` INT(2) PRIMARY KEY NOT NULL,
`descrip_tipo_mov` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`tipos_tarjetas` (
`id_tipo_tarjeta` INT(2) PRIMARY KEY NOT NULL,
`descrip_tipo_tarjeta` VARCHAR(25) NOT NULL UNIQUE,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`bancos` (
`id_banco` INT(4) PRIMARY KEY NOT NULL,
`nombre_banco` VARCHAR(45) NOT NULL,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`seguros` (
`id_seguro` INT(4) PRIMARY KEY NOT NULL,
`nombre_seguro` VARCHAR(35) NOT NULL,
`fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`estado` INT(1) NOT NULL DEFAULT 1
);

CREATE TABLE `db_eldoradoparabrisas`.`productos` (
  `codigo_produc` INT(15) PRIMARY KEY NOT NULL,
  `descrip_produc` VARCHAR(45) NOT NULL,
  `marca_id` INT(4) NOT NULL,
  `cant_existencia` INT(4) NOT NULL,
  `precio_produc` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`productos` ADD INDEX `marcas_idx` (`marca_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`productos` ADD CONSTRAINT `id_marca` FOREIGN KEY (`id_marca`)
REFERENCES `db_eldoradoparabrisas`.`marcas` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`provincias` (
  `id_provincia` INT(6) PRIMARY KEY NOT NULL,
  `pais_id` INT(3) NOT NULL,
  `nombre_provincia` VARCHAR(45) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`provincias` ADD INDEX `paises_idx` (`pais_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`provincias` ADD CONSTRAINT `id_pais` FOREIGN KEY (`id_pais`)
REFERENCES `db_eldoradoparabrisas`.`paises` (`id_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`personas` (
  `dni_cuit` INT(15) PRIMARY KEY NOT NULL,
  `nombre_completo` VARCHAR(45) NOT NULL,
  `tipo_persona_id` INT(2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`personas` ADD INDEX `tipos_personas_idx` (`tipo_persona_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`personas` ADD CONSTRAINT `id_tipo_persona` FOREIGN KEY (`id_tipo_persona`)
REFERENCES `db_eldoradoparabrisas`.`tipos_personas` (`id_tipo_persona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`presupuestos` (
  `id_presup` INT(6) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `tipo_presup_id` INT(2) NOT NULL,
  `total_presup` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`presupuestos` ADD INDEX `tipos_presupuestos_idx` (`tipo_presup_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presupuestos` ADD CONSTRAINT `id_tipo_presup` FOREIGN KEY (`id_tipo_presup`)
REFERENCES `db_eldoradoparabrisas`.`tipos_presupuestos` (`id_tipo_presup`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`modelos` (
  `id_modelo` INT(6) PRIMARY KEY NOT NULL,
  `marca_id` INT(4) NOT NULL,
  `descrip_modelo` VARCHAR(25) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`modelos` ADD INDEX `marcas_idx` (`marca_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`modelos` ADD CONSTRAINT `id_marca` FOREIGN KEY (`id_marca`)
REFERENCES `db_eldoradoparabrisas`.`marcas` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`vehiculos` (
  `dominio_vehiculo` VARCHAR(15) PRIMARY KEY NOT NULL,
  `modelo_id` INT(6) NOT NULL,
  `annio` INT(4) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`vehiculos` ADD INDEX `modelos_idx` (`modelo_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`vehiculos` ADD CONSTRAINT `id_modelo` FOREIGN KEY (`id_modelo`)
REFERENCES `db_eldoradoparabrisas`.`modelos` (`id_modelo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`cristales` (
  `tipo_cristal_id` INT(4) PRIMARY KEY NOT NULL,
  `produc_codigo` INT(15) PRIMARY KEY NOT NULL,
  `modelo_id` INT(6) NOT NULL,
  `cant_minima` INT(4) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD INDEX `tipos_critales_idx` (`tipo_crital_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD CONSTRAINT `id_tipo_crital` FOREIGN KEY (`id_tipo_crital`)
REFERENCES `db_eldoradoparabrisas`.`tipos_critales` (`id_tipo_crital`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD INDEX `productos_idx` (`produc_codigo` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD CONSTRAINT `codigo_produc` FOREIGN KEY (`codigo_produc`)
REFERENCES `db_eldoradoparabrisas`.`productos` (`codigo_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD INDEX `modelos_idx` (`modelo_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cristales` ADD CONSTRAINT `id_modelo` FOREIGN KEY (`id_modelo`)
REFERENCES `db_eldoradoparabrisas`.`modelos` (`id_modelo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`presup_produc` (
  `presup_id` INT(6) PRIMARY KEY NOT NULL,
  `produc_codigo` INT(15) PRIMARY KEY NOT NULL,
  `cant_produc` INT(4) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD INDEX `presupuestos_idx` (`presup_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD CONSTRAINT `id_presup` FOREIGN KEY (`id_presup`)
REFERENCES `db_eldoradoparabrisas`.`presupuestos` (`id_presup`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD INDEX `productos_idx` (`produc_codigo` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD CONSTRAINT `codigo_produc` FOREIGN KEY (`codigo_produc`)
REFERENCES `db_eldoradoparabrisas`.`productos` (`codigo_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`presup_servicio` (
  `presup_id` INT(6) PRIMARY KEY NOT NULL,
  `servicio_id` INT(4) PRIMARY KEY NOT NULL,
  `cant_servicio` INT(4) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`presup_servicio` ADD INDEX `presupuestos_idx` (`presup_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presup_servicio` ADD CONSTRAINT `id_presup` FOREIGN KEY (`id_presup`)
REFERENCES `db_eldoradoparabrisas`.`presupuestos` (`id_presup`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`presup_servicio` ADD INDEX `servicios_idx` (`servicio_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presup_servicio` ADD CONSTRAINT `id_servicio` FOREIGN KEY (`id_servicio`)
REFERENCES `db_eldoradoparabrisas`.`servicios` (`id_servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`ciudades` (
  `id_ciudad` INT(9) PRIMARY KEY NOT NULL,
  `provincia_id` INT(6) NOT NULL,
  `nombre_ciudad` VARCHAR(45) NOT NULL,
  `cp` INT(10) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`ciudades` ADD INDEX `provincias_idx` (`provincia_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`ciudades` ADD CONSTRAINT `id_provincia` FOREIGN KEY (`id_provincia`)
REFERENCES `db_eldoradoparabrisas`.`provincias` (`id_provincia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`pedidos` (
  `id_pedido` INT(9) PRIMARY KEY NOT NULL,
  `fecha_pedido` DATETIME NOT NULL,
  `produc_codigo` INT(15) NOT NULL,
  `cant_pedida` INT(3) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD INDEX `productos_idx` (`produc_codigo` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`presup_produc` ADD CONSTRAINT `codigo_produc` FOREIGN KEY (`codigo_produc`)
REFERENCES `db_eldoradoparabrisas`.`productos` (`codigo_produc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`asegurados` (
  `seguro_id` INT(4) PRIMARY KEY NOT NULL,
  `cuit_dni` INT(15) PRIMARY KEY NOT NULL,
  `num_poliza` INT(25) NOT NULL,
  `num_siniestro` INT(25) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`asegurados` ADD INDEX `seguros_idx` (`seguro_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`asegurados` ADD CONSTRAINT `id_seguro` FOREIGN KEY (`id_seguro`)
REFERENCES `db_eldoradoparabrisas`.`seguros` (`id_seguro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`asegurados` ADD INDEX `personas_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`asegurados` ADD CONSTRAINT `dni_cuit` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`movimientos` (
  `id_movimiento` INT(9) PRIMARY KEY NOT NULL,
  `tipo_mov_id` INT(2) NOT NULL,
  `num_factura` INT(15) NOT NULL,
  `presup_id` INT(6) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`movimientos` ADD INDEX `tipos_movimientos_idx` (`tipo_mov_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`movimientos` ADD CONSTRAINT `id_tipo_mov` FOREIGN KEY (`id_tipo_mov`)
REFERENCES `db_eldoradoparabrisas`.`tipos_movimientos` (`id_tipo_mov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`movimientos` ADD INDEX `presupuestos_idx` (`presup_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`movimientos` ADD CONSTRAINT `id_presup` FOREIGN KEY (`id_presup`)
REFERENCES `db_eldoradoparabrisas`.`presupuestos` (`id_presup`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`contactos` (
  `id_contacto` INT(6) PRIMARY KEY NOT NULL,
  `cuit_dni` INT(15) NOT NULL,
  `correo_electronico` VARCHAR(45) NOT NULL,
  `tel_fijo` VARCHAR(18) NOT NULL,
  `tel_celular` VARCHAR(18) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`contactos` ADD INDEX `personas_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`contactos` ADD CONSTRAINT `dni_cuit` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`turnos` (
  `id_turno` INT(6) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `dominio_vehiculo` VARCHAR(15) NOT NULL,
  `fecha_hora` DATETIME NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`turnos` ADD INDEX `vehiculos_idx` (`dominio_vehiculo` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`turnos` ADD CONSTRAINT `dominio_vehiculo` FOREIGN KEY (`dominio_vehiculo`)
REFERENCES `db_eldoradoparabrisas`.`vehiculos` (`dominio_vehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`direcciones` (
  `id_direccion` INT(15) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `ciudad_id` INT(9) NOT NULL,
  `calle` VARCHAR(35) NULL,
  `numero` INT(6) NULL,
  `piso` INT(3) NOT NULL,
  `depto` VARCHAR(4) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`direcciones` ADD INDEX `ciudades_idx` (`ciudad_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`direcciones` ADD CONSTRAINT `id_ciudad` FOREIGN KEY (`id_ciudad`)
REFERENCES `db_eldoradoparabrisas`.`ciudades` (`id_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`examenes_vehiculos` (
  `num_examen` INT(9) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `vehiculo_dominio` VARCHAR(15) NOT NULL,
  `cuit_dni` INT(15) NOT NULL,
  `examinador` INT(15) NOT NULL,
  `fecha_hora` DATETIME NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD INDEX `vehiculos_idx` (`dominio_vehiculo` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD CONSTRAINT `dominio_vehiculo` FOREIGN KEY (`dominio_vehiculo`)
REFERENCES `db_eldoradoparabrisas`.`vehiculos` (`dominio_vehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD INDEX `personas_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD CONSTRAINT `dni_cuit` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD INDEX `personas_idx` (`examinador` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`examen_vehiculo` ADD CONSTRAINT `examinador` FOREIGN KEY (`examinador`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`detalles_movimientos` (
  `id_detalle_mov` INT(15) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `movimiento_id` INT(9) PRIMARY KEY NOT NULL,
  `tipo_pago_id` INT(2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`detalles_movimientos` ADD INDEX `movimientos_idx` (`movimiento_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`detalles_movimientos` ADD CONSTRAINT `id_movimiento` FOREIGN KEY (`id_movimiento`)
REFERENCES `db_eldoradoparabrisas`.`movimientos` (`id_movimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`detalles_movimientos` ADD INDEX `tipos_pagos_idx` (`tipo_pago_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`detalles_movimientos` ADD CONSTRAINT `id_tipo_pago` FOREIGN KEY (`id_tipo_pago`)
REFERENCES `db_eldoradoparabrisas`.`tipos_pagos` (`id_tipo_pago`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`movimientos_seguros` (
  `movimiento_id` INT(9) PRIMARY KEY NOT NULL,
  `seguro_id` INT(4) PRIMARY KEY NOT NULL,
  `cuit_dni` INT(15) PRIMARY KEY NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`movimientos_seguros` ADD INDEX `movimientos_idx` (`movimiento_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`movimientos_seguros` ADD CONSTRAINT `id_movimiento` FOREIGN KEY (`id_movimiento`)
REFERENCES `db_eldoradoparabrisas`.`movimientos` (`id_movimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`movimientos_seguros` ADD INDEX `asegurados_idx` (`seguro_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`movimientos_seguros` ADD CONSTRAINT `id_seguro` FOREIGN KEY (`id_seguro`)
REFERENCES `db_eldoradoparabrisas`.`asegurados` (`id_seguro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`movimientos_seguros` ADD INDEX `asegurados_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`movimientos_seguros` ADD CONSTRAINT `dni_cuit` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`asegurados` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`direccion_persona` (
  `cuit_dni` INT(15) PRIMARY KEY NOT NULL,
  `direccion_id` INT(15) PRIMARY KEY NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`direccion_persona` ADD INDEX `personas_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`direccion_persona` ADD CONSTRAINT `dni_cuit` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`direccion_persona` ADD INDEX `direcciones_idx` (`direccion_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`direccion_persona` ADD CONSTRAINT `id_direccion` FOREIGN KEY (`id_direccion`)
REFERENCES `db_eldoradoparabrisas`.`direcciones` (`id_direccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`detalles_examen` (
  `id_detalle` INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `examen_num` INT(9) PRIMARY KEY NOT NULL,
  `descrip_detalle` TEXT NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`detalles_examen` ADD INDEX `examenes_vehiculos_idx` (`examen_num` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`detalles_examen` ADD CONSTRAINT `num_examen` FOREIGN KEY (`num_examen`)
REFERENCES `db_eldoradoparabrisas`.`examenes_vehiculos` (`num_examen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`efectivo` (
  `id_efectivo` INT(15) PRIMARY KEY NOT NULL,
  `detalle_mov_id` INT(15) PRIMARY KEY NOT NULL,
  `monto_efec` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`efectivo` ADD INDEX `detalles_movimientos_idx` (`detalle_mov_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`efectivo` ADD CONSTRAINT `id_detalle_mov` FOREIGN KEY (`id_detalle_mov`)
REFERENCES `db_eldoradoparabrisas`.`detalles_movimientos` (`id_detalle_mov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`tarjetas` (
  `id_tarjeta` INT(15) PRIMARY KEY NOT NULL,
  `detalle_mov_id` INT(15) PRIMARY KEY NOT NULL,
  `tipo_tarjeta_id` INT(2) NOT NULL,
  `banco_id` INT(4) NULL,
  `num_comp` INT(15) NOT NULL,
  `num_lote` INT(6) NOT NULL,
  `num_tarjeta` INT(25) NOT NULL,
  `monto_tarjetas` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD INDEX `detalles_movimientos_idx` (`detalle_mov_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD CONSTRAINT `id_detalle_mov` FOREIGN KEY (`id_detalle_mov`)
REFERENCES `db_eldoradoparabrisas`.`detalles_movimientos` (`id_detalle_mov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD INDEX `tipos_tarjetas_idx` (`tipo_tarjeta_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD CONSTRAINT `id_tipo_tarjeta` FOREIGN KEY (`id_tipo_tarjeta`)
REFERENCES `db_eldoradoparabrisas`.`tipos_tarjetas` (`id_tipo_tarjeta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD INDEX `bancos_idx` (`banco_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD CONSTRAINT `id_banco` FOREIGN KEY (`id_banco`)
REFERENCES `db_eldoradoparabrisas`.`bancos` (`id_banco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`sucursales_bancos` (
  `banco_id` INT(6) PRIMARY KEY NOT NULL,
  `direccion_id` INT(15) PRIMARY KEY NOT NULL,
  `monto_efec` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`sucursales_bancos` ADD INDEX `bancos_idx` (`banco_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`sucursales_bancos` ADD CONSTRAINT `id_banco` FOREIGN KEY (`id_banco`)
REFERENCES `db_eldoradoparabrisas`.`bancos` (`id_banco`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`sucursales_bancos` ADD INDEX `direcciones_idx` (`direccion_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`sucursales_bancos` ADD CONSTRAINT `id_direccion` FOREIGN KEY (`id_direccion`)
REFERENCES `db_eldoradoparabrisas`.`direcciones` (`id_direccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE `db_eldoradoparabrisas`.`cheques` (
  `num_cheque` INT(25) NOT NULL,
  `detalle_mov_id` INT(15) NOT NULL,
  `fecha_cheque` DATETIME NOT NULL,
  `fecha_cobro` DATETIME NOT NULL,
  `banco_id` INT(4) NOT NULL,
  `direccion_id` INT(15) NOT NULL,
  `cuit_dni` INT(15) NOT NULL,
  `monto` DECIMAL(10,2) NOT NULL,
  `fecha_insercion` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` INT(1) NOT NULL DEFAULT 1
);

ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD INDEX `detalles_movimientos_idx` (`detalle_mov_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`tarjetas` ADD CONSTRAINT `id_detalle_mov` FOREIGN KEY (`id_detalle_mov`)
REFERENCES `db_eldoradoparabrisas`.`detalles_movimientos` (`id_detalle_mov`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD INDEX `sucursales_bancos_idx` (`banco_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD CONSTRAINT `banco_id` FOREIGN KEY (`banco_id`)
REFERENCES `db_eldoradoparabrisas`.`sucursales_bancos` (`banco_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD INDEX `sucursales_bancos_idx` (`direccion_id` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD CONSTRAINT `id_direccion` FOREIGN KEY (`direccion_id`)
REFERENCES `db_eldoradoparabrisas`.`sucursales_bancos` (`direccion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD INDEX `personas_idx` (`cuit_dni` ASC);
ALTER TABLE `db_eldoradoparabrisas`.`cheques` ADD CONSTRAINT `dni_cuit` FOREIGN KEY (`dni_cuit`)
REFERENCES `db_eldoradoparabrisas`.`personas` (`dni_cuit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

