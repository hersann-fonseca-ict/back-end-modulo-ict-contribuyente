prompt --application/pages/page_00224
begin
--   Manifest
--     PAGE: 00224
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
 p_id=>224
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'224-Formulario Grantias de cumplimiiento'
,p_alias=>'224-FORMULARIO-GRANTIAS-DE-CUMPLIMIIENTO'
,p_step_title=>'224-Formulario Grantias de cumplimiiento'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JORGE.ROJAS'
,p_last_upd_yyyymmddhh24miss=>'20240321095031'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(247499557395447468)
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
 p_id=>wwv_flow_api.id(184463084373692457)
,p_plug_name=>unistr('Garant\00EDas de Cumplimiento')
,p_parent_plug_id=>wwv_flow_api.id(247499557395447468)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_api.id(288734301224816616)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(247499557395447468)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Garant\00EDas de Cumplimiento</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184522113037692491)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(184463084373692457)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P224_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184520945801692490)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(184463084373692457)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184522515850692491)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(184463084373692457)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P224_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184521699463692491)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(184463084373692457)
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(184522780466692491)
,p_branch_name=>'Go To Page 223'
,p_branch_action=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184306594065090672)
,p_name=>'P224_CORREO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>'Correo:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184306750809090673)
,p_name=>'P224_TELEFONO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>unistr('Tel\00E9fono:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184307059088090676)
,p_name=>'P224_CEDULA_FISICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>unistr('Cedula F\00EDsica:')
,p_source=>'CEDULA_FISICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_help_text=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184463573420692457)
,p_name=>'P224_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
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
 p_id=>wwv_flow_api.id(184463918155692457)
,p_name=>'P224_NOMBRE_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>'Nombre:'
,p_source=>'NOMBRE_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_GARANT_NOM_PROV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FIRMA_COMERCIAL NOMBRE_COMERCIAL, A.CEDULA',
'FROM PROVEEDORES@consulta_ictx A'))
,p_cSize=>60
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207623345979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Lista de Proveedores'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184464279896692457)
,p_name=>'P224_ID_TIPO_IDENTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>unistr('Tipo Identificaci\00F3n:')
,p_source=>'ID_TIPO_IDENTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_IDENTIFICACION'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P224_NOMBRE_ENTIDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207623345979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184464716599692458)
,p_name=>'P224_RAZON_SOCIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>unistr('Raz\00F3n Social:')
,p_source=>'RAZON_SOCIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184465564820692458)
,p_name=>'P224_CEDULA_JURIDICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>unistr('Cedula Jur\00EDdica:')
,p_source=>'CEDULA_JURIDICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_grid_column=>3
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
 p_id=>wwv_flow_api.id(184466373141692459)
