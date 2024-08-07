prompt --application/pages/page_00238
begin
--   Manifest
--     PAGE: 00238
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
 p_id=>238
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'238-Formulario solicitud actualizacion impuesto'
,p_alias=>'238-FORMULARIO-SOLICITUD-ACTUALIZACION-IMPUESTO'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Solicitud actualizaci\00F3n tipo impuesto')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230622115756'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(230688790297600035)
,p_plug_name=>'238-Formulario solicitud actualizacion impuesto'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155119133581979473)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'TEMP_IMPUESTO_MAEST_CONTRIB'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(230694832684600022)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155120086444979472)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(230695198596600022)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(230694832684600022)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(230697213168600012)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(230694832684600022)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(230696822053600012)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(230694832684600022)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Rechazar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.::P230_PAGINA,P230_ID_TIPO_SOLICITUD,P230_ID_CONTRIBUYENTE,P230_TIPO_IMPUESTO,P230_TIPO_CORREO:237,12,&P238_ID_CONTRIBUYENTE.,&P238_IMPUESTO.,R'
,p_button_condition=>'P238_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'u-color-39'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(230697647045600012)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(230694832684600022)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184951100835269024)
,p_name=>'P238_ID_IMPUESTO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(230688790297600035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230618340051483087)
,p_name=>'P238_IMPUESTO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(230688790297600035)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230689229940600032)
,p_name=>'P238_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(230688790297600035)
,p_item_source_plug_id=>wwv_flow_api.id(230688790297600035)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230689595682600027)
,p_name=>'P238_ID_TIPO_IMPUESTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(230688790297600035)
,p_item_source_plug_id=>wwv_flow_api.id(230688790297600035)
,p_prompt=>'Tipo Impuesto'
,p_source=>'ID_TIPO_IMPUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_IMPUESTO'
,p_lov=>'.'||wwv_flow_api.id(161757268632851451)||'.'
,p_cHeight=>1
,p_tag_attributes=>'disabled = disabled'
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230690049179600026)
,p_name=>'P238_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(230688790297600035)
,p_item_source_plug_id=>wwv_flow_api.id(230688790297600035)
,p_source=>'ID_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230690395858600025)
,p_name=>'P238_NOMBRE_ENCARGADO_IMP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(230688790297600035)
,p_prompt=>'Nombre Encargado Imp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_display_when=>'P238_TIPO_ACT'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230690826003600024)
,p_name=>'P238_CEDULA_ENCARGADO_IMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(230688790297600035)
,p_prompt=>'Cedula Encargado Imp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_display_when=>'P238_TIPO_ACT'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230691217101600024)
,p_name=>'P238_CORREO_ENCARGADO_IMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(230688790297600035)
,p_prompt=>'Correo Encargado Imp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_display_when=>'P238_TIPO_ACT'
,p_display_when2=>'N'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230691633821600024)
,p_name=>'P238_CODIGO_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(230688790297600035)
,p_item_source_plug_id=>wwv_flow_api.id(230688790297600035)
,p_source=>'CODIGO_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230692077926600024)
,p_name=>'P238_USUARIO_SIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(230688790297600035)
,p_item_source_plug_id=>wwv_flow_api.id(230688790297600035)
,p_source=>'USUARIO_SIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(231635122711290848)
,p_name=>'P238_TIPO_ACT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(230688790297600035)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(230695330090600022)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(230695198596600022)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(230696154204600014)
,p_event_id=>wwv_flow_api.id(230695330090600022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(230698437968600011)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(230688790297600035)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 238-Formulario solicitud actualizacion impuesto'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(230698840391600010)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(230698011750600011)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(230688790297600035)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 238-Formulario solicitud actualizacion impuesto'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(230618123797483085)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vImpuesto NUMBER;',
'vNombre VARCHAR2(80);',
'vCedula VARCHAR2(20);',
'vCorreo VARCHAR2(40);',
'vTipo_Act VARCHAR2(2);',
'    CURSOR C_TEMP_IMPUESTO IS',
'    SELECT ID_TIPO_IMPUESTO,NOMBRE_ENCARGADO_IMP,CEDULA_ENCARGADO_IMP,CORREO_ENCARGADO_IMP,TIPO_ACT',
'    FROM   TEMP_IMPUESTO_MAEST_CONTRIB',
'    WHERE  ID_CONTRIBUYENTE = :P238_ID_CONTRIBUYENTE',
'    AND    CODIGO_ESTADO = ''P''',
'    AND    ID_IMPUESTO = :P238_ID_IMPUESTO;',
'BEGIN',
'    OPEN    C_TEMP_IMPUESTO;',
'    FETCH   C_TEMP_IMPUESTO INTO vImpuesto,vNombre,vCedula,vCorreo,vTipo_Act;',
'    CLOSE   C_TEMP_IMPUESTO;',
'    ',
'    :P238_ID_TIPO_IMPUESTO     := vImpuesto;',
'    :P238_IMPUESTO             := vImpuesto;',
'    :P238_NOMBRE_ENCARGADO_IMP := vNombre;',
'    :P238_CEDULA_ENCARGADO_IMP := vCedula;',
'    :P238_CORREO_ENCARGADO_IMP := vCorreo;',
'    :P238_TIPO_ACT := vTipo_Act;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(230618255457483086)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_APROBAR_SOL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'IF :P238_TIPO_ACT = ''N'' THEN',
'    INSERT INTO IMPUESTO_X_MAESTRO_CONTRIBUYE VALUES (:P238_IMPUESTO,',
'                                                  :P238_ID_CONTRIBUYENTE,',
'                                                  :P238_NOMBRE_ENCARGADO_IMP,',
'                                                  :P238_CEDULA_ENCARGADO_IMP,',
'                                                  :P238_CORREO_ENCARGADO_IMP,                                               ',
'                                                  :APP_USER,',
'                                                  ''AC'');',
'',
'    UPDATE TEMP_IMPUESTO_MAEST_CONTRIB SET CODIGO_ESTADO = ''A'', USUARIO_SIT = :APP_USER ',
'    WHERE ID_CONTRIBUYENTE = :P238_ID_CONTRIBUYENTE AND ID_TIPO_IMPUESTO = :P238_IMPUESTO AND ID_IMPUESTO = :P238_ID_IMPUESTO;',
'ELSIF :P238_TIPO_ACT = ''I'' THEN',
'    UPDATE IMPUESTO_X_MAESTRO_CONTRIBUYE SET CODIGO_ESTADO = ''IA'' WHERE ID_CONTRIBUYENTE = :P238_ID_CONTRIBUYENTE AND ID_TIPO_IMPUESTO = :P238_IMPUESTO;',
'    UPDATE TEMP_IMPUESTO_MAEST_CONTRIB SET CODIGO_ESTADO = ''A'', USUARIO_SIT = :APP_USER ',
'    WHERE ID_CONTRIBUYENTE = :P238_ID_CONTRIBUYENTE AND ID_TIPO_IMPUESTO = :P238_IMPUESTO AND ID_IMPUESTO = :P238_ID_IMPUESTO;',
'END IF;',
'    PKG_ENVIO_NOTIF_ICT_CONTRIB.NOTIFICA_CONTRIBUYENTES (:P238_ID_CONTRIBUYENTE,NULL,12,''A'',''E'',0);',
'COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(230697647045600012)
);
wwv_flow_api.component_end;
end;
/
