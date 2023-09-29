INSERT INTO `bancos` ( `nombre_banco`) VALUES ('banco macro');
INSERT INTO `bancos` ( `nombre_banco`) VALUES ('galicia');
INSERT INTO `bancos` ( `nombre_banco`) VALUES ('BNA');

INSERT INTO `marcas` ( `descrip_marca`) VALUES ('Fiat');
INSERT INTO `marcas` ( `descrip_marca`) VALUES ('toyota');
INSERT INTO `marcas` ( `descrip_marca`) VALUES ('volkswagen');
INSERT INTO `marcas` ( `descrip_marca`) VALUES ('pilkington');
INSERT INTO `marcas` ( `descrip_marca`) VALUES ('cristem');
INSERT INTO `marcas` ( `descrip_marca`) VALUES ('chevrolet');
INSERT INTO `marcas` ( `descrip_marca`) VALUES ('citroen');


INSERT INTO `paises`(`descrip_pais`) VALUES ('Argentina');
INSERT INTO `paises`(`descrip_pais`) VALUES ('Brasil');
INSERT INTO `paises`(`descrip_pais`) VALUES ('Paraguay');

INSERT INTO `seguros`(`nombre_seguro`) VALUES ('Liderar');
INSERT INTO `seguros`(`nombre_seguro`) VALUES ('La segunda');
INSERT INTO `seguros`(`nombre_seguro`) VALUES ('sancor seguros');

INSERT INTO `servicios`(`descrip_servicio`) VALUES ('sellado');
INSERT INTO `servicios`(`descrip_servicio`) VALUES ('colocacion pegamento autos');
INSERT INTO `servicios`(`descrip_servicio`) VALUES ('colocacion camion goma');

INSERT INTO `tipos_cheques`(`descrip_tipo_cheque`) VALUES ('propio');
INSERT INTO `tipos_cheques`(`descrip_tipo_cheque`) VALUES ('tercero');
INSERT INTO `tipos_cheques`(`descrip_tipo_cheque`) VALUES ('diferido');

INSERT INTO `tipos_movimientos`(`descrip_tipo_mov`) VALUES ('INGRESO');
INSERT INTO `tipos_movimientos`(`descrip_tipo_mov`) VALUES ('EGRESO');

INSERT INTO `tipos_pagos`(`descrip_tipo_pago`) VALUES ('EFECTIVO');
INSERT INTO `tipos_pagos`(`descrip_tipo_pago`) VALUES ('CHEQUE');
INSERT INTO `tipos_pagos`(`descrip_tipo_pago`) VALUES ('TARJETA');

INSERT INTO `tipos_personas`(`descrip_tipo_persona`) VALUES ('CLIENTE');
INSERT INTO `tipos_personas`(`descrip_tipo_persona`) VALUES ('EMPLEADO');
INSERT INTO `tipos_personas`(`descrip_tipo_persona`) VALUES ('Asesor de seguros');

INSERT INTO `tipos_presupuestos`(`descrip_tipo_presup`) VALUES ('FORMAL');
INSERT INTO `tipos_presupuestos`(`descrip_tipo_presup`) VALUES ('INFORMAL');

INSERT INTO `tipos_tarjetas`(`descrip_tipo_tarjeta`) VALUES ('DEBITO');
INSERT INTO `tipos_tarjetas`(`descrip_tipo_tarjeta`) VALUES ('CREDITO');

INSERT INTO `modelos` (`marca_id`, `descrip_modelo`) VALUES (1,'duna');
INSERT INTO `modelos` (`marca_id`, `descrip_modelo`) VALUES (1,'strada');
INSERT INTO `modelos` (`marca_id`, `descrip_modelo`) VALUES (1, 'uno');
INSERT INTO `modelos` (`marca_id`, `descrip_modelo`) VALUES (2,'hilux');
INSERT INTO `modelos` (`marca_id`, `descrip_modelo`) VALUES (2,'corolla');
INSERT INTO `modelos` (`marca_id`, `descrip_modelo`) VALUES (2,'etios');
INSERT INTO `modelos`(`marca_id`, `descrip_modelo`) VALUES (3,'gol');
INSERT INTO `modelos`(`marca_id`, `descrip_modelo`) VALUES (3,'trend');
INSERT INTO `modelos`(`marca_id`, `descrip_modelo`) VALUES (3,'bora');
INSERT INTO `modelos`(`marca_id`, `descrip_modelo`) VALUES (7,'s10');
INSERT INTO `modelos`(`marca_id`, `descrip_modelo`) VALUES (7,'onix');
INSERT INTO `modelos`(`marca_id`, `descrip_modelo`) VALUES (7,'aveo');
INSERT INTO `modelos`(`marca_id`, `descrip_modelo`) VALUES (8,'serie 4');
INSERT INTO `modelos`(`marca_id`, `descrip_modelo`) VALUES (8,'serie 5');

