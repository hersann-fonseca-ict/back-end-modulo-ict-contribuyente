prompt --application/pages/page_00228
begin
--   Manifest
--     PAGE: 00228
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
 p_id=>228
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'228-Formulario Hoteles'
,p_alias=>'228-FORMULARIO-HOTELES'
,p_step_title=>'228-Formulario Hoteles'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230112102554'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(184707775278549974)
,p_plug_name=>'Formulario Hoteles'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
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
 p_id=>wwv_flow_api.id(185736107188161583)
,p_plug_name=>unistr('Informaci\00F3n Apoderado')
,p_parent_plug_id=>wwv_flow_api.id(184707775278549974)
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(155156898145979455)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185736360898161585)
,p_plug_name=>unistr('Informaci\00F3n Responsable')
,p_parent_plug_id=>wwv_flow_api.id(184707775278549974)
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(155156898145979455)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185736950489161591)
,p_plug_name=>unistr('Informaci\00F3n Gerente')
,p_parent_plug_id=>wwv_flow_api.id(184707775278549974)
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(155156898145979455)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186070235654907143)
,p_plug_name=>unistr('Informaci\00F3n Propietario')
,p_parent_plug_id=>wwv_flow_api.id(184707775278549974)
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(155156898145979455)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(251198225073653448)
,p_plug_name=>'Hoteles'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Hoteles</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184723361046549982)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(184707775278549974)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P228_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184722154458549982)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(184707775278549974)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:227:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184723739647549982)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(184707775278549974)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P228_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184722964674549982)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(184707775278549974)
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
 p_id=>wwv_flow_api.id(185734417315161566)
,p_button_sequence=>430
,p_button_plug_id=>wwv_flow_api.id(184707775278549974)
,p_button_name=>'BTN_AGREGAR_EXP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ver / Agregar Expediente'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:232:&SESSION.::&DEBUG.::P232_ID_CONTRIBUYENTE:&P228_ID_CONTRIBUYENTE.'
,p_button_condition=>'P228_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(184724033360549983)
,p_branch_name=>'Go To Page 227'
,p_branch_action=>'f?p=&APP_ID.:228:&SESSION.::&DEBUG.::P228_ID_CONTRIBUYENTE:&P228_ID_CONTRIBUYENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184708096419549974)
,p_name=>'P228_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Contribuyente'
,p_source=>'ID_CONTRIBUYENTE'
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
 p_id=>wwv_flow_api.id(184708487621549975)
,p_name=>'P228_NOMBRE_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Nombre:'
,p_source=>'NOMBRE_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207623345979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184708954193549975)
,p_name=>'P228_ID_TIPO_IDENTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>unistr('Tipo Identificaci\00F3n:')
,p_source=>'ID_TIPO_IDENTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_IDENTIFICACION'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207623345979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184709289110549976)
,p_name=>'P228_CEDULA_JURIDICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>unistr('Cedula Jur\00EDdica:')
,p_source=>'CEDULA_JURIDICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(184709734913549976)
,p_name=>'P228_CEDULA_FISICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>unistr('Cedula F\00EDsica:')
,p_source=>'CEDULA_FISICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_api.id(184710082481549976)
,p_name=>'P228_ID_TIPO_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_default=>'1'
,p_prompt=>'Tipo Contribuyente:'
,p_source=>'ID_TIPO_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_CONTRIBUYENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_TIPO_CONTRIBUYENTE, DESCRIPCION',
'FROM TIPO_CONTRIBUYENTE',
'WHERE CODIGO_ESTADO = ''AC'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184710529099549976)
,p_name=>'P228_NOMBRE_GERENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(185736950489161591)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Gerente:'
,p_source=>'NOMBRE_GERENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>80
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184710922370549976)
,p_name=>'P228_CODIGO_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_default=>'AC'
,p_prompt=>'Estado:'
,p_source=>'CODIGO_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ESTADO_TRAMITE'
,p_lov=>'SELECT CODIGO_ESTADO, NOMBRE_ESTADO FROM estados_tramite@consulta_ictx where CODIGO_ESTADO IN (''AC'',''IA'',''A'',''R'',''P'',''RG'')'
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_api.id(184711312545549977)
,p_name=>'P228_OTRA_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Otra Id:'
,p_source=>'OTRA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_colspan=>5
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184711769186549977)
,p_name=>'P228_PROPIETARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(186070235654907143)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Propietario Inmueble:'
,p_source=>'PROPIETARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184712130921549977)
,p_name=>'P228_DOMICILIO_FISCAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Domicilio Fiscal:'
,p_source=>'DOMICILIO_FISCAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>1
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184712544295549977)
,p_name=>'P228_RESPONSABLE_TRIBUTARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(185736360898161585)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Responsable Tributario:'
,p_source=>'RESPONSABLE_TRIBUTARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184712887949549978)
,p_name=>'P228_SITIO_WEB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Sitio Web:'
,p_source=>'SITIO_WEB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184713282713549978)
,p_name=>'P228_HABITACIONES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Habitaciones:'
,p_source=>'HABITACIONES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184713694758549978)
,p_name=>'P228_FECHA_INGRESO'
,p_source_data_type=>'DATE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Fecha Ingreso:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_INGRESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
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
 p_id=>wwv_flow_api.id(184714138322549978)
