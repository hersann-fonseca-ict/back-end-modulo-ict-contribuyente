prompt --application/pages/page_00234
begin
--   Manifest
--     PAGE: 00234
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
 p_id=>234
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'234 - Formulario Puestos Fronterizos'
,p_alias=>'234-FORMULARIO-PUESTOS-FRONTERIZOS'
,p_step_title=>'234 - Formulario Puestos Fronterizos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221110140747'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(189344039524439876)
,p_plug_name=>'Puestos Fronterizos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(189354020252439896)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(189344039524439876)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P234_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(189352815729439892)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(189344039524439876)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(189354475765439897)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(189344039524439876)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P234_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(189353583358439896)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(189344039524439876)
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
 p_id=>wwv_flow_api.id(189354691002439897)
,p_branch_action=>'f?p=&APP_ID.:233:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(186817512988999573)
,p_name=>'P234_TELEFONO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>'Telefono:'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(186817579827999574)
,p_name=>'P234_CORREO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>'Correo:'
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
 p_id=>wwv_flow_api.id(189344406769439880)
,p_name=>'P234_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
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
 p_id=>wwv_flow_api.id(189344794875439885)
,p_name=>'P234_NOMBRE_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>'Nombre:'
,p_source=>'NOMBRE_ENTIDAD'
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
 p_id=>wwv_flow_api.id(189345268326439888)
,p_name=>'P234_ID_TIPO_IDENTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>'Tipo Identificacion:'
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
 p_id=>wwv_flow_api.id(189345584893439888)
,p_name=>'P234_CEDULA_JURIDICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>'Cedula Juridica:'
,p_source=>'CEDULA_JURIDICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
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
 p_id=>wwv_flow_api.id(189345990729439888)
,p_name=>'P234_CEDULA_FISICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>'Cedula Fisica:'
,p_source=>'CEDULA_FISICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
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
 p_id=>wwv_flow_api.id(189346421455439889)
,p_name=>'P234_ID_TIPO_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>'Tipo Contribuyente:'
,p_source=>'ID_TIPO_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ID_TIPO_CONTRIBUYENTE ',
'FROM TIPO_CONTRIBUYENTE',
'WHERE CODIGO_ESTADO = ''AC'' ',
' AND  ID_TIPO_CONTRIBUYENTE = 6'))
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
 p_id=>wwv_flow_api.id(189346819830439889)
,p_name=>'P234_DIRECCION_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>unistr('Direcci\00F3n:')
,p_source=>'DIRECCION_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
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
 p_id=>wwv_flow_api.id(189347243344439889)
,p_name=>'P234_ID_PROVINCIA_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>'Provincia:'
,p_source=>'ID_PROVINCIA_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
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
 p_id=>wwv_flow_api.id(189347583357439889)
,p_name=>'P234_ID_CANTON_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>unistr('Cant\00F3n: ')
,p_source=>'ID_CANTON_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM CANTONES@consulta_ictx WHERE PROV_ID = :P234_ID_PROVINCIA_ENTIDAD'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P234_ID_PROVINCIA_ENTIDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189348066267439890)
,p_name=>'P234_ID_DISTRITO_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>'Distrito:'
,p_source=>'ID_DISTRITO_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ID',
'FROM DISTRITOS@consulta_ictx',
'WHERE PROV_ID = :P234_ID_PROVINCIA_ENTIDAD',
'AND CANTON_ID = :P234_ID_CANTON_ENTIDAD'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P234_ID_PROVINCIA_ENTIDAD,P234_ID_CANTON_ENTIDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189348467191439890)
,p_name=>'P234_OBSERVA_ADM_TRIBUTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>'Observaciones:'
,p_source=>'OBSERVA_ADM_TRIBUTA'
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
 p_id=>wwv_flow_api.id(189348872172439890)
,p_name=>'P234_ID_TIPO_PUESTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>'Tipo Puesto Fronterizo:'
,p_source=>'ID_TIPO_PUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPOS_PUESTOS'
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
 p_id=>wwv_flow_api.id(189366989686447079)
,p_name=>'P234_VAL_MC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189367086554447080)
,p_name=>'P234_MSJ_MC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_default=>'El contribuyente ya se encuentra inscrito...'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:red;"'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(234058939748275682)
,p_name=>'P234_ID_DEUDOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(189344039524439876)
,p_item_source_plug_id=>wwv_flow_api.id(189344039524439876)
,p_prompt=>unistr('C\00F3digo Tributario')
,p_source=>'ID_DEUDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P234_ID_CONTRIBUYENTE'
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
 p_id=>wwv_flow_api.id(186818299136999581)
