prompt --application/pages/page_00226
begin
--   Manifest
--     PAGE: 00226
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
 p_id=>226
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'226-Formulario Garantias de participacion '
,p_alias=>'226-FORMULARIO-GARANTIAS-DE-PARTICIPACION'
,p_step_title=>'226-Formulario Garantias de participacion '
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221109161739'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(247499750386447470)
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
 p_id=>wwv_flow_api.id(220003514673847717)
,p_plug_name=>unistr('Garant\00EDas de Participaci\00F3n ')
,p_parent_plug_id=>wwv_flow_api.id(247499750386447470)
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
 p_id=>wwv_flow_api.id(288744370169564585)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(247499750386447470)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Garant\00EDas de Participaci\00F3n </h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184662678134569303)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(220003514673847717)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P226_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184661850770569303)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(220003514673847717)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:225:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184662991001569303)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(220003514673847717)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P226_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184662205171569303)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(220003514673847717)
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
 p_id=>wwv_flow_api.id(184675352053569310)
,p_branch_name=>'Go To Page 225'
,p_branch_action=>'f?p=&APP_ID.:225:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184663418164569304)
,p_name=>'P226_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
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
 p_id=>wwv_flow_api.id(184663825835569304)
,p_name=>'P226_ID_TIPO_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_default=>'14'
,p_prompt=>'Emisor de Pago:'
,p_source=>'ID_TIPO_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select descripcion, id_tipo_contribuyente',
'from tipo_contribuyente',
'where id_Tipo_contribuyente = 14'))
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
 p_id=>wwv_flow_api.id(184664264777569304)
,p_name=>'P226_NOMBRE_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
,p_prompt=>'Nombre:'
,p_source=>'NOMBRE_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_GARANTIAS_NOM_PROVE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FIRMA_COMERCIAL NOMBRE_COMERCIAL, A.CEDULA',
'FROM PROVEEDORES@consulta_ictx A',
'WHERE A.CEDULA NOT IN (SELECT B.CEDULA FROM MAESTRO_DEUDORES@consulta_ictx B',
'                       WHERE A.CEDULA = B.CEDULA)'))
,p_cSize=>60
,p_cMaxlength=>100
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
 p_id=>wwv_flow_api.id(184664581343569304)
,p_name=>'P226_RAZON_SOCIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
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
 p_id=>wwv_flow_api.id(184664979517569305)
,p_name=>'P226_ID_TIPO_IDENTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
,p_prompt=>unistr('Tipo Identificaci\00F3n:')
,p_source=>'ID_TIPO_IDENTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_IDENTIFICACION'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P226_NOMBRE_ENTIDAD'
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
 p_id=>wwv_flow_api.id(184665464299569305)
,p_name=>'P226_CEDULA_JURIDICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
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
 p_id=>wwv_flow_api.id(184665801198569305)
,p_name=>'P226_CEDULA_FISICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
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
 p_id=>wwv_flow_api.id(184666259341569305)
,p_name=>'P226_CORREO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
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
 p_id=>wwv_flow_api.id(184666607259569305)
,p_name=>'P226_TELEFONO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
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
 p_id=>wwv_flow_api.id(184666988443569305)
,p_name=>'P226_MONTO_MONEDA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
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
 p_id=>wwv_flow_api.id(184667391987569306)
,p_name=>'P226_FECHA_INGRESO'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
,p_prompt=>'Fecha:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_INGRESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
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
 p_id=>wwv_flow_api.id(184667853937569306)
,p_name=>'P226_OBSERVA_ADM_TRIBUTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
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
 p_id=>wwv_flow_api.id(187768694658375161)
,p_name=>'P226_USUARIO_SIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
,p_source=>'USUARIO_SIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189093716176871481)
,p_name=>'P226_VAL_MC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189093846473871482)
,p_name=>'P226_MSJ_MC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
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
 p_id=>wwv_flow_api.id(234057748673275670)
,p_name=>'P226_ID_DEUDOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_item_source_plug_id=>wwv_flow_api.id(220003514673847717)
,p_prompt=>unistr('C\00F3digo Tributario')
,p_source=>'ID_DEUDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>3
,p_display_when=>'P226_ID_CONTRIBUYENTE'
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
 p_id=>wwv_flow_api.id(247498624612447459)
,p_name=>'P226_CODIGO_ESTADO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(220003514673847717)
,p_prompt=>'Estado:'
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
 p_id=>wwv_flow_api.id(184685449078819545)