,p_name=>'P228_TIPO_PAGO_TARIFA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Tipo Tarifa:'
,p_source=>'TIPO_PAGO_TARIFA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Tarifa Normal;0,Tarifa Fija;1'
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184714495189549978)
,p_name=>'P228_EMPLEO_TEMPORADA_BAJA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Empleo Temporada Baja:'
,p_source=>'EMPLEO_TEMPORADA_BAJA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184714959627549979)
,p_name=>'P228_EMPLEO_TEMPORADA_ALTA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Empleo Temporada Alta:'
,p_source=>'EMPLEO_TEMPORADA_ALTA'
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
 p_id=>wwv_flow_api.id(184715321048549979)
,p_name=>'P228_ID_TIPO_SERVICIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Tipo Servicio:'
,p_source=>'ID_TIPO_SERVICIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_SERVICIO_HOTEL'
,p_lov=>'SELECT NOMBRE_SERVICIO, ID_SERVICIO FROM TIPOS_SERVICIO_HOTEL@consulta_ictx'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184715687035549979)
,p_name=>'P228_NUMERO_ESTRELLAS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>unistr('N\00BA Estrellas:')
,p_source=>'NUMERO_ESTRELLAS'
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
 p_id=>wwv_flow_api.id(184740356577590971)
,p_name=>'P228_NOM_APODERADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(185736107188161583)
,p_prompt=>'Apoderado:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184740467242590972)
,p_name=>'P228_CED_APODERADO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(185736107188161583)
,p_prompt=>'Cedula Apoderado:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_help_text=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184740529501590973)
,p_name=>'P228_CORREO_APODERADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(185736107188161583)
,p_prompt=>'Correo Apoderado:'
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
 p_id=>wwv_flow_api.id(184740588312590974)
,p_name=>'P228_TELEFONO1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>unistr('Tel\00E9fono 1:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184740733331590975)
,p_name=>'P228_TELEFONO2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>unistr('Tel\00E9fono 2:')
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
 p_id=>wwv_flow_api.id(184740786765590976)
,p_name=>'P228_FAX'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Fax:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184740921430590977)
,p_name=>'P228_EMAIL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Email:'
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
 p_id=>wwv_flow_api.id(184741091658590979)
,p_name=>'P228_DIRECCION_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>unistr('Direcci\00F3n por se\00F1as:')
,p_source=>'DIRECCION_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>1000
,p_cHeight=>1
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
 p_id=>wwv_flow_api.id(184741263948590980)
,p_name=>'P228_ID_PROVINCIA_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Provincia:'
,p_source=>'ID_PROVINCIA_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM PROVINCIAS@consulta_ictx'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184741359352590981)
,p_name=>'P228_ID_CANTON_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>unistr('Cant\00F3n:')
,p_source=>'ID_CANTON_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM CANTONES@consulta_ictx WHERE PROV_ID = :P228_ID_PROVINCIA_ENTIDAD'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P228_ID_PROVINCIA_ENTIDAD'
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
 p_id=>wwv_flow_api.id(184741436236590982)