INSERT INTO `provincias`(`pais_id`, `nombre_provincia`) VALUES (1,'Misiones');
INSERT INTO `provincias`(`pais_id`, `nombre_provincia`) VALUES (1,'Corrientes');
INSERT INTO `provincias`(`pais_id`, `nombre_provincia`) VALUES (1,'Bs As');

INSERT INTO `personas`(`dni_cuit`, `nombre_completo`, `tipo_persona_id`) VALUES (37082052,'Mareco Alejandro',2);
INSERT INTO `personas`(`dni_cuit`, `nombre_completo`, `tipo_persona_id`) VALUES (27054222,'gomez juan',2);
INSERT INTO `personas`(`dni_cuit`, `nombre_completo`, `tipo_persona_id`) VALUES (29854633,'perez julio',3);

INSERT INTO `precios_servicios`(`servicio_id`, `precio_servicio`) VALUES (1, 1500);
INSERT INTO `precios_servicios`(`servicio_id`, `precio_servicio`) VALUES (2, 2500);
INSERT INTO `precios_servicios`(`servicio_id`, `precio_servicio`) VALUES (3, 1600);

INSERT INTO `presupuestos`(`tipo_presup_id`, `total_presup`) VALUES (2,1600);
INSERT INTO `presupuestos`(`tipo_presup_id`, `total_presup`) VALUES (2,1600);
INSERT INTO `presupuestos`(`tipo_presup_id`, `total_presup`) VALUES (2,5600);

INSERT INTO `movimientos`(`tipo_mov_id`, `num_factura`) VALUES (1, 1254);
INSERT INTO `movimientos`(`tipo_mov_id`, `num_factura`) VALUES (1, 1255);
INSERT INTO `movimientos`(`tipo_mov_id`, `num_factura`) VALUES (2, 55632);
INSERT INTO `movimientos`(`tipo_mov_id`, `num_factura`) VALUES (1, 1256);

INSERT INTO `productos`(`codigo_produc`, `descrip_produc`, `marca_id`, `modelo_id`, `cant_minima`, `cant_existencia`) VALUES (178930,'psas bajo 4p 86 - 01', 4, 1, 4, 2);
INSERT INTO `productos`(`codigo_produc`, `descrip_produc`, `marca_id`, `modelo_id`, `cant_minima`, `cant_existencia`) VALUES (178776,'PTD 4p 86 - 01', 5, 1, 1, 1);
INSERT INTO `productos`(`codigo_produc`, `descrip_produc`, `marca_id`, `modelo_id`, `cant_minima`, `cant_existencia`) VALUES (179630,'psas 2p 15', 4, 3, 1, 0);
INSERT INTO `productos`(`codigo_produc`, `descrip_produc`, `marca_id`, `modelo_id`, `cant_minima`, `cant_existencia`) VALUES (151554,'lta 2p 15', 4, 3, 1, 1);
INSERT INTO `productos`(`codigo_produc`, `descrip_produc`, `marca_id`, `modelo_id`, `cant_minima`, `cant_existencia`) VALUES (490530,'psas 4p 05 - 15', 4, 2, 4, 2);
INSERT INTO `productos`(`codigo_produc`, `descrip_produc`, `marca_id`, `modelo_id`, `cant_minima`, `cant_existencia`) VALUES (490550,'LTA 4p 05 - 15', 5, 2, 1, 1);
INSERT INTO `productos`(`codigo_produc`, `descrip_produc`, `marca_id`, `modelo_id`, `cant_minima`, `cant_existencia`) VALUES (089831,'psas 2p 98 - 11', 4, 12, 1, 0);
INSERT INTO `productos`(`codigo_produc`, `descrip_produc`, `marca_id`, `modelo_id`, `cant_minima`, `cant_existencia`) VALUES (089710,'PDD 2p 98 - 11', 4, 12, 1, 1);
INSERT INTO `productos`(`codigo_produc`, `descrip_produc`, `marca_id`, `modelo_id`, `cant_minima`, `cant_existencia`) VALUES (387531,'PSAS 75 - 84', 3, 15, 1, 1);

