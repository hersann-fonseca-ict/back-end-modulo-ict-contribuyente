prompt --application/pages/page_00216
begin
--   Manifest
--     PAGE: 00216
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
 p_id=>216
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('216-Formulario Inscripci\00F3n Alquileres')
,p_alias=>unistr('216-FORMULARIO-INSCRIPCI\00D3N-ALQUILERES')
,p_step_title=>unistr('216-Formulario Inscripci\00F3n Alquileres')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221110143611'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183151162097296886)
,p_plug_name=>unistr('Inscripci\00F3n Alquiler - Propiedades')
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
 p_id=>wwv_flow_api.id(183113890232280399)
,p_plug_name=>unistr('216-Formulario Inscripci\00F3n Alquileres')
,p_parent_plug_id=>wwv_flow_api.id(183151162097296886)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_region_attributes=>'style="width: 1000px"'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_column=>3
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'MAESTRO_CONTRIBUYENTE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(288731457705851063)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(183151162097296886)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Alquileres Propiedades ICT (Locales)</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183131606235280420)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(183113890232280399)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P216_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183130389984280418)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(183113890232280399)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183132010092280421)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(183113890232280399)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P216_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183131208244280420)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(183113890232280399)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Eliminar'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P216_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(183132335792280421)
,p_branch_action=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183114296429280403)
,p_name=>'P216_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_default=>'SEQ_ID_CONTRIBUYENTE'
,p_item_default_type=>'SEQUENCE'
,p_source=>'ID_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183114699535280408)
,p_name=>'P216_NOMBRE_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Nombre encargado:'
,p_source=>'NOMBRE_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183115123558280410)
,p_name=>'P216_ID_TIPO_IDENTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>unistr('Tipo identificaci\00F3n:')
,p_source=>'ID_TIPO_IDENTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_IDENTIFICACION'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183115528250280410)
,p_name=>'P216_PERSONA_FISICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>unistr('Persona f\00EDsica:')
,p_source=>'PERSONA_FISICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183115971947280410)
,p_name=>'P216_CEDULA_JURIDICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>unistr('Cedula jur\00EDdica:')
,p_source=>'CEDULA_JURIDICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_help_text=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183116369193280410)
,p_name=>'P216_CEDULA_FISICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>unistr('Cedula f\00EDsica:')
,p_source=>'CEDULA_FISICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_help_text=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183116715850280410)
,p_name=>'P216_ID_PROVINCIA_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Provincia:'
,p_source=>'ID_PROVINCIA_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_PROVINCIA'
,p_lov=>'SELECT DESCRIPCION, ID FROM PROVINCIAS@consulta_ictx'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183117138166280410)
,p_name=>'P216_CODIGO_ESTADO'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Estado:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Activo;AC,Inactivo;IA'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183117510792280411)
,p_name=>'P216_OBSERVA_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>unistr('Observaci\00F3n: ')
,p_source=>'OBSERVA_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>800
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183117921764280411)
,p_name=>'P216_ID_TIPO_LOCAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Tipo local:'
,p_source=>'ID_TIPO_LOCAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_LOCAL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183118318011280411)
,p_name=>'P216_PERSONA_JURIDICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>unistr('Persona jur\00EDdica:')
,p_source=>'PERSONA_JURIDICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183118776063280411)
,p_name=>'P216_MOTIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Motivo:'
,p_source=>'MOTIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>800
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183119103550280412)
,p_name=>'P216_NUMERO_CONTRATO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Numero contrato:'
,p_source=>'NUMERO_CONTRATO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183119542353280412)
,p_name=>'P216_FECHA_INICIO_CONTRATO'
,p_source_data_type=>'DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Fecha inicio contrato:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_INICIO_CONTRATO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>24
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183119910092280412)
,p_name=>'P216_FECHA_VENCE_CONTRATO'
,p_source_data_type=>'DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Fecha vencimiento:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_VENCE_CONTRATO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>24
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183120358994280412)
,p_name=>'P216_FECHA_PAGO'
,p_source_data_type=>'DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Fecha pago:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_PAGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>24
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183120715471280413)
,p_name=>'P216_PORCENTAJE_AJUSTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Porcentaje ajuste:'
,p_source=>'PORCENTAJE_AJUSTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183121134402280413)
,p_name=>'P216_PORCENTAJE_INTERESES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Porcentaje intereses:'
,p_source=>'PORCENTAJE_INTERESES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183121528992280413)
,p_name=>'P216_TARIFA_MENSUAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Tarifa mensual:'
,p_source=>'TARIFA_MENSUAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183121933571280413)
,p_name=>'P216_MESES_AJUSTES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Meses ajustes:'
,p_source=>'MESES_AJUSTES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183122353016280413)
,p_name=>'P216_FECHA_RENOVACION_INICIO'
,p_source_data_type=>'DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>unistr('Renovaci\00F3n: fecha inicio:')
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_RENOVACION_INICIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>24
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183122724118280414)
,p_name=>'P216_FECHA_RENOVACION_VENCI'
,p_source_data_type=>'DATE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Fecha vencimiento:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_RENOVACION_VENCI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>24
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183123134437280414)
,p_name=>'P216_NOMBRE_PROPIEDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Nombre propiedad:'
,p_source=>'NOMBRE_PROPIEDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183304171598645355)
,p_name=>'P216_TIPO_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_default=>'12'
,p_prompt=>'Emisor de Pago:'
,p_source=>'ID_TIPO_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, id_tipo_contribuyente',
'from tipo_contribuyente',
'where id_Tipo_contribuyente = 12'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183304227517645356)
,p_name=>'P216_TELEFONO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>unistr('Tel\00E9fono:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183304356461645357)
,p_name=>'P216_CORREO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Correo:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187768486644375159)
,p_name=>'P216_USUARIO_SIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_source=>'USUARIO_SIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189092652991871470)
,p_name=>'P216_VAL_MC'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189092713148871471)
,p_name=>'P216_MSJ_MC'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_default=>'El contribuyente ya se encuentra inscrito...'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:red;"'
,p_grid_column=>7
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(192271752034822856)
,p_name=>'P216_ID_CANTON_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>unistr('Cant\00F3n: ')
,p_source=>'ID_CANTON_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM CANTONES@consulta_ictx WHERE PROV_ID = :P216_ID_PROVINCIA_ENTIDAD'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P216_ID_PROVINCIA_ENTIDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(192271794087822857)
,p_name=>'P216_ID_DISTRITO_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>'Distrito:'
,p_source=>'ID_DISTRITO_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ID ',
'FROM DISTRITOS@consulta_ictx ',
'WHERE PROV_ID = :P216_ID_PROVINCIA_ENTIDAD ',
'AND CANTON_ID = :P216_ID_CANTON_ENTIDAD'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P216_ID_PROVINCIA_ENTIDAD,P216_ID_CANTON_ENTIDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(192271890845822858)
,p_name=>'P216_DIRECCION_COBRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>unistr('Direcci\00F3n Cobro:')
,p_source=>'DIRECCION_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(234056968472275662)
,p_name=>'P216_ID_DEUDOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(183113890232280399)
,p_item_source_plug_id=>wwv_flow_api.id(183113890232280399)
,p_prompt=>unistr('C\00F3digo Tributario')
,p_source=>'ID_DEUDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P216_ID_CONTRIBUYENTE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184308283170090689)
,p_validation_name=>'VAL_CED_FISICA'
,p_validation_sequence=>10
,p_validation=>'P216_CEDULA_FISICA'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P216_CEDULA_FISICA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(183116369193280410)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184308383681090690)
,p_validation_name=>'VAL_CED_JURIDICA'
,p_validation_sequence=>20
,p_validation=>'P216_CEDULA_JURIDICA'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P216_CEDULA_JURIDICA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(183115971947280410)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184308512682090691)
,p_validation_name=>'VAL_CORREO'
,p_validation_sequence=>30
,p_validation=>'P216_CORREO'
,p_validation2=>'@'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_AT_LEAST_ONE_CHAR_IN_STRING2'
,p_error_message=>'Formato del email no valido'
,p_validation_condition=>'P216_CORREO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(183304356461645357)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(183303529420645349)
,p_name=>'DAC_CED_JURIDICA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_ID_TIPO_IDENTIFICACION'
,p_condition_element=>'P216_ID_TIPO_IDENTIFICACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(183303593112645350)
,p_event_id=>wwv_flow_api.id(183303529420645349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P216_PERSONA_JURIDICA,P216_CEDULA_JURIDICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(183303716641645351)
,p_event_id=>wwv_flow_api.id(183303529420645349)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P216_PERSONA_JURIDICA,P216_CEDULA_JURIDICA'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(183303826270645352)
,p_name=>'DAC_CED_FISICA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_ID_TIPO_IDENTIFICACION'
,p_condition_element=>'P216_ID_TIPO_IDENTIFICACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(183303918423645353)
,p_event_id=>wwv_flow_api.id(183303826270645352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P216_PERSONA_FISICA,P216_CEDULA_FISICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(183304054605645354)
,p_event_id=>wwv_flow_api.id(183303826270645352)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P216_PERSONA_FISICA,P216_CEDULA_FISICA'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189092844801871472)
,p_name=>'DAC_VAL_CED_F'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_CEDULA_FISICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189092974540871473)
,p_event_id=>wwv_flow_api.id(189092844801871472)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vExiste VARCHAR2(1);',
'BEGIN',
':P216_VAL_MC:= PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_MC (:P216_CEDULA_FISICA);',
'--RAISE_APPLICATION_ERROR(-20000, ''MMM'');',
'END;'))
,p_attribute_02=>'P216_CEDULA_FISICA'
,p_attribute_03=>'P216_VAL_MC'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189093544646871479)
,p_name=>'DAC_VAL_CED_J'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_CEDULA_JURIDICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189093599909871480)
,p_event_id=>wwv_flow_api.id(189093544646871479)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vExiste VARCHAR2(1);',
'BEGIN',
':P216_VAL_MC:= PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_MC (:P216_CEDULA_JURIDICA);',
'--RAISE_APPLICATION_ERROR(-20000, ''MMM'');',
'END;'))
,p_attribute_02=>'P216_CEDULA_JURIDICA'
,p_attribute_03=>'P216_VAL_MC'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>5801312104779619
,p_default_application_id=>100
,p_default_id_offset=>149120778489414042
,p_default_owner=>'DESA_SIT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189092981399871474)
,p_name=>'DAC_MUESTRA_MSJ'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_VAL_MC'
,p_condition_element=>'P216_VAL_MC'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189093161999871475)
,p_event_id=>wwv_flow_api.id(189092981399871474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P216_MSJ_MC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189093235812871476)
,p_event_id=>wwv_flow_api.id(189092981399871474)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P216_MSJ_MC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189093282989871477)
,p_event_id=>wwv_flow_api.id(189092981399871474)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(183132010092280421)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189093398725871478)
,p_event_id=>wwv_flow_api.id(189092981399871474)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(183132010092280421)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(232288434829347743)
,p_name=>'DAC_UPPER_PROP'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_NOMBRE_PROPIEDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(232288494882347744)
,p_event_id=>wwv_flow_api.id(232288434829347743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P216_NOMBRE_PROPIEDAD").val($("#P216_NOMBRE_PROPIEDAD").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(232288616063347745)
,p_name=>'DAC_UPPER_DIRECCION'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_DIRECCION_COBRO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(232288726041347746)
,p_event_id=>wwv_flow_api.id(232288616063347745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P216_DIRECCION_COBRO").val($("#P216_DIRECCION_COBRO").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(232288795904347747)
,p_name=>'DAC_UPPER_ENTIDAD'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_NOMBRE_ENTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(232288969454347748)
,p_event_id=>wwv_flow_api.id(232288795904347747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P216_NOMBRE_ENTIDAD").val($("#P216_NOMBRE_ENTIDAD").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(232289012187347749)
,p_name=>'DAC_UPPER_FISICA'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_PERSONA_FISICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(232289161751347750)
,p_event_id=>wwv_flow_api.id(232289012187347749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P216_PERSONA_FISICA").val($("#P216_PERSONA_FISICA").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(232289227436347751)
,p_name=>'DAC_UPPER_JURID'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_PERSONA_JURIDICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(232289280955347752)
,p_event_id=>wwv_flow_api.id(232289227436347751)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P216_PERSONA_JURIDICA").val($("#P216_PERSONA_JURIDICA").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(232289448084347753)
,p_name=>'DAC_UPPER_OBSERV'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_OBSERVA_EMPRESA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(232289485927347754)
,p_event_id=>wwv_flow_api.id(232289448084347753)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P216_OBSERVA_EMPRESA").val($("#P216_OBSERVA_EMPRESA").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(232289590482347755)
,p_name=>'DAC_UPPER_MOTIV'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P216_MOTIVO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(232289683735347756)
,p_event_id=>wwv_flow_api.id(232289590482347755)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P216_MOTIVO").val($("#P216_MOTIVO").val().toUpperCase());'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(183133276450280422)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(183113890232280399)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form 216-Formulario Inscripci\00F3n Alquileres')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(183131606235280420)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(183304670393645360)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ACT_TEL_CORREO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vTelefono NUMBER;',
'vCorreos VARCHAR2(40);',
'vEstadoContrib VARCHAR2(2);',
'',
'    CURSOR C_TELEFONOS IS',
'    SELECT TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P216_ID_CONTRIBUYENTE;',
'    ',
'    CURSOR C_CORREOS IS',
'    SELECT CORREO_NOTIFICA',
'    FROM CORREO_NOTIFICACIONES',
'    WHERE ID_CONTRIBUYENTE = :P216_ID_CONTRIBUYENTE;',
'BEGIN',
'    OPEN  C_TELEFONOS;',
'    FETCH C_TELEFONOS INTO vTelefono;',
'    CLOSE C_TELEFONOS;',
'    ',
'    OPEN  C_CORREOS;',
'    FETCH C_CORREOS INTO vCorreos;',
'    CLOSE C_CORREOS;',
'    ',
'    vEstadoContrib := PKG_MAESTRO_CONTRIBUYENTE.F_RETORNA_ESTADO_CONTRIB(:P216_ID_DEUDOR);',
'    ',
'    IF vTelefono <> :P216_TELEFONO THEN',
'        UPDATE TELEFONO_X_MAESTRO_CONTRIBU SET TELEFONO = :P216_TELEFONO,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P216_ID_CONTRIBUYENTE;',
'    END IF;',
'    ',
'    IF vCorreos <> :P216_CORREO THEN',
'        UPDATE CORREO_NOTIFICACIONES SET CORREO_NOTIFICA = :P216_CORREO, USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P216_ID_CONTRIBUYENTE;',
'    END IF;',
'    ',
'    IF vEstadoContrib <> :P216_CODIGO_ESTADO THEN',
'         UPDATE MAESTRO_CONTRIBUYENTE SET CODIGO_ESTADO = :P216_CODIGO_ESTADO, USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P216_ID_CONTRIBUYENTE;',
'    END IF;',
'    ',
'    COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(183131606235280420)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(159237445057083177)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ACT/INAC_CONTRIB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMensaje_Retorno VARCHAR2(200);',
'vRetorno boolean;',
'vCedula VARCHAR2(20);',
'BEGIN',
'IF :P216_CODIGO_ESTADO <> ''AC'' THEN',
'     --Se inserta el periodo de inactivacion ',
'    PKG_MAESTRO_CONTRIBUYENTE.INSERTA_PERIODO_INACTIVACION (:P216_ID_CONTRIBUYENTE,:APP_USER,''I'');',
'    --Inactivar en maestro_deudores',
'    UPDATE MAESTRO_DEUDORES@CONSULTA_ICTX SET CODIGO_ESTADO = ''AI'' WHERE ID_DEUDOR = :P216_ID_DEUDOR;',
'END IF;',
'IF  :P216_CODIGO_ESTADO <> ''IA'' THEN',
'    --Se inserta el periodo de inactivacion ',
'    PKG_MAESTRO_CONTRIBUYENTE.INSERTA_PERIODO_INACTIVACION (:P216_ID_CONTRIBUYENTE,:APP_USER,''A'');',
'    --Activar en maestro_deudores',
'    UPDATE MAESTRO_DEUDORES@CONSULTA_ICTX SET CODIGO_ESTADO = ''AC'' WHERE ID_DEUDOR = :P216_ID_DEUDOR;',
'',
'END IF;',
'    COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(183131606235280420)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(183132835946280422)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(183113890232280399)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form 216-Formulario Inscripci\00F3n Alquileres')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(183304458320645358)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vTelefono NUMBER;',
'vCorreos VARCHAR2(40);',
'',
'    CURSOR C_TELEFONOS IS',
'    SELECT TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P216_ID_CONTRIBUYENTE;',
'    ',
'    CURSOR C_CORREOS IS',
'    SELECT CORREO_NOTIFICA',
'    FROM CORREO_NOTIFICACIONES',
'    WHERE ID_CONTRIBUYENTE = :P216_ID_CONTRIBUYENTE;',
'BEGIN',
'    OPEN  C_TELEFONOS;',
'    FETCH C_TELEFONOS INTO vTelefono;',
'    CLOSE C_TELEFONOS;',
'    ',
'    OPEN  C_CORREOS;',
'    FETCH C_CORREOS INTO vCorreos;',
'    CLOSE C_CORREOS;',
'    ',
'    IF :P216_ID_CONTRIBUYENTE IS NOT NULL THEN',
'    :P216_TELEFONO := vTelefono;',
'    :P216_CORREO   := vCorreos;',
'    :P216_CODIGO_ESTADO := PKG_MAESTRO_CONTRIBUYENTE.F_RETORNA_ESTADO_CONTRIB(:P216_ID_DEUDOR);',
'    END IF;',
'    :P216_USUARIO_SIT := :APP_USER;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(183304481771645359)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_INSERT_INSCRIP_ALQUILER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMensaje_Retorno VARCHAR2(200);',
'vRetorno BOOLEAN;',
'vContribuyente NUMBER;',
'vFechaInicioContrato DATE;',
'vFechaVenceContrato DATE;',
'vFechaPago DATE;',
'vFechaRenovIni DATE;',
'vFechaRenoVenci DATE;',
'BEGIN',
'vFechaInicioContrato := TO_DATE(:P216_FECHA_INICIO_CONTRATO,''DD/MM/YYYY'');',
'vFechaVenceContrato := TO_DATE(:P216_FECHA_VENCE_CONTRATO,''DD/MM/YYYY'');',
'vFechaPago := TO_DATE(:P216_FECHA_PAGO,''DD/MM/YYYY'');',
'vFechaRenovIni := TO_DATE(:P216_FECHA_RENOVACION_INICIO,''DD/MM/YYYY'');',
'vFechaRenoVenci := TO_DATE(:P216_FECHA_RENOVACION_VENCI,''DD/MM/YYYY'');',
'PKG_MAESTRO_CONTRIBUYENTE.P_INSCRIPCION_NC_ALQUILES (vContribuyente,',
'                           :P216_NOMBRE_PROPIEDAD,',
'                           :P216_ID_TIPO_IDENTIFICACION,',
'                           :P216_PERSONA_FISICA,',
'                           :P216_PERSONA_JURIDICA,',
'                           :P216_CEDULA_FISICA,',
'                           :P216_CEDULA_JURIDICA,',
'                           :P216_ID_PROVINCIA_ENTIDAD,',
'                           :P216_ID_CANTON_ENTIDAD,',
'                           :P216_ID_DISTRITO_ENTIDAD,',
'                           :P216_DIRECCION_COBRO,',
'                           :P216_NUMERO_CONTRATO,',
'                           :P216_NOMBRE_ENTIDAD,',
'                           :P216_ID_TIPO_LOCAL,',
'                           vFechaInicioContrato,',
'                           vFechaVenceContrato,',
'                           vFechaPago,',
'                           :P216_PORCENTAJE_AJUSTE,',
'                           :P216_PORCENTAJE_INTERESES,',
'                           :P216_TARIFA_MENSUAL,',
'                           :P216_MESES_AJUSTES,',
'                           vFechaRenovIni, ',
'                           vFechaRenoVenci,',
'                           :P216_TELEFONO,',
'                           :P216_CORREO,',
'                           :P216_OBSERVA_EMPRESA,',
'                           :P216_CODIGO_ESTADO,',
'                           :P216_MOTIVO,',
'                           :APP_USER,',
'                           vMensaje_Retorno,',
'                           vRetorno);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(183132010092280421)
);
wwv_flow_api.component_end;
end;
/