,p_name=>'P228_ID_DISTRITO_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Distrito: '
,p_source=>'ID_DISTRITO_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ID ',
'FROM DISTRITOS@consulta_ictx ',
'WHERE PROV_ID = :P228_ID_PROVINCIA_ENTIDAD',
'AND CANTON_ID = :P228_ID_CANTON_ENTIDAD'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P228_ID_PROVINCIA_ENTIDAD,P228_ID_CANTON_ENTIDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184741541457590983)
,p_name=>'P228_PROPIETARIO_PATENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Propietario Patente:'
,p_source=>'PROPIETARIO_PATENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184741623892590984)
,p_name=>'P228_APARTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Apartado:'
,p_source=>'APARTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184741758818590985)
,p_name=>'P228_CEDULA_GERENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(185736950489161591)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Cedula Gerente:'
,p_source=>'CEDULA_GERENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
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
 p_id=>wwv_flow_api.id(184741793916590986)
,p_name=>'P228_CORREO_GERENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(185736950489161591)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Correo Gerente:'
,p_source=>'CORREO_GERENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184742268177590990)
,p_name=>'P228_ID_TEL1'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184742298334590991)
,p_name=>'P228_ID_TEL2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185733815701161560)
,p_name=>'P228_CODIGO_FUENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Codigo Fuente'
,p_source=>'CODIGO_FUENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>2
,p_display_when=>'P228_ID_CONTRIBUYENTE'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185733960422161561)
,p_name=>'P228_ID_DEUDOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>unistr('C\00F3digo Tributario')
,p_source=>'ID_DEUDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P228_ID_CONTRIBUYENTE'
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
 p_id=>wwv_flow_api.id(185734056135161562)
,p_name=>'P228_FECHA_INICIO_OPERA'
,p_source_data_type=>'DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Fecha Inicio Operaciones:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_INICIO_OPERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185734093481161563)
,p_name=>'P228_CEDULA_PROPIETARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(186070235654907143)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Cedula Propietario:'
,p_source=>'CEDULA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
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
 p_id=>wwv_flow_api.id(185734182363161564)
,p_name=>'P228_CORREO_PROPIETARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(186070235654907143)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Correo Propietario:'
,p_source=>'CORREO_PROPIETARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185734954207161571)
,p_name=>'P228_CEDULA_RESPONSABLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(185736360898161585)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Cedula Responsable T:'
,p_source=>'CEDULA_RESPONSABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
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
 p_id=>wwv_flow_api.id(185734987804161572)
