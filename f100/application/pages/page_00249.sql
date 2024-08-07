prompt --application/pages/page_00249
begin
--   Manifest
--     PAGE: 00249
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
 p_id=>249
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'249-Carga Carta al RN COT'
,p_alias=>'249-CARGA-CARTA-AL-RN-COT'
,p_page_mode=>'MODAL'
,p_step_title=>'Notificar y enviar Carta al RN'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230515131544'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(294528568479796129)
,p_plug_name=>'249-Carga Carta al RN COT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155119133581979473)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ARCHIVO_CARTAS_RN_COT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(294533091060796108)
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
 p_id=>wwv_flow_api.id(152689627733690505)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(294533091060796108)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152690047258690504)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(294533091060796108)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P249_ID_CARTA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152690472238690504)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(294533091060796108)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P249_ID_CARTA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152690899379690503)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(294533091060796108)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Notificar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P249_ID_CARTA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152691547522690497)
,p_name=>'P249_ID_CARTA'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(294528568479796129)
,p_item_source_plug_id=>wwv_flow_api.id(294528568479796129)
,p_item_default=>'SEQ_ARCHI_CARTA_RN_CTO'
,p_item_default_type=>'SEQUENCE'
,p_source=>'ID_CARTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152691925886690495)
,p_name=>'P249_ID_DECLARA_CTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(294528568479796129)
,p_item_source_plug_id=>wwv_flow_api.id(294528568479796129)
,p_source=>'ID_DECLARA_CTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152692329475690495)
,p_name=>'P249_ARCHIVO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(294528568479796129)
,p_item_source_plug_id=>wwv_flow_api.id(294528568479796129)
,p_prompt=>'Adjuntar Carta firmada'
,p_source=>'ARCHIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'NOMBRE_ARCHIVO'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_11=>'.pdf'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152692767276690495)
,p_name=>'P249_FEC_ACT'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(294528568479796129)
,p_item_source_plug_id=>wwv_flow_api.id(294528568479796129)
,p_prompt=>'Fecha'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FEC_ACT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152693199970690494)
,p_name=>'P249_ID_OFICINA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(294528568479796129)
,p_item_source_plug_id=>wwv_flow_api.id(294528568479796129)
,p_source=>'ID_OFICINA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(158829557667968247)
,p_name=>'P249_NUM_OFICIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(294528568479796129)
,p_item_source_plug_id=>wwv_flow_api.id(294528568479796129)
,p_prompt=>'Numero de Oficio'
,p_source=>'NUM_OFICIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(167972256606571013)
,p_name=>'P249_TIPO_CONTRIBUYENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(294528568479796129)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152696344339690479)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(152689627733690505)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152696838343690478)
,p_event_id=>wwv_flow_api.id(152696344339690479)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152693966257690493)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(294528568479796129)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 249-Carga Carta al RN COT'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152695586834690479)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ENVIA_NOTIFICACIN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'PKG_TRAMITE_COT.NOTIFICA_REGISTRO_NACIONAL (:P249_ID_DECLARA_CTO,:P249_ID_OFICINA,:P249_NUM_OFICIO);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152695907394690479)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152693502715690494)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(294528568479796129)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 249-Carga Carta al RN COT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(158829615075968248)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vDAT VARCHAR2(10);',
'vAno VARCHAR2(4);',
'vIdDocumento NUMBER;',
'vFecha DATE;',
'',
'BEGIN ',
'    IF :P249_TIPO_CONTRIBUYENTE = 8 THEN',
'        vDAT := ''DAT-SO-'';',
'    ELSE',
'        vDAT := ''DAT-SR-'';',
'    END IF;',
'vAno := EXTRACT(YEAR FROM sysdate);',
' SELECT MAX(ID_CARTA) INTO vIdDocumento FROM ARCHIVO_CARTAS_RN_COT;',
' vIdDocumento := NVL(vIdDocumento,0)+1;',
':P249_NUM_OFICIO := vDAT||vIdDocumento||''-''||vAno;',
'',
'vFecha := SYSDATE;',
':P249_FEC_ACT := vFecha;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
