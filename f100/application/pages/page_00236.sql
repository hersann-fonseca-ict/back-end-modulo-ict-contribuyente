prompt --application/pages/page_00236
begin
--   Manifest
--     PAGE: 00236
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
 p_id=>236
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'236-Formulario Temp repre legal'
,p_alias=>'236-FORMULARIO-TEMP-REPRE-LEGAL'
,p_page_mode=>'MODAL'
,p_step_title=>'Actualizar Representante Legal'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230623164705'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(228046255819828456)
,p_plug_name=>'236-Formulario Temp repre legal'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155119133581979473)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'TEMP_ACT_REPRE_LEGAL'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(229116107694667591)
,p_name=>'Archivos'
,p_parent_plug_id=>wwv_flow_api.id(228046255819828456)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ARCHIVO,',
'       ID_REPRESENTA,',
'       NOMBRE_ARCHIVO,',
'       sys.dbms_lob.getlength(ARCHIVO_REPRESENTA)DESCARGAR,',
'       MIMETYPE,',
'       FEC_ACT,',
'       USUARIO_SIT',
'  from TEMP_ARCHI_REPRE_LEGAL',
'  where ID_REPRESENTA = :P236_ID_REPRESENTA'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P236_ID_REPRESENTA'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230455576777560149)
,p_query_column_id=>1
,p_column_alias=>'ID_ARCHIVO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(229116226459667592)
,p_query_column_id=>2
,p_column_alias=>'ID_REPRESENTA'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230454929394560143)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ARCHIVO'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(159234883978083152)
,p_query_column_id=>4
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>7
,p_column_heading=>'Descargar'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:TEMP_ARCHI_REPRE_LEGAL:ARCHIVO_REPRESENTA:ID_ARCHIVO::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230455115783560145)
,p_query_column_id=>5
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230455216638560146)
,p_query_column_id=>6
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230455283001560147)
,p_query_column_id=>7
,p_column_alias=>'USUARIO_SIT'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(228051561191828433)
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
 p_id=>wwv_flow_api.id(228051921696828432)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(228051561191828433)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(228053498057828424)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(228051561191828433)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Rechazar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.::P230_ID_CONTRIBUYENTE,P230_ID_TIPO_SOLICITUD,P230_PAGINA,P230_TIPO_CORREO,P230_ID_REPRESENTA:&P236_ID_CONTRIBUYENTE.,13,235,R,&P236_ID_REPRESENTA.'