INSERT INTO `vehiculos`(`dominio_vehiculo`, `modelo_id`, `annio`) VALUES ('AA333BD',2,2016);
INSERT INTO `vehiculos`(`dominio_vehiculo`, `modelo_id`, `annio`) VALUES ('XDF334',1,1992);
INSERT INTO `vehiculos`(`dominio_vehiculo`, `modelo_id`, `annio`) VALUES ('VRE999',2,2005);

INSERT INTO `ciudades`(`provincia_id`, `nombre_ciudad`, `cp`) VALUES (1,'Eldorado',3380);
INSERT INTO `ciudades`(`provincia_id`, `nombre_ciudad`, `cp`) VALUES (1,'Montecarlos',3380);
INSERT INTO `ciudades`(`provincia_id`, `nombre_ciudad`, `cp`) VALUES (1,'PTO Piray',3381);

INSERT INTO `asegurados`(`seguro_id`, `cuit_dni`, `num_poliza`, `num_siniestro`) VALUES (1 , 27054222, 100127054222, 7896);
INSERT INTO `asegurados`(`seguro_id`, `cuit_dni`, `num_poliza`, `num_siniestro`) VALUES (2, 27054222, 559627054222, 0);
INSERT INTO `asegurados`(`seguro_id`, `cuit_dni`, `num_poliza`, `num_siniestro`) VALUES (3 , 29854633, 298546339999, 1001);

INSERT INTO `presupuestos_movimientos`(`movimiento_id`, `presup_id`) VALUES (1, 1);
INSERT INTO `presupuestos_movimientos`(`movimiento_id`, `presup_id`) VALUES (2, 2);
INSERT INTO `presupuestos_movimientos`(`movimiento_id`, `presup_id`) VALUES (4, 5);

INSERT INTO `detalles_movimientos`(`movimiento_id`, `tipo_pago_id`) VALUES (1,3);
INSERT INTO `detalles_movimientos`(`movimiento_id`, `tipo_pago_id`) VALUES (2,2);
INSERT INTO `detalles_movimientos`(`movimiento_id`, `tipo_pago_id`) VALUES (3,1);
INSERT INTO `detalles_movimientos`(`movimiento_id`, `tipo_pago_id`) VALUES (4,3);
INSERT INTO `detalles_movimientos`(`movimiento_id`, `tipo_pago_id`) VALUES (4,2);

INSERT INTO `contactos`(`cuit_dni`, `correo_electronico`, `tel_fijo`, `tel_celular`) VALUES (37082052, 'ejemplo@mail.com', '3751543264', '3751543264');
INSERT INTO `contactos`(`cuit_dni`, `correo_electronico`, `tel_fijo`, `tel_celular`) VALUES (27054222, 'ejemplo1@mail.com', '3753558877', '423264');
INSERT INTO `contactos`(`cuit_dni`, `correo_electronico`, `tel_fijo`, `tel_celular`) VALUES (29854633, 'ejemplo2@mail.com', '3755181862', '443264');

INSERT INTO `precios_productos`(`produc_codigo`, `precio_produc`) VALUES ( 178930, 3200);
INSERT INTO `precios_productos`(`produc_codigo`, `precio_produc`) VALUES ( 178776, 3000);
INSERT INTO `precios_productos`(`produc_codigo`, `precio_produc`) VALUES ( 179630, 2500);
INSERT INTO `precios_productos`(`produc_codigo`, `precio_produc`) VALUES ( 151554, 2000);
INSERT INTO `precios_productos`(`produc_codigo`, `precio_produc`) VALUES ( 490530, 3000);
INSERT INTO `precios_productos`(`produc_codigo`, `precio_produc`) VALUES ( 490550, 5000);
INSERT INTO `precios_productos`(`produc_codigo`, `precio_produc`) VALUES ( 089831, 3100);
INSERT INTO `precios_productos`(`produc_codigo`, `precio_produc`) VALUES ( 089710, 1900);
INSERT INTO `precios_productos`(`produc_codigo`, `precio_produc`) VALUES ( 387531, 2800);

