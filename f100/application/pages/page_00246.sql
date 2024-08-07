prompt --application/pages/page_00246
begin
--   Manifest
--     PAGE: 00246
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
 p_id=>246
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('246-Rechazo declaraci\00F3n jurada COT')
,p_alias=>unistr('246-RECHAZO-DECLARACI\00D3N-JURADA-COT')
,p_page_mode=>'MODAL'
,p_step_title=>'Rechazo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230511144417'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(292526026730650609)
,p_plug_name=>'Rechazar solicitud'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152580052435762251)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(292526026730650609)
,p_button_name=>'BTN_ENVIAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(152583224277762228)
,p_branch_name=>'Go To Page 245'
,p_branch_action=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152580489007762249)
,p_name=>'P246_ID_DECLARACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(292526026730650609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152580845847762245)
,p_name=>'P246_TIPO_SOLICITUD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(292526026730650609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152581262100762245)
,p_name=>'P246_TIPO_CORREO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(292526026730650609)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152581520675762244)
,p_name=>'P246_ASUNTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(292526026730650609)
,p_prompt=>'Asunto:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152581949675762244)
,p_name=>'P246_DETALLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(292526026730650609)
,p_prompt=>'Detalle:'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152582362019762230)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAsunto_usrExterno VARCHAR2(4000);',
'vDetalle_usrExterno VARCHAR2(5000);',
'    ',
'--Obtenemos datos de la tabla tipo_correos_sit',
'    CURSOR C_INGRESO_IR_E IS',
'    SELECT ASUNTO,DETALLE',
'    FROM TIPO_CORREO_SIT',
'    WHERE ID_TIPO_SOLICITUD = :P246_TIPO_SOLICITUD',
'    AND   TIPO_USUARIO = ''E''',
'    AND   CODIGO_ESTADO = ''AC''',
'    AND   TIPO_CORREO = :P246_TIPO_CORREO',
'    AND   ID_CORREO = 48;',
'BEGIN',
'    ',
'    OPEN  C_INGRESO_IR_E;',
'    FETCH C_INGRESO_IR_E INTO vAsunto_usrExterno,vDetalle_usrExterno;',
'    CLOSE C_INGRESO_IR_E;',
'    ',
':P246_ASUNTO  := vAsunto_usrExterno||'' ''||:P246_ID_DECLARACION;',
':P246_DETALLE := vDetalle_usrExterno;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(174902222221154130)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_RECHAZO_DECLARA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  --Actualizamos el estado de la declaracion a rechazado',
'    UPDATE DECLARA_CHARTER_TERRESTRE_O SET CODIGO_ESTADO = ''R'' WHERE ID_DECLARA_CTO = :P246_ID_DECLARACION;',
'    --Enviamos el correo al usuario externo',
'    PKG_ENVIO_NOTIF_ICT_CONTRIB.RECHAZO_INSCRIPCION_COT(:P246_ID_DECLARACION,',
'                                                        :P246_TIPO_SOLICITUD,',
'                                                        :P246_TIPO_CORREO,',
'                                                        ''E'',',
'                                                        :P246_ASUNTO,',
'                                                        :P246_DETALLE );',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(152580052435762251)
);
wwv_flow_api.component_end;
end;
/
