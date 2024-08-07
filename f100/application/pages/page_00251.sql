prompt --application/pages/page_00251
begin
--   Manifest
--     PAGE: 00251
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
 p_id=>251
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('251-Envio de contrase\00F1a')
,p_alias=>unistr('251-ENVIO-DE-CONTRASE\00D1A')
,p_step_title=>unistr('Envi\00F3 de contrase\00F1a')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230822144134'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188930084641494316)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188930109567494317)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(188930084641494316)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h4>Envi\00F3 de contrase\00F1a</h4></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188930243958494318)
,p_plug_name=>unistr('Informaci\00F3n ')
,p_parent_plug_id=>wwv_flow_api.id(188930084641494316)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(188930685620494322)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(188930243958494318)
,p_button_name=>'BTN_ENVIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Enviar Contrase\00F1a')
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(188930387560494319)
,p_name=>'P251_CONTRIBUYENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(188930243958494318)
,p_prompt=>'Contribuyente:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_DEUDOR||'' - ''||NOMBRE_ENTIDAD, ID_DEUDOR',
'FROM MAESTRO_CONTRIBUYENTE',
'WHERE CODIGO_ESTADO = ''AC''',
'AND   ID_TIPO_CONTRIBUYENTE = :P251_TIPO_CONTRIBUYENTE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P251_TIPO_CONTRIBUYENTE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(188930849478494324)
,p_name=>'P251_CEDULA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(188930243958494318)
,p_prompt=>'Cedula'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(194668922249905412)
,p_name=>'P251_TIPO_CONTRIBUYENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(188930243958494318)
,p_prompt=>'Tipo Contribuyente:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_CONTRIBUYENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_TIPO_CONTRIBUYENTE, DESCRIPCION',
'FROM TIPO_CONTRIBUYENTE',
'WHERE CODIGO_ESTADO = ''AC'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(188930944574494325)
,p_name=>'DAC_OBTIENE_CEDULA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P251_CONTRIBUYENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(188931018708494326)
,p_event_id=>wwv_flow_api.id(188930944574494325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vCedulaJ VARCHAR2(30);',
'    vCedulaF VARCHAR2(30);  ',
'    vTipoIdent NUMBER;',
'        CURSOR C_CEDULA IS',
'        SELECT CEDULA_JURIDICA, CEDULA_FISICA, ID_TIPO_IDENTIFICACION',
'        FROM   MAESTRO_CONTRIBUYENTE',
'        WHERE  ID_DEUDOR = :P251_CONTRIBUYENTE;',
'BEGIN',
'        OPEN  C_CEDULA;',
'        FETCH C_CEDULA INTO vCedulaJ,vCedulaF,vTipoIdent;',
'        CLOSE C_CEDULA;',
'        ',
'        IF vTipoIdent = 1 THEN',
'            :P251_CEDULA := vCedulaJ;',
'        END IF;',
'        ',
'        IF vTipoIdent = 2 THEN',
'            :P251_CEDULA := vCedulaF;',
'        END IF;',
'        ',
'END;'))
,p_attribute_02=>'P251_CONTRIBUYENTE,P251_CEDULA'
,p_attribute_03=>'P251_CEDULA'
,p_attribute_04=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(190101214902825538)
,p_name=>'DAC_ENVIA_CORREO'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(188930685620494322)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(190101334863825539)
,p_event_id=>wwv_flow_api.id(190101214902825538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMensaje_Retorno VARCHAR2(200);',
'vRetorno boolean;',
'BEGIN',
'  PKG_ENVIO_NOTIF_ICT_CONTRIB.NOTIF_OLVIDO_PWD_USR_EXT (:P251_CEDULA, 1,:APP_USER,vMensaje_Retorno,vRetorno);',
' --NULL;',
'END;'))
,p_attribute_02=>'P251_CEDULA'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(190101520460825541)
,p_event_id=>wwv_flow_api.id(190101214902825538)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(190101488021825540)
,p_event_id=>wwv_flow_api.id(190101214902825538)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('La contrase\00F1a fue enviada.')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(188930707653494323)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ENVIA_PASS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMensaje_Retorno VARCHAR2(200);',
'vRetorno boolean;',
'BEGIN',
'  PKG_ENVIO_NOTIF_ICT_CONTRIB.NOTIF_OLVIDO_PWD_USR_EXT (:P251_CEDULA, 1,:APP_USER,vMensaje_Retorno,vRetorno);',
' --NULL;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
