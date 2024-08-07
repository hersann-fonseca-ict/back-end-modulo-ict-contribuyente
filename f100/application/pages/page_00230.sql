prompt --application/pages/page_00230
begin
--   Manifest
--     PAGE: 00230
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
 p_id=>230
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'230-Rechazar Des-inscripcion '
,p_alias=>'230-RECHAZAR-DES-INSCRIPCION'
,p_page_mode=>'MODAL'
,p_step_title=>'Rechazar Solicitud'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230623164636'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(221782951856690061)
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
 p_id=>wwv_flow_api.id(221789540881690084)
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
 p_id=>wwv_flow_api.id(185732380456161546)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(221789540881690084)
,p_button_name=>'BTN_RECHAZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P230_PAGINA'
,p_button_condition2=>'231'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'u-color-39'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(187045629924456585)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(221789540881690084)
,p_button_name=>'BTN_ENVIAR_ANRI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P230_PAGINA'
,p_button_condition2=>'221'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(218755067631003388)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(221789540881690084)
,p_button_name=>'BTN_RECHAZA_REPRE_L'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P230_PAGINA'
,p_button_condition2=>'235'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(230618517756483089)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(221789540881690084)
,p_button_name=>'BTN_RECHAZA_IMP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P230_PAGINA'
,p_button_condition2=>'237'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(185494608128365535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(221789540881690084)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(185493874577365534)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(221789540881690084)
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
 p_id=>wwv_flow_api.id(185494195947365535)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(221789540881690084)
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
 p_id=>wwv_flow_api.id(185495011642365536)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(221789540881690084)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P230_PAGINA'
,p_button_condition2=>'203'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(186185052612917277)
,p_branch_name=>'Go to 231'
,p_branch_action=>'f?p=&APP_ID.:&P230_PAGINA.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184951326184269026)
,p_name=>'P230_ID_REPRESENTA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185234910790199176)
,p_name=>'P230_ID_DESINCRIPCION'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185488752484365526)
,p_name=>'P230_ID_CORREO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_source_plug_id=>wwv_flow_api.id(221782951856690061)
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
 p_id=>wwv_flow_api.id(185489132302365530)
,p_name=>'P230_ID_TIPO_SOLICITUD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_source_plug_id=>wwv_flow_api.id(221782951856690061)
,p_prompt=>'Tipo Solicitud:'
,p_source=>'ID_TIPO_SOLICITUD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_SOLICITUD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185489515690365530)
,p_name=>'P230_CORREO_DE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_source_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_default=>'Informacion.Tributaria@ict.go.cr'
,p_prompt=>'De:'
,p_source=>'CORREO_DE'
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
 p_id=>wwv_flow_api.id(185489962003365530)
,p_name=>'P230_CORREO_PARA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_source_plug_id=>wwv_flow_api.id(221782951856690061)
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
 p_id=>wwv_flow_api.id(185490306213365530)
,p_name=>'P230_CORREO_COPIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_source_plug_id=>wwv_flow_api.id(221782951856690061)
,p_prompt=>'Copia:'
,p_source=>'CORREO_COPIA'
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
 p_id=>wwv_flow_api.id(185490689743365531)
,p_name=>'P230_ASUNTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_source_plug_id=>wwv_flow_api.id(221782951856690061)
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
 p_id=>wwv_flow_api.id(185491137988365531)
,p_name=>'P230_DETALLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_source_plug_id=>wwv_flow_api.id(221782951856690061)
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
 p_id=>wwv_flow_api.id(185491533959365531)