,p_name=>'P228_CORREO_RESPONSABLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(185736360898161585)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_prompt=>'Correo Responsable T:'
,p_source=>'CORREO_RESPONSABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185736237407161584)
,p_name=>'P228_INFO_APO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(185736107188161583)
,p_prompt=>unistr('Informaci\00F3n  Apoderado')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185736875493161590)
,p_name=>'P228_INFO_RESPONSABLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(185736360898161585)
,p_prompt=>unistr('Informaci\00F3n Responsable Tributario')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185737042672161592)
,p_name=>'P228_INFO_GERENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(185736950489161591)
,p_prompt=>unistr('Informaci\00F3n del Gerente')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(186070286880907144)
,p_name=>'P228_INFO_PROPIETARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(186070235654907143)
,p_prompt=>unistr('Informaci\00F3n del  Propietario')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187769016266375164)
,p_name=>'P228_USUARIO_SIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_item_source_plug_id=>wwv_flow_api.id(184707775278549974)
,p_source=>'USUARIO_SIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189090674966871450)
,p_name=>'P228_VAL_MSJ'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189090688119871451)
,p_name=>'P228_MUESTRA_MSJ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(184707775278549974)
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(185735104444161573)
,p_validation_name=>'VAL_CORREO_PROPIETARIO'
,p_validation_sequence=>10
,p_validation=>'P228_CORREO_PROPIETARIO'
,p_validation2=>'@'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_AT_LEAST_ONE_CHAR_IN_STRING2'
,p_error_message=>'Formato de correo incorrecto'
,p_validation_condition=>'P228_CORREO_PROPIETARIO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(185734182363161564)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(185735256534161574)
,p_validation_name=>'VAL_CORREO_GERENTE'
,p_validation_sequence=>20
,p_validation=>'P228_CORREO_GERENTE'
,p_validation2=>'@'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_AT_LEAST_ONE_CHAR_IN_STRING2'
,p_error_message=>'Formato de correo no valido'
,p_validation_condition=>'P228_CORREO_GERENTE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184741793916590986)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(185735295024161575)
,p_validation_name=>'VAL_CORREO_RESPONSABLE'
,p_validation_sequence=>30
,p_validation=>'P228_CORREO_RESPONSABLE'
,p_validation2=>'@'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_AT_LEAST_ONE_CHAR_IN_STRING2'
,p_error_message=>'Formato de correo no valido'
,p_validation_condition=>'P228_CEDULA_RESPONSABLE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(185734987804161572)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(185735380289161576)
,p_validation_name=>'VAL_CORREO_APO'
,p_validation_sequence=>40
,p_validation=>'P228_CORREO_APODERADO'
,p_validation2=>'@'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_AT_LEAST_ONE_CHAR_IN_STRING2'
,p_error_message=>'Formato de correo no valido'
,p_validation_condition=>'P228_CORREO_APODERADO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184740529501590973)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(185735561458161577)
,p_validation_name=>'VAL_CED_JUR'
,p_validation_sequence=>50
,p_validation=>'P228_CEDULA_JURIDICA'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P228_CEDULA_JURIDICA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184709289110549976)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(185735609133161578)
,p_validation_name=>'VAL_CED_FISICA'
,p_validation_sequence=>60
,p_validation=>'P228_CEDULA_FISICA'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P228_CEDULA_FISICA'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184709734913549976)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(185735761665161579)
,p_validation_name=>'VAL_CED_PROP'
,p_validation_sequence=>70
,p_validation=>'P228_CEDULA_PROPIETARIO'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P228_CEDULA_PROPIETARIO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(185734093481161563)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(185735825896161580)
,p_validation_name=>'VAL_CED_GERENTE'
,p_validation_sequence=>80
,p_validation=>'P228_CEDULA_GERENTE'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P228_CEDULA_GERENTE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184741758818590985)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(185735919515161581)
,p_validation_name=>'VAL_CED_RESPONSABLE'
,p_validation_sequence=>90
,p_validation=>'P228_CEDULA_RESPONSABLE'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P228_CEDULA_RESPONSABLE'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(185734954207161571)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(185735989096161582)
,p_validation_name=>'VAL_CED_APO'
,p_validation_sequence=>100
,p_validation=>'P228_CED_APODERADO'
,p_validation_type=>'ITEM_IS_ALPHANUMERIC'
,p_error_message=>unistr('Por favor ingresar el n\00FAmero de c\00E9dula sin espacios y sin guiones ejemplo (102220333)')
,p_validation_condition=>'P228_CED_APODERADO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184740467242590972)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(189090051649871444)
,p_validation_name=>'VAL_EMAIL'
,p_validation_sequence=>110
,p_validation=>'P228_EMAIL'
,p_validation2=>'@'
,p_validation_type=>'ITEM_IN_VALIDATION_CONTAINS_AT_LEAST_ONE_CHAR_IN_STRING2'
,p_error_message=>'Formato de correo no valido'
,p_validation_condition=>'P228_EMAIL'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(184740921430590977)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(184739828874590966)
,p_name=>'DAC_TIPO_CEDULA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_ID_TIPO_IDENTIFICACION'
,p_condition_element=>'P228_ID_TIPO_IDENTIFICACION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(184739908339590967)
,p_event_id=>wwv_flow_api.id(184739828874590966)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_CEDULA_JURIDICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(184740005013590968)
,p_event_id=>wwv_flow_api.id(184739828874590966)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_CEDULA_JURIDICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(184740134331590969)
,p_event_id=>wwv_flow_api.id(184739828874590966)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_CEDULA_FISICA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(184740240360590970)
,p_event_id=>wwv_flow_api.id(184739828874590966)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_CEDULA_FISICA'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189090463442871448)
,p_name=>'DAC_VAL_CEDULAJ'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_CEDULA_JURIDICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189090577401871449)
,p_event_id=>wwv_flow_api.id(189090463442871448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vExiste VARCHAR2(1);',
'BEGIN',
':P228_VAL_MSJ:= PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_MC (:P228_CEDULA_JURIDICA);',
'--RAISE_APPLICATION_ERROR(-20000, ''MMM'');',
'END;'))
,p_attribute_02=>'P228_CEDULA_JURIDICA'
,p_attribute_03=>'P228_VAL_MSJ'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189090809984871452)
,p_name=>'DAC_MUESTRA_MSJ'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_VAL_MSJ'
,p_condition_element=>'P228_VAL_MSJ'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189090971253871453)
,p_event_id=>wwv_flow_api.id(189090809984871452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_MUESTRA_MSJ'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189091038685871454)
,p_event_id=>wwv_flow_api.id(189090809984871452)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_MUESTRA_MSJ'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189091371545871457)
,p_event_id=>wwv_flow_api.id(189090809984871452)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(184723739647549982)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189091446493871458)
,p_event_id=>wwv_flow_api.id(189090809984871452)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(184723739647549982)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(189091145489871455)
,p_name=>'DAC_VAL_CEDULAF'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_CEDULA_FISICA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(189091273194871456)
,p_event_id=>wwv_flow_api.id(189091145489871455)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vExiste VARCHAR2(1);',
'BEGIN',
':P228_VAL_MSJ:= PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_MC (:P228_CEDULA_FISICA);',
'END;'))
,p_attribute_02=>'P228_CEDULA_FISICA'
,p_attribute_03=>'P228_VAL_MSJ'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(231635661449290853)
,p_name=>'DAC_UPPER_NOMBRE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_NOMBRE_ENTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(231635763981290854)
,p_event_id=>wwv_flow_api.id(231635661449290853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P228_NOMBRE_ENTIDAD").val($("#P228_NOMBRE_ENTIDAD").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(231635790128290855)
,p_name=>'DAC_UPPER_DOMICILIO'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_DOMICILIO_FISCAL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(231635944778290856)
,p_event_id=>wwv_flow_api.id(231635790128290855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P228_DOMICILIO_FISCAL").val($("#P228_DOMICILIO_FISCAL").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(231635992807290857)
,p_name=>unistr('DAC_UPPER_SE\00D1AS')
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_DIRECCION_ENTIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(231636109211290858)
,p_event_id=>wwv_flow_api.id(231635992807290857)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P228_DIRECCION_ENTIDAD").val($("#P228_DIRECCION_ENTIDAD").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(231636204614290859)
,p_name=>'DAC_UPPER_PATENTE'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_PROPIETARIO_PATENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(231636335571290860)
,p_event_id=>wwv_flow_api.id(231636204614290859)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P228_PROPIETARIO_PATENTE").val($("#P228_PROPIETARIO_PATENTE").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(231636383379290861)
,p_name=>'DAC_UPPER_`PROPIETARIO'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_PROPIETARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(231636545957290862)
,p_event_id=>wwv_flow_api.id(231636383379290861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P228_PROPIETARIO").val($("#P228_PROPIETARIO").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(231636589543290863)
,p_name=>'DAC_UPPER_GERENTE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_NOMBRE_GERENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(231636724186290864)
,p_event_id=>wwv_flow_api.id(231636589543290863)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P228_NOMBRE_GERENTE").val($("#P228_NOMBRE_GERENTE").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(231636808351290865)
,p_name=>'DAC_UPPER_RESPON'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_RESPONSABLE_TRIBUTARIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(231636925752290866)
,p_event_id=>wwv_flow_api.id(231636808351290865)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P228_RESPONSABLE_TRIBUTARIO").val($("#P228_RESPONSABLE_TRIBUTARIO").val().toUpperCase());'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(231637025761290867)
,p_name=>'DAC_UPPER_APO'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P228_NOM_APODERADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(231637109025290868)
,p_event_id=>wwv_flow_api.id(231637025761290867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P228_NOM_APODERADO").val($("#P228_NOM_APODERADO").val().toUpperCase());'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184724948451549983)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(184707775278549974)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 228-Formulario Hoteles'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184723361046549982)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184724559141549983)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(184707775278549974)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 228-Formulario Hoteles'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184742046151590988)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vIdTel1 NUMBER;',
'vIdTel2 NUMBER;',
'vTelefono1 NUMBER;',
'vTelefono2 NUMBER;',
'vFax NUMBER;',
'vCorreos VARCHAR2(40);',
'vNomApo VARCHAR2 (80);',
'vCedApo VARCHAR2 (20);',
'vCorreoApo VARCHAR2(40);',
'',
'    CURSOR C_ID_TELEFONO1 IS',
'    SELECT MIN(ID_TELEFONO)',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE',
'    AND    ID_TIPO_TELEFONO = 1;',
'    ',
'    CURSOR C_ID_TELEFONO2 IS',
'    SELECT MAX(ID_TELEFONO)',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE',
'    AND    ID_TIPO_TELEFONO = 1;',
'    ',
'    CURSOR C_TELEFONO1 (pIdTelefono1 NUMBER)IS',
'    SELECT TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE',
'    AND    ID_TIPO_TELEFONO = 1',
'    AND    ID_TELEFONO = pIdTelefono1;',
'    ',
'    CURSOR C_TELEFONO2 (pIdTelefono2 NUMBER) IS',
'    SELECT TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE',
'    AND    ID_TIPO_TELEFONO = 1',
'     AND    ID_TELEFONO = pIdTelefono2;',
'    ',
'    CURSOR C_FAX IS',
'    SELECT TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE',
'    AND    ID_TIPO_TELEFONO = 3;',
'    ',
'    CURSOR C_CORREOS IS',
'    SELECT CORREO_NOTIFICA',
'    FROM CORREO_NOTIFICACIONES',
'    WHERE ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE;',
'    ',
'    CURSOR C_APODERADO IS',
'    SELECT NOMBRE_APODERADO,CEDULA_APODERADO,CORREO_APODERADO',
'    FROM   APODERADOS',
'    WHERE  ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE;',
'BEGIN',
'     OPEN  C_ID_TELEFONO1;',
'    FETCH C_ID_TELEFONO1 INTO vIdTel1;',
'    CLOSE C_ID_TELEFONO1;',
'    ',
'    OPEN  C_ID_TELEFONO2;',
'    FETCH C_ID_TELEFONO2 INTO vIdTel2;',
'    CLOSE C_ID_TELEFONO2;',
'    ',
'    OPEN  C_TELEFONO1 (vIdTel1);',
'    FETCH C_TELEFONO1 INTO vTelefono1;',
'    CLOSE C_TELEFONO1;',
'    ',
'    OPEN  C_TELEFONO2 (vIdTel2);',
'    FETCH C_TELEFONO2 INTO vTelefono2;',
'    CLOSE C_TELEFONO2;',
'    ',
'    OPEN  C_FAX;',
'    FETCH C_FAX INTO vFax;',
'    CLOSE C_FAX;',
'    ',
'    OPEN  C_CORREOS;',
'    FETCH C_CORREOS INTO vCorreos;',
'    CLOSE C_CORREOS;',
'    ',
'    OPEN  C_APODERADO;',
'    FETCH C_APODERADO INTO vNomApo,vCedApo,vCorreoApo;',
'    CLOSE C_APODERADO;',
'    ',
'    IF :P228_ID_CONTRIBUYENTE IS NOT NULL THEN',
'    :P228_ID_TEL1 := vIdTel1;',
'    :P228_ID_TEL2 := vIdTel2;',
'    :P228_TELEFONO1 := vTelefono1;',
'    :P228_TELEFONO2 := vTelefono2;',
'    :P228_FAX       := vFax;',
'    :P228_EMAIL     := vCorreos;',
'    :P228_NOM_APODERADO := vNomApo;',
'    :P228_CED_APODERADO := vCedApo;',
'    :P228_CORREO_APODERADO := vCorreoApo;',
'    END IF;',
'    :P228_USUARIO_SIT := :APP_USER;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184741928084590987)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_INSERTA_HOTEL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vContribuyente NUMBER;',
'vApoderado NUMBER;',
'Mensaje_Retorno VARCHAR2(200);',
'Retorno  boolean;',
'BEGIN',
'PKG_MAESTRO_CONTRIBUYENTE.P_INSCRIPCION_HOTELES (vContribuyente,',
'                       vApoderado,',
'                       :P228_NOMBRE_ENTIDAD,',
'                       :P228_ID_TIPO_IDENTIFICACION,',
'                       :P228_CEDULA_JURIDICA,',
'                       :P228_CEDULA_FISICA,',
'                       :P228_OTRA_ID,',
'                       :P228_PROPIETARIO,',
'                       :P228_DOMICILIO_FISCAL,',
'                       :P228_NOMBRE_GERENTE,',
'                       :P228_CEDULA_GERENTE,',
'                       :P228_CORREO_GERENTE,',
'                       :P228_RESPONSABLE_TRIBUTARIO,',
'                       :P228_PROPIETARIO_PATENTE,',
'                       :P228_NOM_APODERADO,',
'                       :P228_CED_APODERADO,',
'                       :P228_CORREO_APODERADO,',
'                       :P228_ID_PROVINCIA_ENTIDAD,',
'                       :P228_ID_CANTON_ENTIDAD,',
'                       :P228_ID_DISTRITO_ENTIDAD,',
'                       :P228_DIRECCION_ENTIDAD,                                                 ',
'                       :P228_TELEFONO1,',
'                       :P228_TELEFONO2,',
'                       :P228_FAX,',
'                       :P228_EMAIL,',
'                       :P228_APARTADO,',
'                       :P228_SITIO_WEB,',
'                       :P228_HABITACIONES,',
'                       :P228_FECHA_INGRESO,',
'                       :P228_TIPO_PAGO_TARIFA,',
'                       :P228_EMPLEO_TEMPORADA_BAJA,',
'                       :P228_EMPLEO_TEMPORADA_ALTA,',
'                       :P228_ID_TIPO_SERVICIO,',
'                       :P228_NUMERO_ESTRELLAS,',
'                       :P228_CEDULA_PROPIETARIO,',
'                       :P228_CORREO_PROPIETARIO,',
'                       :P228_FECHA_INICIO_OPERA,',
'                       :P228_CEDULA_RESPONSABLE,',
'                       :P228_CORREO_RESPONSABLE,',
'                       :APP_USER,',
'                       Mensaje_Retorno,',
'                       Retorno);',
':P228_ID_CONTRIBUYENTE := vContribuyente;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184723739647549982)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184742114735590989)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ACTUALIZAR_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vTelefono1 NUMBER;',
'vTelefono2 NUMBER;',
'vFax NUMBER;',
'vCorreos VARCHAR2(40);',
'vNomApo VARCHAR2 (80);',
'vCedApo VARCHAR2 (20);',
'vCorreoApo VARCHAR2(40);',
'vExisteApoderado VARCHAR2(1);',
'vId_apoderado NUMBER;',
'',
'    CURSOR C_TELEFONO1 IS',
'    SELECT TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE',
'    AND    ID_TELEFONO = :P228_ID_TEL1;',
'    ',
'    CURSOR C_TELEFONO2 IS',
'    SELECT TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE',
'    AND    ID_TELEFONO = :P228_ID_TEL2;',
'    ',
'    CURSOR C_FAX IS',
'    SELECT TELEFONO',
'    FROM   TELEFONO_X_MAESTRO_CONTRIBU',
'    WHERE  ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE',
'    AND    ID_TIPO_TELEFONO = 3;',
'    ',
'    CURSOR C_CORREOS IS',
'    SELECT CORREO_NOTIFICA',
'    FROM CORREO_NOTIFICACIONES',
'    WHERE ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE;',
'    ',
'    CURSOR C_APODERADO IS',
'    SELECT NOMBRE_APODERADO,CEDULA_APODERADO,CORREO_APODERADO',
'    FROM   APODERADOS',
'    WHERE  ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE;',
'    ',
'     --Validamos si existe el apoderado ',
'    CURSOR C_EXIT_APODERADO IS',
'    SELECT ''S''',
'    FROM   APODERADOS',
'    WHERE  ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE',
'    AND    CEDULA_APODERADO = :P228_CED_APODERADO;',
'BEGIN',
'    OPEN  C_TELEFONO1;',
'    FETCH C_TELEFONO1 INTO vTelefono1;',
'    CLOSE C_TELEFONO1;',
'    ',
'     OPEN  C_TELEFONO2;',
'    FETCH C_TELEFONO2 INTO vTelefono2;',
'    CLOSE C_TELEFONO2;',
'    ',
'     OPEN  C_FAX;',
'    FETCH C_FAX INTO vFax;',
'    CLOSE C_FAX;',
'    ',
'    OPEN  C_CORREOS;',
'    FETCH C_CORREOS INTO vCorreos;',
'    CLOSE C_CORREOS;',
'    ',
'    OPEN  C_APODERADO;',
'    FETCH C_APODERADO INTO vNomApo,vCedApo,vCorreoApo;',
'    CLOSE C_APODERADO;',
'    ',
'    OPEN  C_EXIT_APODERADO;',
'    FETCH C_EXIT_APODERADO INTO vExisteApoderado;',
'    CLOSE C_EXIT_APODERADO;',
'    ',
'    IF vExisteApoderado IS NULL THEN',
'     vId_apoderado := SEQ_APODERADOS_MC.NEXTVAL;',
'        INSERT INTO APODERados VALUES (vId_apoderado,',
'                                       :P228_ID_CONTRIBUYENTE,',
'                                       NULL,',
'                                       :P228_NOM_APODERADO,',
'                                       :P228_CED_APODERADO,',
'                                       :P228_CORREO_APODERADO,',
'                                       NULL,',
'                                       ''A'',',
'                                       SYSDATE,',
'                                       NULL,',
'                                       ''AC'',',
'                                       :APP_USER);',
'    END IF;',
'    ',
'    IF vTelefono1 <> :P228_TELEFONO1 THEN',
'        UPDATE TELEFONO_X_MAESTRO_CONTRIBU SET TELEFONO = :P228_TELEFONO1,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE AND ID_TELEFONO = :P228_ID_TEL1;',
'        COMMIT;',
'    END IF;',
'    ',
'    IF vTelefono2 <> :P228_TELEFONO2 THEN',
'        UPDATE TELEFONO_X_MAESTRO_CONTRIBU SET TELEFONO = :P228_TELEFONO2,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE AND ID_TELEFONO = :P228_ID_TEL2;',
'        COMMIT;',
'    END IF;',
'    ',
'    IF vFax <> :P228_FAX THEN',
'        UPDATE TELEFONO_X_MAESTRO_CONTRIBU SET TELEFONO = :P228_FAX,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE AND ID_TIPO_TELEFONO = 3;',
'        COMMIT;',
'    END IF;',
'    ',
'    IF vCorreos <> :P228_EMAIL THEN',
'        UPDATE CORREO_NOTIFICACIONES SET CORREO_NOTIFICA = :P228_EMAIL,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE;',
'        COMMIT;',
'    END IF;',
'    ',
'    IF vNomApo <> :P228_NOM_APODERADO THEN',
'        UPDATE APODERADOS SET NOMBRE_APODERADO = :P228_NOM_APODERADO,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE;',
'    END IF;',
'    ',
'    IF vCedApo <> :P228_CED_APODERADO THEN',
'        UPDATE APODERADOS SET CEDULA_APODERADO = :P228_CED_APODERADO,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE;',
'    END IF;',
'    ',
'    IF vCorreoApo <> :P228_CORREO_APODERADO THEN',
'        UPDATE APODERADOS SET CORREO_APODERADO  = :P228_CORREO_APODERADO,USUARIO_SIT = :APP_USER WHERE ID_CONTRIBUYENTE = :P228_ID_CONTRIBUYENTE;',
'    END IF;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184723361046549982)
);
wwv_flow_api.component_end;
end;
/