INSERT INTO `pedidos`(`fecha_pedido`, `produc_codigo`, `cant_pedida`) VALUES ('2023-10-15', 420530, 1);
INSERT INTO `pedidos`(`fecha_pedido`, `produc_codigo`, `cant_pedida`) VALUES ('2023-10-15', 309430, 2);

INSERT INTO `direcciones`(`ciudad_id`, `calle`, `numero`, `piso`, `depto`) VALUES (1, "avellaneda", 773, 0, 0);
INSERT INTO `direcciones`(`ciudad_id`, `calle`, `numero`) VALUES (1, "suiza", 1773);
INSERT INTO `direcciones`(`ciudad_id`, `calle`, `numero`, `piso`, `depto`) VALUES (1, "san martin", 4373, 0, 0);

INSERT INTO `examenes_vehiculos` (`dominio_vehiculo`, `cuit_dni`, `examinador`, `fecha_hora`) VALUES ('AA333BD', '27054222', '37082052', '2023-09-26 23:41');
INSERT INTO `examenes_vehiculos` (`dominio_vehiculo`, `cuit_dni`, `examinador`, `fecha_hora`) VALUES ('VRE999', '29854633', '37082052', '2023-09-26 23:42');

INSERT INTO `movimientos_seguros` (`movimiento_id`, `seguro_id`, `cuit_dni`) VALUES ('1', '1', '27054222');
INSERT INTO `movimientos_seguros` (`movimiento_id`, `seguro_id`, `cuit_dni`) VALUES ('2', '3', '29854633');

INSERT INTO `turnos` (`dominio_vehiculo`, `fecha_hora`) VALUES ('AA333BD', '2023-09-27 08:30:00'); 
INSERT INTO `turnos` (`dominio_vehiculo`, `fecha_hora`) VALUES ('VRE999', '2023-09-28 16:00:00');

INSERT INTO `presup_servicio`(`presup_id`, `precio_servicio_id`, `cant_servicio`, `subtotal_presup_servicio`) VALUES (1,3,1, 1600);
INSERT INTO `presup_servicio`(`presup_id`, `precio_servicio_id`, `cant_servicio`, `subtotal_presup_servicio`) VALUES (2,3,1, 1600);

INSERT INTO `presup_produc`(`presup_id`, `precio_produc_id`, `cant_produc`, `subtotal_presup_produc`) VALUES (3, 1, 1600);
INSERT INTO `presup_produc`(`presup_id`, `precio_produc_id`, `cant_produc`, `subtotal_presup_produc`) VALUES (4, 2, 4600);
INSERT INTO `presup_produc`(`presup_id`, `precio_produc_id`, `cant_produc`, `subtotal_presup_produc`) VALUES (5, 11, 2, 5600);

INSERT INTO `direccion_persona` (`cuit_dni`, `direccion_id` ) VALUES ('37082052', '2'),
INSERT INTO `direccion_persona` (`cuit_dni`, `direccion_id` ) VALUES ('27054222', '4');
INSERT INTO `direccion_persona` (`cuit_dni`, `direccion_id` ) VALUES ('29854633', '3');

INSERT INTO `detalles_examen` (`examen_num`, `descrip_detalle`) VALUES ( '1', 'burlete derecho picado');
INSERT INTO `detalles_examen` (`examen_num`, `descrip_detalle`) VALUES ('2', 'capot rayado lado izq. burlete cortado');

INSERT INTO `efectivo`(`detalle_mov_id`, `monto_efec`) VALUES (2, 1600);

INSERT INTO `tarjetas` (`detalle_mov_id`, `tipo_tarjeta_id`, `banco_id`, `num_comp`, `num_lote`, `num_tarjeta`, `monto_tarjetas`) VALUES (4, 2, 1, 552363, 4230, 777788889999, 2800);

INSERT INTO `sucursales_bancos` (`banco_id`, `direccion_id`) VALUES (3, 2);

INSERT INTO `cheques` (`num_cheque`, `tipo_cheque_id`, `detalle_mov_id`, `fecha_cheque`, `fecha_cobro`, `banco_id`, `direccion_id`, `cuit_dni`, `monto_cheque`) VALUES ('123456789000123456789123', 1, 5, '2023-09-29 23:51:59.000000', '2023-10-29 23:51:59.000000', 3, 2, 27054222, 2800);

INSERT INTO `cheque_endozo` (`cheque_num`, `cuit_dni`) VALUES ('123456789000123456789123', 29854633);