,p_name=>'P230_USUARIO_INCLUYE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_source_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_default=>':AAP_USER'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'USUARIO_INCLUYE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185491959009365532)
,p_name=>'P230_FECHA_INCLUYE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_source_plug_id=>wwv_flow_api.id(221782951856690061)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'FECHA_INCLUYE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185492318289365532)
,p_name=>'P230_ID_CONTRIBUYENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185732292363161545)
,p_name=>'P230_PAGINA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185732617991161548)
,p_name=>'P230_ID_APODERADO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(231635070774290847)
,p_name=>'P230_TIPO_IMPUESTO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(252711710710524347)
,p_name=>'P230_TIPO_CORREO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(221782951856690061)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(185499349033365557)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(185494608128365535)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(185499812972365558)
,p_event_id=>wwv_flow_api.id(185499349033365557)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(185493124535365533)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(221782951856690061)
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
 p_id=>wwv_flow_api.id(185498921813365557)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(185492743830365532)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(221782951856690061)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 229-Rechazar solicitud'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(185498109803365556)
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
'    FROM   CORREO_NOTIFICACIONES',
'    WHERE  ID_CONTRIBUYENTE = :P230_ID_CONTRIBUYENTE;',
'--Obtenemos los correos de la inscripcion',
'    CURSOR C_CORREOS_USR_EXTERNO IS',
'    SELECT CORREO_NOTIFICA',
'    FROM   CORREO_NOTIFICACIONES',
'    WHERE  ID_CONTRIBUYENTE = :P230_ID_CONTRIBUYENTE;',
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
'--Obtenemos datos de la tabla tipo_correos_sit',
'    CURSOR C_INGRESO_IR_E IS',
'    SELECT ASUNTO,DETALLE',
'    FROM TIPO_CORREO_SIT',
'    WHERE ID_TIPO_SOLICITUD = :P230_ID_TIPO_SOLICITUD',
'    AND   TIPO_USUARIO = ''E''',
'    AND   CODIGO_ESTADO = ''AC''',
'    AND   TIPO_CORREO = :P230_TIPO_CORREO;',
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
'    :P230_CORREO_PARA := vCorreoUsrExt;',
'END LOOP;',
'',
'FOR b IN 1..vCantCorreoUsrInt LOOP',
'vCorreoUsrInt := NULL;',
'    FOR i IN C_CORREOS_ENCAR LOOP',
'        vCorreoUsrInt := vCorreoUsrInt||'';''||i.CORREO_ENCARGADO;',
'    END LOOP;',
'    :P230_CORREO_PARA := vCorreoUsrExt;',
'    :P230_CORREO_COPIA := vCorreoUsrInt;',
'    :P230_ASUNTO := vAsunto_usrExterno;',
'    :P230_DETALLE := vDetalle_usrExterno;',
'END LOOP;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(185498511418365556)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_RECHAZA_IR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--Falta proceso de envio de correos',
'--Actualizar el estado de la solicitud de inscripcion',
'UPDATE SOLICITUD_DES_INSCRIPCION SET CODIGO_ESTADO = ''R'',USUARIO_SIT = :APP_USER WHERE ID_DESC_INSCRIPCION = :P230_ID_DESINCRIPCION;',
'    COMMIT; ',
'PKG_ENVIO_NOTIF_ICT_CONTRIB.RECHAZO_CONTRIBUYENTES (:P230_ID_CONTRIBUYENTE,:P230_ID_DESINCRIPCION,:P230_ID_TIPO_SOLICITUD,:P230_TIPO_CORREO,''E'',:P230_ASUNTO,:P230_DETALLE);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(185495011642365536)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(187045514975456584)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_RECHAZA_ANRI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--Falta proceso de envio de correos',
'--Actualizar el estado de la solicitud de inscripcion',
'UPDATE SOLICITUD_DES_INSCRIPCION SET CODIGO_ESTADO = ''R'',USUARIO_SIT = :APP_USER WHERE ID_DESC_INSCRIPCION = :P230_ID_DESINCRIPCION;',
'    COMMIT; ',
'PKG_ENVIO_NOTIF_ICT_CONTRIB.RECHAZO_CONTRIBUYENTES (:P230_ID_CONTRIBUYENTE,:P230_ID_DESINCRIPCION,:P230_ID_TIPO_SOLICITUD,:P230_TIPO_CORREO,''E'',:P230_ASUNTO,:P230_DETALLE);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(187045629924456585)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(185732478601161547)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_RECHAZO_RCPA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vTipoApoderado VARCHAR2(2);',
'vTipoSolicitud NUMBER;',
'',
'    CURSOR C_TIPO_APODERADO IS',
'    SELECT INDICA_AUTORIZO',
'    FROM APODERADOS',
'    WHERE ID_APODERADO = :P230_ID_APODERADO;',
'    ',
'BEGIN',
'--Buscamos el tipo de apoderado para poder enviar la notificacion correcta.',
'    OPEN    C_TIPO_APODERADO;',
'    FETCH   C_TIPO_APODERADO INTO vTipoApoderado;',
'    CLOSE   C_TIPO_APODERADO;',
'    ',
'    IF vTipoApoderado = ''A'' THEN',
'        vTipoSolicitud := 9;',
'    ELSIF vTipoApoderado = ''F'' THEN',
'        vTipoSolicitud := 10;',
'    ELSIF vTipoApoderado = ''T'' THEN',
'        vTipoSolicitud := 11;',
'    END IF;',
'--Envio correo notificacion',
'PKG_ENVIO_NOTIF_ICT_CONTRIB.RECHAZO_CONTRIBUYENTES (:P230_ID_CONTRIBUYENTE,NULL,vTipoSolicitud,:P230_TIPO_CORREO,''E'',:P230_ASUNTO,:P230_DETALLE);',
'UPDATE APODERADOS SET CODIGO_ESTADO = ''R'',USUARIO_SIT = :APP_USER WHERE ID_APODERADO = :P230_ID_APODERADO AND ID_CONTRIBUYENTE = :P230_ID_CONTRIBUYENTE;',
'COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(185732380456161546)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(218755175307003389)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_RECHAZO_REPRE_L'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'UPDATE TEMP_ACT_REPRE_LEGAL SET CODIGO_ESTADO = ''R'',USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P230_ID_CONTRIBUYENTE AND ID_REPRESENTA = :P230_ID_REPRESENTA;',
'COMMIT;',
'PKG_ENVIO_NOTIF_ICT_CONTRIB.RECHAZO_CONTRIBUYENTES (:P230_ID_CONTRIBUYENTE,NULL,:P230_ID_TIPO_SOLICITUD,:P230_TIPO_CORREO,''E'',:P230_ASUNTO,:P230_DETALLE);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(218755067631003388)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(230618381018483088)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_RECHAZO_IMPUESTO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'UPDATE TEMP_IMPUESTO_MAEST_CONTRIB SET CODIGO_ESTADO = ''R'', USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P230_ID_CONTRIBUYENTE AND ID_TIPO_IMPUESTO = :P230_TIPO_IMPUESTO;',
'COMMIT;',
'',
'PKG_ENVIO_NOTIF_ICT_CONTRIB.RECHAZO_CONTRIBUYENTES (:P230_ID_CONTRIBUYENTE,NULL,:P230_ID_TIPO_SOLICITUD,:P230_TIPO_CORREO,''E'',:P230_ASUNTO,:P230_DETALLE);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(230618517756483089)
);
wwv_flow_api.component_end;
end;
/
