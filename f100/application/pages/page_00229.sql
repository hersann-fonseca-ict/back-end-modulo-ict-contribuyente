prompt --application/pages/page_00229
begin
--   Manifest
--     PAGE: 00229
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
 p_id=>229
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'229-Rechazar solicitud'
,p_alias=>'229-RECHAZAR-SOLICITUD'
,p_page_mode=>'MODAL'
,p_step_title=>'Rechazar solicitud'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230321093005'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185415594275738598)
,p_plug_name=>'229-Rechazar solicitud'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155119133581979473)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ENVIO_CORREO_SIT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185422183300738621)
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
 p_id=>wwv_flow_api.id(185422602635738622)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(185422183300738621)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(185424269079738630)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(185422183300738621)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(185424665985738631)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(185422183300738621)
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
 p_id=>wwv_flow_api.id(185425042316738631)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(185422183300738621)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(188660399026885591)
,p_branch_name=>'Go to 1'
,p_branch_action=>'f?p=&APP_ID.:&P229_PAGINA.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(148045963867686132)
,p_name=>'P229_PAGINA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185234537998199172)
,p_name=>'P229_ID_INSCRIPCION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185415929307738601)
,p_name=>'P229_ID_CORREO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_source_plug_id=>wwv_flow_api.id(185415594275738598)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Correo'
,p_source=>'ID_CORREO'
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
 p_id=>wwv_flow_api.id(185416353120738611)
