prompt --application/pages/page_00240
begin
--   Manifest
--     PAGE: 00240
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
 p_id=>240
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('240-Revisa solicitud activaci\00F3n usuario')
,p_alias=>unistr('240-REVISA-SOLICITUD-ACTIVACI\00D3N-USUARIO')
,p_page_mode=>'MODAL'
,p_step_title=>'Aprobar Solicitud'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221108120754'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(252713776296524367)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(560432403979503939)
,p_plug_name=>'Titulo'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<center><h3>Solicitud de activacion de usuario</h3></center>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(252713981954524370)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(252713776296524367)
,p_button_name=>'BTN_APROBAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar Solicitud'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(252714845372524378)
,p_branch_name=>'Go To Page 110'
,p_branch_action=>'f?p=&APP_ID.:239:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(159236192375083165)
,p_name=>'P240_TIPO_CONTRIB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(252713776296524367)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(252713822146524368)
,p_name=>'P240_CONTRIBUYENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(252713776296524367)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(252713948496524369)
,p_name=>'P240_NUM_SOLICITUD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(252713776296524367)
,p_prompt=>'Solicitud numero:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(252714367681524373)
,p_name=>'P240_NOM_CONTRIB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(252713776296524367)
,p_prompt=>'Administrado:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(252714559364524375)
,p_name=>'P240_ID_DEUDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(252713776296524367)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(252714774031524377)
,p_name=>'P240_CEDULA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(252713776296524367)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(252714455195524374)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P240_NOM_CONTRIB := :P240_ID_DEUDOR||'' - ''||PKG_MAESTRO_CONTRIBUYENTE.F_RETORNA_NOM_CONTRI(:P240_ID_DEUDOR);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(252714197967524372)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ACTIVA_USUARIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMensaje_Retorno VARCHAR2(200);',
'vRetorno boolean;',
'BEGIN',
'NULL;',
'--El estado se cambia a activo',
'UPDATE MAESTRO_CONTRIBUYENTE SET CODIGO_ESTADO = ''AC'' WHERE ID_CONTRIBUYENTE = :P240_CONTRIBUYENTE;',
'--Se activa el usuario ',
'UPDATE USUARIOS_EXTERNOS SET CODIGO_ESTADO = ''AC'' WHERE ID_CONTRIBUYENTE = :P240_CONTRIBUYENTE;',
unistr('--Se genera una contrase\00F1a temporal y se envia un correo con esa contrase\00F1a temporal'),
'PKG_ENVIO_NOTIF_ICT_CONTRIB.NOTIF_ACTIVACION_USR (:P240_CEDULA,8,''A'',:APP_USER,vMensaje_Retorno,vRetorno);',
'--Revisar el tema de periodo de inactivacion ',
'--Pasamos la solicitud como aprobada',
'UPDATE ENVIO_CORREO_SIT SET CODIGO_ESTADO = ''A'' WHERE ID_CORREO = :P240_NUM_SOLICITUD;',
'COMMIT;',
'',
'--Activar en maestro_deudores',
'    UPDATE MAESTRO_DEUDORES@CONSULTA_ICTX SET CODIGO_ESTADO = ''AC'' WHERE ID_DEUDOR = :P240_ID_DEUDOR;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(252713981954524370)
);
wwv_flow_api.component_end;
end;
/