,p_validation_name=>'VAL_CED_JURIDICA'
,p_validation_sequence=>10
,p_validation=>'P226_CEDULA_JURIDICA'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P226_CEDULA_JURIDICA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184665464299569305)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184685491185819546)
,p_validation_name=>'VAL_CED_FISICA'
,p_validation_sequence=>20
,p_validation=>'P226_CEDULA_FISICA'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P226_CEDULA_FISICA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184665801198569305)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(184685664667819547)
,p_validation_name=>'VAL_CORREO'
,p_validation_sequence=>30
,p_validation=>'P226_CORREO'
,p_validation2=>'@'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_AT_LEAST_ONE_CHAR_IN_STRING2'
,p_error_message=>'Formato del email no valido'
,p_validation_condition=>'P226_CORREO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184666259341569305)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(184672784933569308)
,p_name=>'DAC_TIPO_CEDULA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P226_ID_TIPO_IDENTIFICACION'
,p_condition_element=>'P226_ID_TIPO_IDENTIFICACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(184673308952569309)
,p_event_id=>wwv_flow_api.id(184672784933569308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P226_CEDULA_JURIDICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(184673877313569309)
,p_event_id=>wwv_flow_api.id(184672784933569308)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P226_CEDULA_JURIDICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(184674305963569309)
,p_event_id=>wwv_flow_api.id(184672784933569308)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P226_CEDULA_FISICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(184674806250569310)
,p_event_id=>wwv_flow_api.id(184672784933569308)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P226_CEDULA_FISICA'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189093916936871483)
,p_name=>'DAC_VAL_CED_J'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P226_CEDULA_JURIDICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189094036838871484)
,p_event_id=>wwv_flow_api.id(189093916936871483)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vExiste VARCHAR2(1);',
'BEGIN',
':P226_VAL_MC:= PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_MC (:P226_CEDULA_JURIDICA);',
'--RAISE_APPLICATION_ERROR(-20000, ''MMM'');',
'END;'))
,p_attribute_02=>'P226_CEDULA_JURIDICA'
,p_attribute_03=>'P226_VAL_MC'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189094673244871490)
,p_name=>'DAC_VAL_CED_F'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P226_CEDULA_FISICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189094702761871491)
,p_event_id=>wwv_flow_api.id(189094673244871490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vExiste VARCHAR2(1);',
'BEGIN',
':P226_VAL_MC:= PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_MC (:P226_CEDULA_FISICA);',
'--RAISE_APPLICATION_ERROR(-20000, ''MMM'');',
'END;'))
,p_attribute_02=>'P226_CEDULA_FISICA'
,p_attribute_03=>'P226_VAL_MC'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189094173023871485)
,p_name=>'DAC_MUESTRA_MSJ'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P226_VAL_MC'
,p_condition_element=>'P226_VAL_MC'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189094274289871486)
,p_event_id=>wwv_flow_api.id(189094173023871485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P226_MSJ_MC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189094379481871488)
,p_event_id=>wwv_flow_api.id(189094173023871485)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P226_MSJ_MC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189094279877871487)
,p_event_id=>wwv_flow_api.id(189094173023871485)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(184662991001569303)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189094540600871489)
,p_event_id=>wwv_flow_api.id(189094173023871485)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(184662991001569303)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234057851776275671)
,p_name=>'DAC_UPPER_RAZON'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P226_RAZON_SOCIAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234057919502275672)
,p_event_id=>wwv_flow_api.id(234057851776275671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P226_RAZON_SOCIAL").val($("#P226_RAZON_SOCIAL").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234058067846275673)
,p_name=>'DAC_UPPER_OBSERV'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P226_OBSERVA_ADM_TRIBUTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234058095003275674)
,p_event_id=>wwv_flow_api.id(234058067846275673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P226_OBSERVA_ADM_TRIBUTA").val($("#P226_OBSERVA_ADM_TRIBUTA").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234304469263286712)
,p_name=>'DAC_TRAE_DATOS_PROVE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P226_NOMBRE_ENTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234304851034286701)
,p_event_id=>wwv_flow_api.id(234304469263286712)
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
'    WHERE CEDULA = :P226_NOMBRE_ENTIDAD; ',
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
'     :P226_ID_TIPO_IDENTIFICACION := 1; ',
'     :P226_CEDULA_JURIDICA := v_cedula;',
'  ELSIF v_tipo_personeria = ''F'' then',
'    :P226_ID_TIPO_IDENTIFICACION := 2; ',
'    :P226_CEDULA_FISICA := v_cedula;',
'  ELSIF v_tipo_personeria = ''E'' then',
'    :P226_ID_TIPO_IDENTIFICACION := 6; ',
'    :P226_CEDULA_FISICA := v_cedula;',
'  end if;',
'     :P226_CORREO := v_email;',
'     :P226_TELEFONO :=  v_telefono1; ',
'End;',
'',
''))
,p_attribute_02=>'P226_NOMBRE_ENTIDAD'
,p_attribute_03=>'P226_CEDULA_JURIDICA,P226_CEDULA_FISICA,P226_CORREO,P226_TELEFONO,P226_ID_TIPO_IDENTIFICACION'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184668619179569306)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(220003514673847717)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 224-Formulario Grantias de cumplimiiento'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184662678134569303)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184672379073569308)
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
'    WHERE  ID_CONTRIBUYENTE = :P226_ID_CONTRIBUYENTE;',
'    ',
'    CURSOR C_CORREOS IS',
'    SELECT CORREO_NOTIFICA',
'    FROM CORREO_NOTIFICACIONES',
'    WHERE ID_CONTRIBUYENTE = :P226_ID_CONTRIBUYENTE;',
'BEGIN',
'    OPEN  C_TELEFONOS;',
'    FETCH C_TELEFONOS INTO vTelefono;',
'    CLOSE C_TELEFONOS;',
'    ',
'    OPEN  C_CORREOS;',
'    FETCH C_CORREOS INTO vCorreos;',
'    CLOSE C_CORREOS;',
'    ',
'    vEstadoContrib := PKG_MAESTRO_CONTRIBUYENTE.F_RETORNA_ESTADO_CONTRIB(:P226_ID_DEUDOR);',
'    ',
'    IF vTelefono <> :P226_TELEFONO THEN',
'        UPDATE TELEFONO_X_MAESTRO_CONTRIBU SET TELEFONO = :P226_TELEFONO,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P226_ID_CONTRIBUYENTE;',
'    END IF;',
'    ',
'    IF vCorreos <> :P226_CORREO THEN',
'        UPDATE CORREO_NOTIFICACIONES SET CORREO_NOTIFICA = :P226_CORREO,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P226_ID_CONTRIBUYENTE;',
'    END IF;',
'     IF vEstadoContrib <> :P226_CODIGO_ESTADO THEN',
'         UPDATE MAESTRO_CONTRIBUYENTE SET CODIGO_ESTADO = :P226_CODIGO_ESTADO, USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P226_ID_CONTRIBUYENTE;',
'         COMMIT;',
'    END IF;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184662678134569303)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(159237584002083179)
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
'IF :P226_CODIGO_ESTADO <> ''AC'' THEN',
'     --Se inserta el periodo de inactivacion ',
'    PKG_MAESTRO_CONTRIBUYENTE.INSERTA_PERIODO_INACTIVACION (:P226_ID_CONTRIBUYENTE,:APP_USER,''I'');',
'    --Inactivar en maestro_deudores',
'    UPDATE MAESTRO_DEUDORES@CONSULTA_ICTX SET CODIGO_ESTADO = ''AI'' WHERE ID_DEUDOR = :P226_ID_DEUDOR;',
'END IF;',
'IF  :P226_CODIGO_ESTADO <> ''IA'' THEN',
'    --Se inserta el periodo de inactivacion ',
'    PKG_MAESTRO_CONTRIBUYENTE.INSERTA_PERIODO_INACTIVACION (:P226_ID_CONTRIBUYENTE,:APP_USER,''A'');',
'    --Activar en maestro_deudores',
'    UPDATE MAESTRO_DEUDORES@CONSULTA_ICTX SET CODIGO_ESTADO = ''AC'' WHERE ID_DEUDOR = :P226_ID_DEUDOR;',
'',
'END IF;',
'    COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184662678134569303)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184668221037569306)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(220003514673847717)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 224-Formulario Grantias de cumplimiiento'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184307923333090685)
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
'    WHERE  ID_CONTRIBUYENTE = :P226_ID_CONTRIBUYENTE;',
'    ',
'    CURSOR C_CORREOS IS',
'    SELECT CORREO_NOTIFICA',
'    FROM CORREO_NOTIFICACIONES',
'    WHERE ID_CONTRIBUYENTE = :P226_ID_CONTRIBUYENTE;',
'BEGIN',
'    OPEN  C_TELEFONOS;',
'    FETCH C_TELEFONOS INTO vTelefono;',
'    CLOSE C_TELEFONOS;',
'    ',
'    OPEN  C_CORREOS;',
'    FETCH C_CORREOS INTO vCorreos;',
'    CLOSE C_CORREOS;',
'    ',
'    IF :P218_ID_CONTRIBUYENTE IS NOT NULL THEN',
'    :P226_TELEFONO := vTelefono;',
'    :P226_CORREO   := vCorreos;',
'    :P226_CODIGO_ESTADO := PKG_MAESTRO_CONTRIBUYENTE.F_RETORNA_ESTADO_CONTRIB(:P226_ID_DEUDOR);',
'    END IF;',
'    :P226_USUARIO_SIT := :APP_USER;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184672017254569308)
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
'    vFechaIngreso := TO_DATE (:P226_FECHA_INGRESO,''DD/MM/YYYY'');',
'    PKG_MAESTRO_CONTRIBUYENTE.P_INSCRIPCION_NC_GARANTIAS (vContribuyente,',
'                                  :P226_NOMBRE_ENTIDAD,',
'                                  :P226_RAZON_SOCIAL,',
'                                  :P226_ID_TIPO_IDENTIFICACION,',
'                                  :P226_CEDULA_JURIDICA,',
'                                  :P226_CEDULA_FISICA,',
'                                  :P226_TELEFONO,',
'                                  :P226_CORREO,',
'                                   vFechaIngreso,',
'                                  :P226_MONTO_MONEDA,',
'                                  14,',
'                                  :P226_OBSERVA_ADM_TRIBUTA,',
'                                  :APP_USER,',
'                                  vMensaje_Retorno,',
'                                  vRetorno);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184662991001569303)
);
wwv_flow_api.component_end;
end;
/