,p_name=>'P229_ID_TIPO_SOLICITUD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_default=>'5'
,p_prompt=>'Tipo Solicitud:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_SOLICITUD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185416773488738616)
,p_name=>'P229_CORREO_DE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_source_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_default=>'Informacion.Tributaria@ict.go.cr'
,p_source=>'CORREO_DE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185417097683738616)
,p_name=>'P229_CORREO_PARA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_source_plug_id=>wwv_flow_api.id(185415594275738598)
,p_prompt=>'Para:'
,p_source=>'CORREO_PARA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1000
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185417576304738616)
,p_name=>'P229_CORREO_COPIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_source_plug_id=>wwv_flow_api.id(185415594275738598)
,p_source=>'CORREO_COPIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185417968315738617)
,p_name=>'P229_ASUNTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_source_plug_id=>wwv_flow_api.id(185415594275738598)
,p_prompt=>'Asunto:'
,p_source=>'ASUNTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>62
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185418361246738617)
,p_name=>'P229_DETALLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_source_plug_id=>wwv_flow_api.id(185415594275738598)
,p_prompt=>'Detalle:'
,p_source=>'DETALLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>62
,p_cMaxlength=>4000
,p_cHeight=>6
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185418743296738618)
,p_name=>'P229_USUARIO_INCLUYE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_source_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_default=>':AAP_USER'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'USUARIO_INCLUYE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185419122681738618)
,p_name=>'P229_FECHA_INCLUYE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_source_plug_id=>wwv_flow_api.id(185415594275738598)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'FECHA_INCLUYE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(252711844034524348)
,p_name=>'P229_TIPO_CORREO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(185415594275738598)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(185422687907738622)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(185422602635738622)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(185423564204738628)
,p_event_id=>wwv_flow_api.id(185422687907738622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(185425835295738633)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(185415594275738598)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 229-Rechazar solicitud'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(185426250888738633)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(185425443299738632)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(185415594275738598)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 229-Rechazar solicitud'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(185234694113199174)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAsunto_usrExterno VARCHAR2(4000);',
'vDetalle_usrExterno VARCHAR2(4000);',
'vCorreoUsrExt VARCHAR2(200);',
'vCorreoUsrInt VARCHAR2(200);',
'vCantCorreoUsrExt NUMBER;',
'vCantCorreoUsrInt NUMBER;   ',
'--Obtenemos los correos de la inscripcion',
'    CURSOR C_CANT_CORREOS_USR_EXTERNO IS',
'    SELECT COUNT (*)',
'    FROM   CORREO_NOTIFICA_INSCRIP',
'    WHERE  ID_NUM_INSCRIPCION = :P229_ID_INSCRIPCION;',
'--Obtenemos los correos de la inscripcion',
'    CURSOR C_CORREOS_USR_EXTERNO IS',
'    SELECT CORREO_NOTIFICA',
'    FROM   CORREO_NOTIFICA_INSCRIP',
'    WHERE  ID_NUM_INSCRIPCION = :P229_ID_INSCRIPCION;',
'--Obtengo cantidad de encargados',
'    CURSOR C_CANT_CORREOS_USR_INTERNO IS',
'    SELECT COUNT(*)',
'    FROM  ENCARGADO_CORREO_SIT',
'    WHERE IND_CORREO = ''S'';',
'--Obtenemos correos de los encargados',
'    CURSOR C_CORREOS_ENCAR IS',
'    SELECT CORREO_ENCARGADO',
'    FROM  ENCARGADO_CORREO_SIT',
'    WHERE IND_CORREO = ''S'';',
'    ',
'--Obtenemos datos de la tabla tipo_correos_sit para el tipo de solicitud 5 - Rechazo inscripcion regular,usuario externo',
'    CURSOR C_INGRESO_IR_E IS',
'    SELECT ASUNTO,DETALLE',
'    FROM TIPO_CORREO_SIT',
'    WHERE ID_TIPO_SOLICITUD = :P229_ID_TIPO_SOLICITUD',
'    AND   TIPO_USUARIO = ''E''',
'    AND   CODIGO_ESTADO = ''AC''',
'    AND   TIPO_CORREO = :P229_TIPO_CORREO;',
'    --AND   ID_TIPO_SOLICITUD IN (SELECT ID_TIPO_SOLICITUD FROM TIPO_SOLICITUD WHERE ID_TIPO_CONTRIBUYENTE = 0);',
'BEGIN',
'    OPEN  C_CANT_CORREOS_USR_EXTERNO;',
'    FETCH C_CANT_CORREOS_USR_EXTERNO INTO vCantCorreoUsrExt;',
'    CLOSE C_CANT_CORREOS_USR_EXTERNO;',
'    ',
'    OPEN  C_CANT_CORREOS_USR_INTERNO;',
'    FETCH C_CANT_CORREOS_USR_INTERNO INTO vCantCorreoUsrInt;',
'    CLOSE C_CANT_CORREOS_USR_INTERNO;',
'    ',
'    OPEN  C_INGRESO_IR_E;',
'    FETCH C_INGRESO_IR_E INTO vAsunto_usrExterno,vDetalle_usrExterno;',
'    CLOSE C_INGRESO_IR_E;',
'    ',
'FOR b IN 1..vCantCorreoUsrExt LOOP',
'    vCorreoUsrExt := NULL;',
'    FOR i IN C_CORREOS_USR_EXTERNO LOOP',
'        vCorreoUsrExt := vCorreoUsrExt||'';''||i.CORREO_NOTIFICA;',
'    END LOOP;',
'    :P229_CORREO_PARA := vCorreoUsrExt;',
'END LOOP;',
'',
'FOR b IN 1..vCantCorreoUsrInt LOOP',
'vCorreoUsrInt := NULL;',
'    FOR i IN C_CORREOS_ENCAR LOOP',
'        vCorreoUsrInt := vCorreoUsrInt||'';''||i.CORREO_ENCARGADO;',
'    END LOOP;',
'    :P229_CORREO_PARA := vCorreoUsrExt;',
'    :P229_CORREO_COPIA := vCorreoUsrInt;',
'    :P229_ASUNTO := vAsunto_usrExterno;',
'    :P229_DETALLE := vDetalle_usrExterno;',
'END LOOP;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(185234836305199175)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_RECHAZA_IR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--Falta proceso de envio de correos',
'--Actualizar el estado de la solicitud de inscripcion',
'UPDATE SOLICITUD_INSCRIPCION SET CODIGO_ESTADO = ''R'',USUARIO_SIT = :APP_USER WHERE ID_NUM_INSCRIPCION = :P229_ID_INSCRIPCION;',
'COMMIT;  ',
'PKG_ENVIO_NOTIF_ICT_CONTRIB.NOTIFICA_RECHAZO_INSCRIPCION (:P229_ID_INSCRIPCION,:P229_ID_TIPO_SOLICITUD,''E'',''R'',:P229_ASUNTO,:P229_DETALLE);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