,p_button_css_classes=>'u-color-39'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(228053936203828424)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(228051561191828433)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(228054333655828424)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(228051561191828433)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(230458978293560183)
,p_branch_name=>'IR_PAGINA_235'
,p_branch_action=>'f?p=&APP_ID.:235:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(228046636092828446)
,p_name=>'P236_ID_REPRESENTA'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(228046255819828456)
,p_item_source_plug_id=>wwv_flow_api.id(228046255819828456)
,p_source=>'ID_REPRESENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(228047011500828438)
,p_name=>'P236_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(228046255819828456)
,p_item_source_plug_id=>wwv_flow_api.id(228046255819828456)
,p_source=>'ID_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(228047439907828435)
,p_name=>'P236_NOMBRE_REPRE_LEGAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(228046255819828456)
,p_item_source_plug_id=>wwv_flow_api.id(228046255819828456)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE_REPRE_LEGAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(228047783744828435)
,p_name=>'P236_CEDULA_REPRE_LEGAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(228046255819828456)
,p_item_source_plug_id=>wwv_flow_api.id(228046255819828456)
,p_prompt=>'Cedula'
,p_source=>'CEDULA_REPRE_LEGAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(228048271448828435)
,p_name=>'P236_CORREO_REPRE_LEGAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(228046255819828456)
,p_item_source_plug_id=>wwv_flow_api.id(228046255819828456)
,p_prompt=>'Correo'
,p_source=>'CORREO_REPRE_LEGAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(228048670111828434)
,p_name=>'P236_CODIGO_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(228046255819828456)
,p_item_source_plug_id=>wwv_flow_api.id(228046255819828456)
,p_source=>'CODIGO_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(228049046926828434)
,p_name=>'P236_USUARIO_SIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(228046255819828456)
,p_item_source_plug_id=>wwv_flow_api.id(228046255819828456)
,p_source=>'USUARIO_SIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(228051987918828432)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(228051921696828432)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(228052790884828426)
,p_event_id=>wwv_flow_api.id(228051987918828432)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(228055134552828423)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(228046255819828456)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 236-Formulario Temp repre legal'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(228055556776828423)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(228054740301828424)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(228046255819828456)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 236-Formulario Temp repre legal'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(230459047576560184)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vNom VARCHAR2(100);',
'    vCed VARCHAR2 (100);',
'    vCorreo VARCHAR2 (100);',
'    CURSOR C_REPRE IS',
'    SELECT NOMBRE_REPRE_LEGAL,CEDULA_REPRE_LEGAL,CORREO_REPRE_LEGAL',
'    FROM   TEMP_ACT_REPRE_LEGAL',
'    WHERE  ID_REPRESENTA = :P236_ID_REPRESENTA;',
'   -- AND    ID_CONTRIBUYENTE = :P236_ID_CONTRIBUYENTE;',
'BEGIN',
'    OPEN  C_REPRE;',
'    FETCH C_REPRE INTO vNom,vCed,vCorreo;',
'    CLOSE C_REPRE;',
'    ',
'    :P236_NOMBRE_REPRE_LEGAL := vNom;',
'    :P236_CEDULA_REPRE_LEGAL := vCed;',
'    :P236_CORREO_REPRE_LEGAL := vCorreo;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(230458832973560182)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_APRUEBA_SOL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vId_archivo number;',
'vIdRepresentaTemp NUMBER;',
'vNombre VARCHAR2(80);',
'vCedula VARCHAR2 (25);',
'vCorreo VARCHAR2 (50);',
'',
'CURSOR C_REPRE IS',
'SELECT ID_REPRESENTA, NOMBRE_REPRE_LEGAL,CEDULA_REPRE_LEGAL,CORREO_REPRE_LEGAL',
'FROM TEMP_ACT_REPRE_LEGAL',
'WHERE ID_CONTRIBUYENTE = :P236_ID_CONTRIBUYENTE',
'AND   CODIGO_ESTADO = ''P''',
'AND   ID_REPRESENTA = :P236_ID_REPRESENTA;',
'',
'CURSOR C_ARCHIVOS_REPRE (pId_representa NUMBER)IS',
'SELECT *',
'FROM TEMP_ARCHI_REPRE_LEGAL',
'WHERE ID_REPRESENTA = pId_representa;',
'',
'',
'BEGIN',
'OPEN  C_REPRE;',
'FETCH C_REPRE INTO vIdRepresentaTemp,vNombre,vCedula,vCorreo;',
'CLOSE C_REPRE;',
'',
'UPDATE MAESTRO_CONTRIBUYENTE SET NOMBRE_REPRE_LEGAL = vNombre, CEDULA_REPRE_LEGAL = vCedula,CORREO_REPRE_LEGAL = vCorreo,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P236_ID_CONTRIBUYENTE;',
'UPDATE ARCHIVOS_REPRE_LEGAL SET CODIGO_ESTADO = ''IA'',USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P236_ID_CONTRIBUYENTE;',
'UPDATE TEMP_ACT_REPRE_LEGAL SET CODIGO_ESTADO = ''A'',USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P236_ID_CONTRIBUYENTE AND ID_REPRESENTA = :P236_ID_REPRESENTA;',
'COMMIT;',
'',
'FOR c in C_ARCHIVOS_REPRE(vIdRepresentaTemp) LOOP',
'vId_archivo := SEQ_REPRE_LEGAL.NEXTVAL;',
'    INSERT INTO ARCHIVOS_REPRE_LEGAL VALUES (vId_archivo,',
'                                             :P236_ID_CONTRIBUYENTE,',
'                                             c.nombre_archivo,',
'                                             c.archivo_representa,',
'                                             c.mimetype,',
'                                             c.fec_act,',
'                                             :APP_USER,',
'                                             ''AC'');',
'END LOOP;',
'--enviar correo al usuario externo',
'PKG_ENVIO_NOTIF_ICT_CONTRIB.NOTIFICA_CONTRIBUYENTES (:P236_ID_CONTRIBUYENTE,NULL,13,''A'',''E'',0);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(228053936203828424)
);
wwv_flow_api.component_end;
end;
/
