SETEAR LOS ESTADOS DE LA SOLICITUD Y MONITOREO
RECIBE FOLIO DE LA SOLICITUD, HORA Y FECHA ACTUAL DEL SISTEMA Y EL STATUS A COLOCAR.
EJEMP
$sql="CALL programar_solicitud(:idFolio, :fecha_act, :hora_act,'3');";



DELIMITER $$
CREATE PROCEDURE `programar_solicitud`(
IN folio INT,
  IN fecha_actual DATE,
  IN hora_actual TIME,
  IN estado INT)
BEGIN
	DECLARE hora_ant TIME;
	DECLARE servicio VARCHAR(30);
    DECLARE anterior INT;
	
    SET anterior := (SELECT id_estado_servicio FROM det_monitoreo_servicio WHERE id_folio=folio ORDER BY id_det_monitoreo_servicio DESC LIMIT 1);
    SET hora_ant := (SELECT hora_final FROM det_monitoreo_servicio WHERE id_estado_servicio=anterior AND id_folio=folio LIMIT 1);
    SET servicio := (SELECT tipo_servicio FROM det_monitoreo_servicio WHERE id_estado_servicio=1 AND id_folio=folio LIMIT 1);
	
    INSERT INTO det_monitoreo_servicio(  
    id_estado_servicio, fecha, hora_inicio, hora_final, tipo_servicio, id_folio)
	VALUES(estado,fecha_actual, hora_ant, hora_actual, servicio, folio);
END$$

DELIMITER ;

TRIGGER CAMBIAR ESTADOS DE LAS UNIDADES
CREATE TRIGGER `cambiar_estado_unidad` 
AFTER INSERT ON `solicitudes_servicio` 
FOR EACH ROW 
	BEGIN
		DECLARE serv_flete INT;
		SET @serv_flete := (SELECT COUNT(tipo) FROM servicios_adicionales sa WHERE servicio LIKE New.serv_adicionales AND sa.tipo LIKE 'FLETE DIRECTO');
		IF (NEW.id_operador!='' ) AND (NEW.num_economico!='') THEN  BEGIN
			UPDATE unidades SET estado='EN SERVICIO' WHERE id_unidades=New.num_economico;
		END; END IF;
		IF(NEW.serv_adicionales!='' AND serv_flete >0 ) THEN BEGIN
			INSERT INTO servicios_adicionales (servicio, fecha, tipo, lugar_carga, ciudad_estado, descripcion) VALUES (New.serv_adicionales, New.fh_carga, 'FLETE DIRECTO', New.l_carga, New.origen, CONCAT('FLETE DIRECTO :',New.origen,'-',New.destino));
		END; END IF;
	END

DELIMITER ;

CREATE TRIGGER `cambiar_estado_unidad_ACT` AFTER UPDATE ON `solicitudes_servicio` FOR EACH ROW BEGIN
	IF (NEW.id_operador!='' ) AND (NEW.num_economico!='') THEN BEGIN
		UPDATE unidades SET estado='EN SERVICIO' WHERE id_unidades=New.num_economico;
	END ; END IF;
END

TRIGGER INICIALIZAR ESTADOS DE SERVICIO Y MODIFICAR ESTADO DE UNIDAD
CREATE  TRIGGER `cambiar_estado_unidad__DISP_Ini_Fact` AFTER INSERT ON `det_monitoreo_servicio` FOR EACH ROW BEGIN
	DECLARE num_eco integer;
	SET @num_eco := (SELECT sol_serv.num_economico FROM solicitudes_servicio sol_serv WHERE sol_serv.folio=New.id_folio);
	INSERT INTO factores_servicio (factor_operador,factor_moya,factor_cliente,factor_externo,id_det_monitoreo_servicio)
		VALUES ('','','','',(New.id_det_monitoreo_servicio));
	IF (NEW.id_estado_servicio='9') THEN BEGIN
		UPDATE unidades SET estado='DISPONIBLE' WHERE id_unidades=num_eco;
	END ; END IF;
END

