prompt --application/pages/page_00222
begin
--   Manifest
--     PAGE: 00222
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
 p_id=>222
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'222-Formulario Inactivacion Agencia de viajes '
,p_alias=>'222-FORMULARIO-INACTIVACION-AGENCIA-DE-VIAJES'
,p_step_title=>'222-Formulario Inactivacion Agencia de viajes '
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//Funcion para redireccionar a la pagina 135 y visualizar los archivo de requisito de desinscripcin',
'function Ir_Archivo_rerq_desc(pIdArchi,pNumDesInscrip,pMostrar) {',
'    var vURL = ''f?p=&APP_ID.:135:&APP_SESSION.::NO:135:P135_ID_ARCHI_DESC_INS,P135_ID_DESC_INSCRIPCION,P135_MOSTRAR_REGION:'' + pIdArchi + '','' + pNumDesInscrip+ '','' + pMostrar;',
'    window.open(vURL, "", "width=1000,height=800");',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220830154909'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(210047037050621092)
,p_plug_name=>unistr('Formulario solicitud des-inscripci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'SOLICITUD_DES_INSCRIPCION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(210075095432992191)
,p_name=>'Archivos Requeridos'
,p_parent_plug_id=>wwv_flow_api.id(210047037050621092)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 900px"'
,p_display_column=>3
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ARCHI_DESC_INS,',
'       ID_REQUI_DESC,',
'       ID_DESC_INSCRIPCION,',
unistr('       ''Carta de solicitud de inactivaci\00F3n como agencia de '),
'viajes no recaudadora de impuestos''NOMBR,',
'NOMBRE_REQUISITO,',
'       sys.dbms_lob.getlength(ARCHIVO)DESCARGAR,',
'       sys.dbms_lob.getlength(ARCHIVO)Ver,',
'       MIMETYPE,',
'       FEC_ACT',
'  from ARCHIVOS_REQUI_DES_INSCRI',
'  where ID_DESC_INSCRIPCION = :P222_ID_DESC_INSCRIPCION'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P222_ID_DESC_INSCRIPCION'
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
 p_id=>wwv_flow_api.id(187045137817456580)
,p_query_column_id=>1
,p_column_alias=>'ID_ARCHI_DESC_INS'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187045185386456581)
,p_query_column_id=>2
,p_column_alias=>'ID_REQUI_DESC'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184427032777180991)
,p_query_column_id=>3
,p_column_alias=>'ID_DESC_INSCRIPCION'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184305779157090664)
,p_query_column_id=>4
,p_column_alias=>'NOMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Requisito'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184306073874090666)
,p_query_column_id=>5
,p_column_alias=>'NOMBRE_REQUISITO'
,p_column_display_sequence=>5
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187045354639456582)
,p_query_column_id=>6
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>8
,p_column_heading=>'Descargar'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_REQUI_DES_INSCRI:ARCHIVO:ID_ARCHI_DESC_INS::MIMETYPE:NOMBRE_REQUISITO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187045477495456583)
,p_query_column_id=>7
,p_column_alias=>'VER'
,p_column_display_sequence=>9
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_REQUI_DES_INSCRI:ARCHIVO:ID_ARCHI_DESC_INS::MIMETYPE:NOMBRE_REQUISITO:FEC_ACT::inline:Ver:'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184427789379180992)
,p_query_column_id=>8
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184428213623180992)
,p_query_column_id=>9
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191370775161796144)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_rerq_desc(''#ID_ARCHI_DESC_INS#'', ''#ID_DESC_INSCRIPCION#'', ''RD'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(210076003485992200)
,p_plug_name=>'Datos'
,p_parent_plug_id=>wwv_flow_api.id(210047037050621092)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_region_attributes=>'style="width: 900px"'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_column=>3
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184423891643180989)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(210047037050621092)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184423085474180989)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(210047037050621092)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155207953779979427)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184422368626180989)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(210047037050621092)
,p_button_name=>'BTN_APROBAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184422763260180989)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(210047037050621092)
,p_button_name=>'BTN_RECHAZAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.::P230_ID_CONTRIBUYENTE,P230_ID_DESINCRIPCION,P230_ID_TIPO_SOLICITUD,P230_PAGINA,P230_TIPO_CORREO:&P222_ID_CONTRIBUYENTE.,&P222_ID_DESC_INSCRIPCION.,7,221,R'
,p_button_css_classes=>'u-color-39'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184424354706180989)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(210047037050621092)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184423555551180989)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(210047037050621092)
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
 p_id=>wwv_flow_api.id(184436988134180998)