,p_name=>'P224_ID_TIPO_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_default=>'13'
,p_prompt=>'Emisor de Pago:'
,p_source=>'ID_TIPO_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, id_tipo_contribuyente',
'from tipo_contribuyente',
'where id_Tipo_contribuyente = 13'))
,p_cHeight=>1
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184475154891692464)
,p_name=>'P224_OBSERVA_ADM_TRIBUTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>'Observaciones:'
,p_source=>'OBSERVA_ADM_TRIBUTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>800
,p_cHeight=>4
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184481905582692468)
,p_name=>'P224_FECHA_INGRESO'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>'Fecha:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_INGRESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184488744067692472)
,p_name=>'P224_MONTO_MONEDA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>'Monto:'
,p_source=>'MONTO_MONEDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187567354210083146)
,p_name=>'P224_VAL_MC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187567455759083147)
,p_name=>'P224_VALID_MC_MSJ'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_default=>'El contribuyente ya se encuentra inscrito...'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:red;"'
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187768590883375160)
,p_name=>'P224_USUARIO_SIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
,p_source=>'USUARIO_SIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(234057037331275663)
,p_name=>'P224_ID_DEUDOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_item_source_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>unistr('C\00F3digo Tributario')
,p_source=>'ID_DEUDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>3
,p_display_when=>'P224_ID_CONTRIBUYENTE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(234079577001420165)
,p_name=>'P224_TIPO_ID_GARANTIAS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(247498394880447457)
,p_name=>'P224_CODIGO_ESTADO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(184463084373692457)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ESTADO'
,p_lov=>'.'||wwv_flow_api.id(164723649596609236)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184308615010090692)
,p_validation_name=>'VAL_CED_JURIDICA'
,p_validation_sequence=>10
,p_validation=>'P224_CEDULA_JURIDICA'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P224_CEDULA_JURIDICA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184465564820692458)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184685191080819543)
,p_validation_name=>'VAL_CED_FISICA'
,p_validation_sequence=>20
,p_validation=>'P224_CEDULA_FISICA'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P224_CEDULA_FISICA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184307059088090676)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184685336876819544)
,p_validation_name=>'VAL_CORREO'
,p_validation_sequence=>30
,p_validation=>'P224_CORREO'
,p_validation2=>'@'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_AT_LEAST_ONE_CHAR_IN_STRING2'
,p_error_message=>'Formato del email no valido'
,p_associated_item=>wwv_flow_api.id(184306594065090672)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(187567089533083144)
,p_name=>'DAC_VAL_EXISTE_CEDJ'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_CEDULA_JURIDICA'
,p_condition_element=>'P224_CEDULA_JURIDICA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(187567231384083145)
,p_event_id=>wwv_flow_api.id(187567089533083144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vExiste VARCHAR2(1);',
'BEGIN',
':P224_VAL_MC:= PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_MC (:P224_CEDULA_JURIDICA);',
'END;'))
,p_attribute_02=>'P224_CEDULA_JURIDICA'
,p_attribute_03=>'P224_VAL_MC'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(187567980233083153)
,p_name=>'DAC_VAL_EXISTE_CEDF'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_CEDULA_FISICA'
,p_condition_element=>'P224_CEDULA_FISICA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(187568148271083154)
,p_event_id=>wwv_flow_api.id(187567980233083153)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vExiste VARCHAR2(1);',
'BEGIN',
':P224_VAL_MC:= PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_MC (:P224_CEDULA_FISICA);',
'END;'))
,p_attribute_02=>'P224_CEDULA_FISICA'
,p_attribute_03=>'P224_VAL_MC'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(187567507395083148)
,p_name=>'DAC_MUESTRA_MSJ'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_VAL_MC'
,p_condition_element=>'P224_VAL_MC'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(187567597489083149)
,p_event_id=>wwv_flow_api.id(187567507395083148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P224_VALID_MC_MSJ'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(187567799349083151)
,p_event_id=>wwv_flow_api.id(187567507395083148)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P224_VALID_MC_MSJ'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(187567776222083150)
,p_event_id=>wwv_flow_api.id(187567507395083148)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(184522515850692491)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(187567895998083152)
,p_event_id=>wwv_flow_api.id(187567507395083148)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(184522515850692491)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234057134776275664)
,p_name=>'DAC_UPPER_ENTIDAD'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_NOMBRE_ENTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234057275237275665)
,p_event_id=>wwv_flow_api.id(234057134776275664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P224_NOMBRE_ENTIDAD").val($("#P224_NOMBRE_ENTIDAD").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234057318961275666)
,p_name=>'DAC_UPPER_RAZON'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_RAZON_SOCIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234057447572275667)
,p_event_id=>wwv_flow_api.id(234057318961275666)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P224_RAZON_SOCIAL").val($("#P224_RAZON_SOCIAL").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234057549862275668)
,p_name=>'DAC_UPPER_OBSERV'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_OBSERVA_ADM_TRIBUTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234057642617275669)
,p_event_id=>wwv_flow_api.id(234057549862275668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P224_OBSERVA_ADM_TRIBUTA").val($("#P224_OBSERVA_ADM_TRIBUTA").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234079369163420163)
,p_name=>'DAC_TRAE_DATOS_PROVE'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_NOMBRE_ENTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234079453569420164)
,p_event_id=>wwv_flow_api.id(234079369163420163)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cedula number;',
' v_tipo_personeria varchar2(1);',
' v_email varchar2(50);',
' v_telefono1 varchar2(8);',
' v_codigo number;',
'',
'CURSOR C_TRAE_DATOS IS',
'    SELECT replace(cedula2,''-'','''') cedula,TIPO_PERSONERIA, EMAIL, TELEFONO1',
'    FROM PROVEEDORES@consulta_ictx',
'    WHERE CEDULA = :P224_NOMBRE_ENTIDAD; ',
'',
'Begin',
'',
'  OPEN  C_TRAE_DATOS;',
'  FETCH C_TRAE_DATOS INTO v_cedula,v_tipo_personeria,v_email,v_telefono1;',
'  CLOSE C_TRAE_DATOS;',
'',
'  --:P224_TIPO_ID_GARANTIAS := v_tipo_personeria;',
' --:P224_ID_TIPO_IDENTIFICACION := :P224_TIPO_ID_GARANTIAS;',
'',
'  if v_tipo_personeria = ''J''',
'  then',
'     :P224_ID_TIPO_IDENTIFICACION := 1; ',
'     :P224_CEDULA_JURIDICA := v_cedula;',
'  ELSIF v_tipo_personeria = ''F'' then',
'    :P224_ID_TIPO_IDENTIFICACION := 2; ',
'    :P224_CEDULA_FISICA := v_cedula;',
'  ELSIF v_tipo_personeria = ''E'' then',
'    :P224_ID_TIPO_IDENTIFICACION := 6; ',
'    :P224_CEDULA_FISICA := v_cedula;',
'  end if;',
'     :P224_CORREO := v_email;',
'     :P224_TELEFONO :=  v_telefono1; ',
'End;',
'',
''))
,p_attribute_02=>'P224_NOMBRE_ENTIDAD'
,p_attribute_03=>'P224_CEDULA_JURIDICA,P224_CEDULA_FISICA,P224_CORREO,P224_TELEFONO,P224_ID_TIPO_IDENTIFICACION'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234079708030420167)
,p_name=>'DAC_TIPO_CEDULAS'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P224_ID_TIPO_IDENTIFICACION'
,p_condition_element=>'P224_ID_TIPO_IDENTIFICACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234079803897420168)
,p_event_id=>wwv_flow_api.id(234079708030420167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P224_CEDULA_JURIDICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234080003514420170)
,p_event_id=>wwv_flow_api.id(234079708030420167)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P224_CEDULA_FISICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234079902265420169)
,p_event_id=>wwv_flow_api.id(234079708030420167)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P224_CEDULA_FISICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234080174468420171)
,p_event_id=>wwv_flow_api.id(234079708030420167)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P224_CEDULA_JURIDICA'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184523752792692492)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(184463084373692457)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 224-Formulario Grantias de cumplimiiento'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184307738222090683)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACT_GARANTIA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vTelefono NUMBER;',
'vCorreos VARCHAR2(40);',
'vEstadoContrib VARCHAR2(2);',
'',
'    CURSOR C_TELEFONOS IS',
'    SELECT TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P224_ID_CONTRIBUYENTE;',
'    ',
'    CURSOR C_CORREOS IS',
'    SELECT CORREO_NOTIFICA',
'    FROM CORREO_NOTIFICACIONES',
'    WHERE ID_CONTRIBUYENTE = :P224_ID_CONTRIBUYENTE;',
'BEGIN',
'    OPEN  C_TELEFONOS;',
'    FETCH C_TELEFONOS INTO vTelefono;',
'    CLOSE C_TELEFONOS;',
'    ',
'    OPEN  C_CORREOS;',
'    FETCH C_CORREOS INTO vCorreos;',
'    CLOSE C_CORREOS;',
'    ',
'    vEstadoContrib := PKG_MAESTRO_CONTRIBUYENTE.F_RETORNA_ESTADO_CONTRIB(:P224_ID_DEUDOR);',
'    ',
'    IF vTelefono <> :P224_TELEFONO THEN',
'        UPDATE TELEFONO_X_MAESTRO_CONTRIBU SET TELEFONO = :P224_TELEFONO,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P224_ID_CONTRIBUYENTE;',
'    END IF;',
'    ',
'    IF vCorreos <> :P224_CORREO THEN',
'        UPDATE CORREO_NOTIFICACIONES SET CORREO_NOTIFICA = :P224_CORREO,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P224_ID_CONTRIBUYENTE;',
'    END IF;',
'    ',
'     IF vEstadoContrib <> :P224_CODIGO_ESTADO THEN',
'         UPDATE MAESTRO_CONTRIBUYENTE SET CODIGO_ESTADO = :P224_CODIGO_ESTADO, USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P224_ID_CONTRIBUYENTE;',
'         COMMIT;',
'    END IF;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184522113037692491)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(159237495496083178)
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
'IF :P224_CODIGO_ESTADO <> ''AC'' THEN',
'     --Se inserta el periodo de inactivacion ',
'    PKG_MAESTRO_CONTRIBUYENTE.INSERTA_PERIODO_INACTIVACION (:P224_ID_CONTRIBUYENTE,:APP_USER,''I'');',
'    --Inactivar en maestro_deudores',
'    UPDATE MAESTRO_DEUDORES@CONSULTA_ICTX SET CODIGO_ESTADO = ''AI'' WHERE ID_DEUDOR = :P224_ID_DEUDOR;',
'END IF;',
'IF  :P224_CODIGO_ESTADO <> ''IA'' THEN',
'    --Se inserta el periodo de inactivacion ',
'    PKG_MAESTRO_CONTRIBUYENTE.INSERTA_PERIODO_INACTIVACION (:P224_ID_CONTRIBUYENTE,:APP_USER,''A'');',
'    --Activar en maestro_deudores',
'    UPDATE MAESTRO_DEUDORES@CONSULTA_ICTX SET CODIGO_ESTADO = ''AC'' WHERE ID_DEUDOR = :P224_ID_DEUDOR;',
'',
'END IF;',
'    COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184522113037692491)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184523339002692492)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(184463084373692457)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 224-Formulario Grantias de cumplimiiento'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184307786550090684)
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
'    WHERE  ID_CONTRIBUYENTE = :P224_ID_CONTRIBUYENTE;',
'    ',
'    CURSOR C_CORREOS IS',
'    SELECT CORREO_NOTIFICA',
'    FROM CORREO_NOTIFICACIONES',
'    WHERE ID_CONTRIBUYENTE = :P224_ID_CONTRIBUYENTE;',
'BEGIN',
'    OPEN  C_TELEFONOS;',
'    FETCH C_TELEFONOS INTO vTelefono;',
'    CLOSE C_TELEFONOS;',
'    ',
'    OPEN  C_CORREOS;',
'    FETCH C_CORREOS INTO vCorreos;',
'    CLOSE C_CORREOS;',
'    ',
'    IF :P224_ID_CONTRIBUYENTE IS NOT NULL THEN',
'    :P224_TELEFONO := vTelefono;',
'    :P224_CORREO   := vCorreos;',
'    :P224_CODIGO_ESTADO := PKG_MAESTRO_CONTRIBUYENTE.F_RETORNA_ESTADO_CONTRIB(:P224_ID_DEUDOR);',
'    END IF;',
'    :P224_USUARIO_SIT := :APP_USER;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184306962501090675)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_INSERT_GARANTIA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMensaje_Retorno VARCHAR2(200);',
'vRetorno BOOLEAN;',
'vContribuyente NUMBER;',
'vFechaIngreso DATE;',
'BEGIN',
'    vFechaIngreso := TO_DATE(:P224_FECHA_INGRESO,''DD/MM/YYYY'');',
'    PKG_MAESTRO_CONTRIBUYENTE.P_INSCRIPCION_NC_GARANTIAS (vContribuyente,',
'                                  :P224_NOMBRE_ENTIDAD,',
'                                  :P224_RAZON_SOCIAL,',
'                                  :P224_ID_TIPO_IDENTIFICACION,',
'                                  :P224_CEDULA_JURIDICA,',
'                                  :P224_CEDULA_FISICA,',
'                                  :P224_TELEFONO,',
'                                  :P224_CORREO,',
'                                  vFechaIngreso,',
'                                  :P224_MONTO_MONEDA,',
'                                  13,',
'                                  :P224_OBSERVA_ADM_TRIBUTA,',
'                                  :APP_USER,',
'                                  vMensaje_Retorno,',
'                                  vRetorno);',
'                                  ',
' IF NOT vRetorno THEN',
'       ROLLBACK;',
'    else',
'       COMMIT;',
'    END IF;                                   ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184522515850692491)
);
wwv_flow_api.component_end;
end;
/
