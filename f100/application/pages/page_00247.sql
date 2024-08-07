prompt --application/pages/page_00247
begin
--   Manifest
--     PAGE: 00247
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>5801312104779619
,p_default_application_id=>100
,p_default_id_offset=>149120778489414042
,p_default_owner=>'DESA_SIT'
);
wwv_flow_api.create_page(
 p_id=>247
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'247-Genera PDF Carta al Registro Nacional'
,p_alias=>'247-GENERA-PDF-CARTA-AL-REGISTRO-NACIONAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Genera PDF'
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'JORGE.ROJAS'
,p_last_upd_yyyymmddhh24miss=>'20240517111710'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(554966804911174814)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#:i-h640:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152585379307751809)
,p_name=>'P247_ID_DECLRA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152585722741751806)
,p_name=>'P247_PLACA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152586160278751806)
,p_name=>'P247_NOMBRE_ENTIDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152586521830751806)
,p_name=>'P247_ID_TIPO_IDENTIFICACION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152586926671751806)
,p_name=>'P247_CEDULA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152587359232751806)
,p_name=>'P247_CODIGO_MONEDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152587788025751805)
,p_name=>'P247_MONTO_TOTAL_TRANS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152588109930751805)
,p_name=>'P247_ID_OFICINA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152588575141751805)
,p_name=>'P247_ID_COMPROBANTE_PAGO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152588909384751805)
,p_name=>'P247_ID_REPORTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152589370188751805)
,p_name=>'P247_CONTRATO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152589755695751805)
,p_name=>'P247_NOM_ARRENDATARIO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152590146577751804)
,p_name=>'P247_TIPO_CED_ARRE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152590505839751804)
,p_name=>'P247_CED_ARRE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(160743188426540624)
,p_name=>'P247_NOM_DOCUMENTO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(167972082557571011)
,p_name=>'P247_ID_DEUDOR'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(554966804911174814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152591750279751789)
,p_name=>'DAC_SUBMIT_PAGE'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152592262275751787)
,p_event_id=>wwv_flow_api.id(152591750279751789)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152591303398751789)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_CARTA_PDF_SINCONTRATO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CURSOR crReport IS',
'SELECT JRD_NAME',
'FROM JRXML_REPORT_DEFINITIONS',
'WHERE JRD_ID = :P247_ID_REPORTE;',
'',
'vcName VARCHAR2(1000);',
'rParam PK_JRXML2PDF_REPGEN.tParameter;',
'lParams PK_JRXML2PDF_REPGEN.tParamlist;',
'v_periodo date;',
'bl BLOB;',
'vIdDocumento NUMBER;',
'vNumComprobante NUMBER;',
'    ',
'    CURSOR C_COMPROBANT IS',
'    SELECT NUM_DEPOSITO',
'    FROM   COMPROBANTE_PAGO_COT',
'    WHERE ID_DECLARA_CTO = :P247_ID_DECLRA',
'    AND   ID_COMPROBANTE = :P247_ID_COMPROBANTE_PAGO;',
'BEGIN',
'    OPEN  C_COMPROBANT;',
'    FETCH C_COMPROBANT INTO vNumComprobante;',
'    CLOSE  C_COMPROBANT;',
'    ',
'OPEN crReport;',
'FETCH crReport Into vcName;',
'CLOSE crReport;',
'',
'SELECT MAX(ID_CARTA) INTO vIdDocumento FROM ARCHIVO_CARTAS_RN_COT;',
'vIdDocumento := vIdDocumento +1;',
'',
'rParam.vcName := ''pIdDoc'';',
'rParam.vcValue := vIdDocumento;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pPlaca'';',
'rParam.vcValue := :P247_PLACA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pNombre'';',
'rParam.vcValue := :P247_NOMBRE_ENTIDAD;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pTipoCedula'';',
'rParam.vcValue := :P247_ID_TIPO_IDENTIFICACION;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pCedula'';',
'rParam.vcValue := :P247_CEDULA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pMoneda'';',
'rParam.vcValue := :P247_CODIGO_MONEDA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pMonto'';',
'rParam.vcValue := :P247_MONTO_TOTAL_TRANS;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pOficina'';',
'rParam.vcValue := :P247_ID_OFICINA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pComprobante'';',
'rParam.vcValue := vNumComprobante;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'bl := PK_JRXML2PDF_REPGEN.FK_RUN(i_vcName=>vcName,i_lParams=>lParams);',
'COMMIT;',
'PK_JRXML2PDF_REPGEN.PR_SHOW_REPORT(bl);',
'APEX_APPLICATION.STOP_APEX_ENGINE;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P247_ID_REPORTE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'1241'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152590928747751791)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_CARTA_PDF_CONCONTRATO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CURSOR crReport IS',
'SELECT JRD_NAME',
'FROM JRXML_REPORT_DEFINITIONS',
'WHERE JRD_ID = :P247_ID_REPORTE;',
'',
'vcName VARCHAR2(1000);',
'rParam PK_JRXML2PDF_REPGEN.tParameter;',
'lParams PK_JRXML2PDF_REPGEN.tParamlist;',
'v_periodo date;',
'bl BLOB;',
'vIdDocumento NUMBER := 0;',
'vNumComprobante NUMBER;',
'    ',
'    CURSOR C_COMPROBANT IS',
'    SELECT NUM_DEPOSITO',
'    FROM   COMPROBANTE_PAGO_COT',
'    WHERE ID_DECLARA_CTO = :P247_ID_DECLRA',
'    AND   ID_COMPROBANTE = :P247_ID_COMPROBANTE_PAGO;',
'BEGIN',
'    OPEN  C_COMPROBANT;',
'    FETCH C_COMPROBANT INTO vNumComprobante;',
'    CLOSE  C_COMPROBANT;',
'    ',
'OPEN crReport;',
'FETCH crReport Into vcName;',
'CLOSE crReport;',
'',
'SELECT MAX(ID_CARTA) INTO vIdDocumento FROM ARCHIVO_CARTAS_RN_COT;',
'vIdDocumento := NVL(vIdDocumento,0) +1;',
'',
'rParam.vcName := ''pIdDoc'';',
'rParam.vcValue := vIdDocumento;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pPlaca'';',
'rParam.vcValue := :P247_PLACA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pNombre'';',
'rParam.vcValue := :P247_NOMBRE_ENTIDAD;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pTipoCedula'';',
'rParam.vcValue := :P247_ID_TIPO_IDENTIFICACION;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pCedula'';',
'rParam.vcValue := :P247_CEDULA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pMoneda'';',
'rParam.vcValue := :P247_CODIGO_MONEDA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pMonto'';',
'rParam.vcValue := :P247_MONTO_TOTAL_TRANS;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pOficina'';',
'rParam.vcValue := :P247_ID_OFICINA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pComprobante'';',
'rParam.vcValue := vNumComprobante;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pPersonaEmpresa'';',
'rParam.vcValue := :P247_NOM_ARRENDATARIO;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pTipoCedControto'';',
'rParam.vcValue := :P247_TIPO_CED_ARRE;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pCedulaContrato'';',
'rParam.vcValue := :P247_CED_ARRE;',
'lParams(lParams.COUNT+1):=rParam;',
'bl := PK_JRXML2PDF_REPGEN.FK_RUN(i_vcName=>vcName,i_lParams=>lParams);',
'COMMIT;',
'PK_JRXML2PDF_REPGEN.PR_SHOW_REPORT(bl);',
'APEX_APPLICATION.STOP_APEX_ENGINE;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P247_ID_REPORTE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'1242'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(160742924763540622)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_REPORTE_NUM_OFICIO_RN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CURSOR crReport IS',
'SELECT JRD_NAME',
'FROM JRXML_REPORT_DEFINITIONS',
'WHERE JRD_ID = :P247_ID_REPORTE;',
'',
'vcName VARCHAR2(1000);',
'rParam PK_JRXML2PDF_REPGEN.tParameter;',
'lParams PK_JRXML2PDF_REPGEN.tParamlist;',
'v_periodo date;',
'bl BLOB;',
'vIdDocumento NUMBER;',
'vNumComprobante NUMBER;',
'',
'BEGIN',
'    ',
'OPEN crReport;',
'FETCH crReport Into vcName;',
'CLOSE crReport;',
'',
'rParam.vcName := ''pIdDeclaracion'';',
'rParam.vcValue := :P247_ID_DECLRA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'bl := PK_JRXML2PDF_REPGEN.FK_RUN(i_vcName=>vcName,i_lParams=>lParams);',
'COMMIT;',
'PK_JRXML2PDF_REPGEN.PR_SHOW_REPORT(bl);',
'APEX_APPLICATION.STOP_APEX_ENGINE;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P247_ID_REPORTE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'1262'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(167971866161571009)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_CARTA_PDF_CONCONTRATO_TTR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CURSOR crReport IS',
'SELECT JRD_NAME',
'FROM JRXML_REPORT_DEFINITIONS',
'WHERE JRD_ID = :P247_ID_REPORTE;',
'',
'vcName VARCHAR2(1000);',
'rParam PK_JRXML2PDF_REPGEN.tParameter;',
'lParams PK_JRXML2PDF_REPGEN.tParamlist;',
'v_periodo date;',
'bl BLOB;',
'vIdDocumento NUMBER;',
'vNumComprobante NUMBER;',
'    ',
'BEGIN',
'    ',
'OPEN crReport;',
'FETCH crReport Into vcName;',
'CLOSE crReport;',
'',
'SELECT MAX(ID_CARTA) INTO vIdDocumento FROM ARCHIVO_CARTAS_RN_COT;',
'vIdDocumento := vIdDocumento +1;',
'',
'rParam.vcName := ''pIdDoc'';',
'rParam.vcValue := vIdDocumento;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pPlaca'';',
'rParam.vcValue := :P247_PLACA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pNombre'';',
'rParam.vcValue := :P247_NOMBRE_ENTIDAD;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pTipoCedula'';',
'rParam.vcValue := :P247_ID_TIPO_IDENTIFICACION;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pCedula'';',
'rParam.vcValue := :P247_CEDULA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pOficina'';',
'rParam.vcValue := :P247_ID_OFICINA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pnombre_arrenda'';',
'rParam.vcValue := :P247_NOM_ARRENDATARIO;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pid_tipo_identifica'';',
'rParam.vcValue := :P247_TIPO_CED_ARRE;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pcedula_arre'';',
'rParam.vcValue := :P247_CED_ARRE;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pCodigoTributario'';',
'rParam.vcValue := :P247_ID_DEUDOR;',
'lParams(lParams.COUNT+1):=rParam;',
'bl := PK_JRXML2PDF_REPGEN.FK_RUN(i_vcName=>vcName,i_lParams=>lParams);',
'COMMIT;',
'PK_JRXML2PDF_REPGEN.PR_SHOW_REPORT(bl);',
'APEX_APPLICATION.STOP_APEX_ENGINE;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P247_ID_REPORTE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'1303'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(167971906713571010)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_CARTA_PDF_SINCONTRATO_TTR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CURSOR crReport IS',
'SELECT JRD_NAME',
'FROM JRXML_REPORT_DEFINITIONS',
'WHERE JRD_ID = :P247_ID_REPORTE;',
'',
'vcName VARCHAR2(1000);',
'rParam PK_JRXML2PDF_REPGEN.tParameter;',
'lParams PK_JRXML2PDF_REPGEN.tParamlist;',
'v_periodo date;',
'bl BLOB;',
'vIdDocumento NUMBER;',
'vNumComprobante NUMBER;',
'    ',
'BEGIN',
'    ',
'OPEN crReport;',
'FETCH crReport Into vcName;',
'CLOSE crReport;',
'',
'SELECT MAX(ID_CARTA) INTO vIdDocumento FROM ARCHIVO_CARTAS_RN_COT;',
'vIdDocumento := vIdDocumento +1;',
'',
'rParam.vcName := ''pIdDoc'';',
'rParam.vcValue := vIdDocumento;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pPlaca'';',
'rParam.vcValue := :P247_PLACA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pNombre'';',
'rParam.vcValue := :P247_NOMBRE_ENTIDAD;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pTipoCedula'';',
'rParam.vcValue := :P247_ID_TIPO_IDENTIFICACION;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pCedula'';',
'rParam.vcValue := :P247_CEDULA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pOficina'';',
'rParam.vcValue := :P247_ID_OFICINA;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'rParam.vcName := ''pCodigoTributario'';',
'rParam.vcValue := :P247_ID_DEUDOR;',
'lParams(lParams.COUNT+1):=rParam;',
'',
'',
'bl := PK_JRXML2PDF_REPGEN.FK_RUN(i_vcName=>vcName,i_lParams=>lParams);',
'COMMIT;',
'PK_JRXML2PDF_REPGEN.PR_SHOW_REPORT(bl);',
'APEX_APPLICATION.STOP_APEX_ENGINE;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P247_ID_REPORTE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'1304'
);
wwv_flow_api.component_end;
end;
/