,p_validation_name=>'VAL_CORREO'
,p_validation_sequence=>10
,p_validation=>'P234_CORREO'
,p_validation2=>'@'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_AT_LEAST_ONE_CHAR_IN_STRING2'
,p_error_message=>'Formato de correo no valido.'
,p_validation_condition=>'P234_CORREO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(186817579827999574)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(186818449975999582)
,p_validation_name=>'VAL_CEDULA_JURIDICA'
,p_validation_sequence=>20
,p_validation=>'P234_CEDULA_JURIDICA'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P234_CEDULA_JURIDICA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(189345584893439888)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(186818536039999583)
,p_validation_name=>'VAL_CEDULA_FISICA'
,p_validation_sequence=>30
,p_validation=>'P234_CEDULA_FISICA'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P234_CEDULA_FISICA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(189345990729439888)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(186817783956999576)
,p_name=>'DAC_TIPO_IDENTIFICACION'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_ID_TIPO_IDENTIFICACION'
,p_condition_element=>'P234_ID_TIPO_IDENTIFICACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(186817902544999577)
,p_event_id=>wwv_flow_api.id(186817783956999576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_CEDULA_JURIDICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(186818171608999579)
,p_event_id=>wwv_flow_api.id(186817783956999576)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_CEDULA_FISICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(186818045327999578)
,p_event_id=>wwv_flow_api.id(186817783956999576)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_CEDULA_FISICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(186818252804999580)
,p_event_id=>wwv_flow_api.id(186817783956999576)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_CEDULA_JURIDICA'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189367278041447081)
,p_name=>'DAC_VAL_CEDJ'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_CEDULA_JURIDICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189367318564447082)
,p_event_id=>wwv_flow_api.id(189367278041447081)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vExiste VARCHAR2(1);',
'BEGIN',
':P234_VAL_MC:= PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_MC (:P234_CEDULA_JURIDICA);',
'--RAISE_APPLICATION_ERROR(-20000, ''MMM'');',
'END;'))
,p_attribute_02=>'P234_CEDULA_JURIDICA'
,p_attribute_03=>'P234_VAL_MC'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189367448460447083)
,p_name=>'DAC_MUESTRA_MSJ'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_VAL_MC'
,p_condition_element=>'P234_VAL_MC'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189367578274447084)
,p_event_id=>wwv_flow_api.id(189367448460447083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_MSJ_MC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189367768730447086)
,p_event_id=>wwv_flow_api.id(189367448460447083)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_MSJ_MC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189367661616447085)
,p_event_id=>wwv_flow_api.id(189367448460447083)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(189354475765439897)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189367796734447087)
,p_event_id=>wwv_flow_api.id(189367448460447083)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(189354475765439897)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189367934363447088)
,p_name=>'DAC_VAL_CEDF'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_CEDULA_FISICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189368029152447089)
,p_event_id=>wwv_flow_api.id(189367934363447088)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vExiste VARCHAR2(1);',
'BEGIN',
':P234_VAL_MC:= PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_MC (:P234_CEDULA_FISICA);',
'--RAISE_APPLICATION_ERROR(-20000, ''MMM'');',
'END;'))
,p_attribute_02=>'P234_CEDULA_FISICA'
,p_attribute_03=>'P234_VAL_MC'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234059026960275683)
,p_name=>'DAC_UPPER_NOMBRE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_NOMBRE_ENTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234059147424275684)
,p_event_id=>wwv_flow_api.id(234059026960275683)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P234_NOMBRE_ENTIDAD").val($("#P234_NOMBRE_ENTIDAD").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234059215927275685)
,p_name=>'DAC_UPPER_DIRECCION'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_DIRECCION_ENTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234059377541275686)
,p_event_id=>wwv_flow_api.id(234059215927275685)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P234_DIRECCION_ENTIDAD").val($("#P234_DIRECCION_ENTIDAD").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234059398211275687)
,p_name=>'DAC_UPPER_OBSERV'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P234_OBSERVA_ADM_TRIBUTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234059482479275688)
,p_event_id=>wwv_flow_api.id(234059398211275687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P234_OBSERVA_ADM_TRIBUTA").val($("#P234_OBSERVA_ADM_TRIBUTA").val().toUpperCase());'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(189355622674439901)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(189344039524439876)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 234 - Formulario Puestos Fronterizos'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(189354020252439896)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(189366816530447077)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_INSERTA_PF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vIdContrib NUMBER;',
'Vparam_Mensaje_Retorno VARCHAR2(100);',
'vparam_Retorno BOOLEAN;',
'BEGIN',
'PKG_MAESTRO_CONTRIBUYENTE.P_INSCRIPCION_PUESTO_FRONT (vIdContrib,',
'                            :P234_NOMBRE_ENTIDAD,',
'                            :P234_ID_TIPO_IDENTIFICACION,',
'                            :P234_CEDULA_JURIDICA,',
'                            :P234_CEDULA_FISICA,                        ',
'                            :P234_ID_PROVINCIA_ENTIDAD,',
'                            :P234_ID_CANTON_ENTIDAD,',
'                            :P234_ID_DISTRITO_ENTIDAD,',
'                            :P234_DIRECCION_ENTIDAD,                                                 ',
'                            :P234_TELEFONO,',
'                            :P234_CORREO,',
'                            :P234_ID_TIPO_PUESTO,',
'                            :P234_OBSERVA_ADM_TRIBUTA,',
'                            :APP_USER,',
'                            Vparam_Mensaje_Retorno,',
'                            vparam_Retorno);',
'                            ',
':P234_ID_CONTRIBUYENTE := vIdContrib;                            ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(189354475765439897)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(189366914262447078)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ACT_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vTelefono1 NUMBER;',
'vIdTelefono NUMBER;',
'vCorreos VARCHAR2(40);',
'vNomApo VARCHAR2 (80);',
'vCedApo VARCHAR2 (20);',
'vCorreoApo VARCHAR2(40);',
'',
'    CURSOR C_ID_TELEFONO IS',
'    SELECT ID_TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P234_ID_CONTRIBUYENTE;',
'    ',
'    CURSOR C_TELEFONO1(pIdTel NUMBER) IS',
'    SELECT TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P234_ID_CONTRIBUYENTE',
'    AND    ID_TELEFONO = pIdTel;',
'    ',
'    CURSOR C_CORREOS IS',
'    SELECT CORREO_NOTIFICA',
'    FROM CORREO_NOTIFICACIONES',
'    WHERE ID_CONTRIBUYENTE = :P234_ID_CONTRIBUYENTE;',
'',
'BEGIN',
'    OPEN  C_ID_TELEFONO;',
'    FETCH C_ID_TELEFONO INTO vIdTelefono;',
'    CLOSE C_ID_TELEFONO;',
'    ',
'    OPEN  C_TELEFONO1(vIdTelefono);',
'    FETCH C_TELEFONO1 INTO vTelefono1;',
'    CLOSE C_TELEFONO1;',
'    ',
'    OPEN  C_CORREOS;',
'    FETCH C_CORREOS INTO vCorreos;',
'    CLOSE C_CORREOS;',
'    ',
'    IF vTelefono1 <> :P234_TELEFONO THEN',
'        UPDATE TELEFONO_X_MAESTRO_CONTRIBU SET TELEFONO = :P234_TELEFONO,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P234_ID_CONTRIBUYENTE AND ID_TELEFONO = vIdTelefono;',
'        COMMIT;',
'    END IF;',
'    ',
'    IF vCorreos <> :P234_CORREO THEN',
'        UPDATE CORREO_NOTIFICACIONES SET CORREO_NOTIFICA = :P234_CORREO,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P234_ID_CONTRIBUYENTE;',
'        COMMIT;',
'    END IF;',
'    ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(189354020252439896)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(189355265037439900)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(189344039524439876)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 234 - Formulario Puestos Fronterizos'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(189368166361447090)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vTelefono1 NUMBER;',
'vCorreos VARCHAR2(40);',
'    ',
'    CURSOR C_TELEFONO1 IS',
'    SELECT TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P234_ID_CONTRIBUYENTE;',
'    ',
'    CURSOR C_CORREOS IS',
'    SELECT CORREO_NOTIFICA',
'    FROM CORREO_NOTIFICACIONES',
'    WHERE ID_CONTRIBUYENTE = :P234_ID_CONTRIBUYENTE;',
'    ',
'BEGIN',
'    ',
'    OPEN  C_TELEFONO1;',
'    FETCH C_TELEFONO1 INTO vTelefono1;',
'    CLOSE C_TELEFONO1;',
'    ',
'    OPEN  C_CORREOS;',
'    FETCH C_CORREOS INTO vCorreos;',
'    CLOSE C_CORREOS;',
'    ',
'    IF :P234_ID_CONTRIBUYENTE IS NOT NULL THEN',
'    :P234_TELEFONO := vTelefono1;',
'    :P234_CORREO := vCorreos;',
'    END IF;',
'    :P228_USUARIO_SIT := :APP_USER;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
