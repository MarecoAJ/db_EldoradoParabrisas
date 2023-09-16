INSERT INTO `bancos` ( `nombre_banco`) VALUES ('banco macro');
INSERT INTO `bancos` ( `nombre_banco`) VALUES ('galicia');
INSERT INTO `bancos` ( `nombre_banco`) VALUES ('BNA');

INSERT INTO `marcas` ( `descrip_marca`) VALUES ('Fiat');
INSERT INTO `marcas` ( `descrip_marca`) VALUES ('toyota');
INSERT INTO `marcas` ( `descrip_marca`) VALUES ('volkswagen');

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