,p_branch_name=>'Go To Page 221'
,p_branch_action=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184428943141180992)
,p_name=>'P222_ID_DESC_INSCRIPCION'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_item_source_plug_id=>wwv_flow_api.id(210047037050621092)
,p_source=>'ID_DESC_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184429355997180993)
,p_name=>'P222_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_item_source_plug_id=>wwv_flow_api.id(210047037050621092)
,p_prompt=>'Id Contribuyente:'
,p_source=>'ID_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184429594810180994)
,p_name=>'P222_NOMBRE_ENTIDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_prompt=>'Nombre Entidad:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184429978871180994)
,p_name=>'P222_RAZON_SOCIAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_prompt=>unistr('Raz\00F3n Social:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184430393740180994)
,p_name=>'P222_CEDULA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_prompt=>'Documento de identidad:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184430864219180994)
,p_name=>'P222_TIPO_CONTRIBUYENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_prompt=>'Tipo Contribuyente:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_CONTRIBUYERNTE_ANRI'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_TIPO_CONTRIBUYENTE, DESCRIPCION',
'FROM TIPO_CONTRIBUYENTE',
'WHERE CODIGO_ESTADO = ''AC''',
'AND   IND_TIPO_INSCRIP = ''ANRI'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184431264956180995)
,p_name=>'P222_CODIGO_IATA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_prompt=>unistr('C\00F3digo IATA:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184431654803180995)
,p_name=>'P222_FECHA_CESE_OPERA'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_item_source_plug_id=>wwv_flow_api.id(210047037050621092)
,p_prompt=>'Fecha Cese Operaciones:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_CESE_OPERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184432023082180995)
,p_name=>'P222_MOTIVO_CESE_OPERA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_item_source_plug_id=>wwv_flow_api.id(210047037050621092)
,p_prompt=>'Motivo Cese Operaciones:'
,p_source=>'MOTIVO_CESE_OPERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>120
,p_cMaxlength=>1000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184432421631180996)
,p_name=>'P222_FECHA_SUSCRITO'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_item_source_plug_id=>wwv_flow_api.id(210047037050621092)
,p_source=>'FECHA_SUSCRITO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184432834992180996)
,p_name=>'P222_LUGAR_SUSCRITO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_item_source_plug_id=>wwv_flow_api.id(210047037050621092)
,p_source=>'LUGAR_SUSCRITO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184433256616180996)
,p_name=>'P222_USUARIO_INTERNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_item_source_plug_id=>wwv_flow_api.id(210047037050621092)
,p_source=>'USUARIO_INTERNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232292359495347782)
,p_name=>'P222_ID_DEUDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(210076003485992200)
,p_prompt=>'Codigo Tribitario:'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184425159846180990)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(210047037050621092)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 204-Forlulario solicitud desincripcion'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184424697816180990)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(210047037050621092)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 204-Forlulario solicitud desincripcion'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184435709548180998)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS_CONTRIB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vNom_entidad VARCHAR2(100);',
'vRazon_social VARCHAR2(80);',
'vTipo_cedula  NUMBER;',
'vCedulaJ VARCHAR2(20); ',
'vCedulaF VARCHAR2(20);',
'vTipo_Contrib NUMBER;',
'vCod_IATA VARCHAR2(20);',
'vId_Deudor NUMBER;',
'    CURSOR C_CONTRIB IS',
'    SELECT NOMBRE_ENTIDAD,ID_TIPO_IDENTIFICACION,RAZON_SOCIAL,CEDULA_JURIDICA,CEDULA_FISICA,ID_TIPO_CONTRIBUYENTE,CODIGO_IATA, ID_DEUDOR',
'    FROM   MAESTRO_CONTRIBUYENTE',
'    WHERE  ID_CONTRIBUYENTE = :P222_ID_CONTRIBUYENTE;',
'BEGIN',
'    OPEN  C_CONTRIB;',
'    FETCH C_CONTRIB INTO vNom_entidad,vTipo_cedula,vRazon_social,vCedulaJ,vCedulaF,vTipo_Contrib,vCod_IATA,vId_Deudor;',
'    CLOSE C_CONTRIB;',
'    ',
'    :P222_NOMBRE_ENTIDAD := vNom_entidad;',
'    :P222_RAZON_SOCIAL   := vRazon_social;',
'    :P222_TIPO_CONTRIBUYENTE := vTipo_Contrib;',
'    :P222_CODIGO_IATA := vCod_IATA;',
'    :P222_ID_DEUDOR := vId_Deudor;',
'    IF vTipo_cedula = 1 THEN',
'        :P222_CEDULA := vCedulaJ;',
'    ELSE',
'        :P222_CEDULA := vCedulaF;',
'    END IF;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184436151185180998)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_APROBAR_DESINCRIP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMensaje_Retorno varchar2(255);',
'vRetorno boolean;',
'BEGIN',
'PKG_INSCRIPCION_REGULAR.P_APROBAR_SOLI_DESINSCRIP (:P222_ID_DESC_INSCRIPCION,',
'                           :P222_ID_CONTRIBUYENTE,',
'                           :APP_USER,',
'                           7,',
'                           ''A'',',
'                           16,',
'                           vMensaje_Retorno,',
'                           vRetorno);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184422368626180989)
);
wwv_flow_api.component_end;
end;
/
