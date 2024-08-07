prompt --application/pages/page_00204
begin
--   Manifest
--     PAGE: 00204
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
 p_id=>204
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'204-Forlulario solicitud desincripcion'
,p_alias=>'204-FORLULARIO-SOLICITUD-DESINCRIPCION'
,p_step_title=>'204-Forlulario solicitud desincripcion'
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
,p_last_upd_yyyymmddhh24miss=>'20230707101409'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(174746087625854148)
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
 p_id=>wwv_flow_api.id(174774146008225247)
,p_name=>'Archivos Requeridos'
,p_parent_plug_id=>wwv_flow_api.id(174746087625854148)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 1000px"'
,p_display_column=>3
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ARCHI_DESC_INS,',
'       ID_REQUI_DESC, ',
'       ID_DESC_INSCRIPCION,',
'       NOMBRE_REQUISITO,',
'       sys.dbms_lob.getlength(ARCHIVO)DESCARGAR,',
'       sys.dbms_lob.getlength(ARCHIVO)Ver,',
'       MIMETYPE,',
'       FEC_ACT',
'  from ARCHIVOS_REQUI_DES_INSCRI',
'  where ID_DESC_INSCRIPCION = :P204_ID_DESC_INSCRIPCION'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(186815489431999553)
,p_query_column_id=>1
,p_column_alias=>'ID_ARCHI_DESC_INS'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184305924160090665)
,p_query_column_id=>2
,p_column_alias=>'ID_REQUI_DESC'
,p_column_display_sequence=>1
,p_column_heading=>'Requisitos'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(174794858656002807)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174774280561225249)
,p_query_column_id=>3
,p_column_alias=>'ID_DESC_INSCRIPCION'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174774429884225250)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_REQUISITO'
,p_column_display_sequence=>3
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(186186379438917291)
,p_query_column_id=>5
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>6
,p_column_heading=>'Descargar'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_REQUI_DES_INSCRI:ARCHIVO:ID_ARCHI_DESC_INS::MIMETYPE:NOMBRE_REQUISITO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(186815675201999554)
,p_query_column_id=>6
,p_column_alias=>'VER'
,p_column_display_sequence=>8
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_REQUI_DES_INSCRI:ARCHIVO:ID_ARCHI_DESC_INS::MIMETYPE:NOMBRE_REQUISITO:FEC_ACT::inline:Ver:'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174774645116225252)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174774772999225253)
,p_query_column_id=>8
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191107624791479389)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>9
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_rerq_desc(''#ID_ARCHI_DESC_INS#'', ''#ID_DESC_INSCRIPCION#'', ''RD'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(174775054061225256)
,p_plug_name=>'Datos'
,p_parent_plug_id=>wwv_flow_api.id(174746087625854148)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_region_attributes=>'style="width: 1000px"'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_column=>3
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187061113165260843)
,p_plug_name=>'Usuario Interno'
,p_parent_plug_id=>wwv_flow_api.id(174746087625854148)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_region_attributes=>'style="width: 1000px"'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>40
,p_plug_display_column=>3
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(187061349537260845)
,p_name=>'Apoderado'
,p_parent_plug_id=>wwv_flow_api.id(174746087625854148)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 1000px"'
,p_display_column=>3
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'APODERADOS'
,p_query_where=>'ID_CONTRIBUYENTE = :P204_ID_CONTRIBUYENTE AND ID_TIPO_APODERADO IS NOT NULL AND FECHA_FIN_AUTORIZA IS NULL AND CODIGO_ESTADO = ''AC'''
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(187061475798260846)
,p_query_column_id=>1
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187061506823260847)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187061673478260848)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_APODERADO'
,p_column_display_sequence=>3
,p_column_heading=>'Tipo Apoderado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(161480289353184503)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187061725107260849)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_APODERADO'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187061835714260850)
,p_query_column_id=>5
,p_column_alias=>'CEDULA_APODERADO'
,p_column_display_sequence=>5
,p_column_heading=>'Cedula '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187061916337260851)
,p_query_column_id=>6
,p_column_alias=>'CORREO_APODERADO'
,p_column_display_sequence=>6
,p_column_heading=>'Correo '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187062067401260852)
,p_query_column_id=>7
,p_column_alias=>'ID_TIPO_IMPUESTO'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187062145914260853)
,p_query_column_id=>8
,p_column_alias=>'INDICA_AUTORIZO'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187062194611260854)
,p_query_column_id=>9
,p_column_alias=>'FECHA_INICIO_AUTORIZA'
,p_column_display_sequence=>9
,p_column_heading=>'Fecha Inicio Autorizacion '
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187062356460260855)
,p_query_column_id=>10
,p_column_alias=>'FECHA_FIN_AUTORIZA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187062401487260856)
,p_query_column_id=>11
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174752621208854132)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(174746087625854148)
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
 p_id=>wwv_flow_api.id(174751428922854135)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(174746087625854148)
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
 p_id=>wwv_flow_api.id(174775111701225257)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(174746087625854148)
,p_button_name=>'BTN_APROBAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174775187386225258)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(174746087625854148)
,p_button_name=>'BTN_RECHAZAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.::P230_ID_CONTRIBUYENTE,P230_ID_TIPO_SOLICITUD,P230_ID_DESINCRIPCION,P230_PAGINA,P230_TIPO_CORREO:&P204_ID_CONTRIBUYENTE.,6,&P204_ID_DESC_INSCRIPCION.,203,R'
,p_button_css_classes=>'u-color-39'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174753078085854132)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(174746087625854148)
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
 p_id=>wwv_flow_api.id(174752200553854133)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(174746087625854148)
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
 p_id=>wwv_flow_api.id(174753280608854132)
,p_branch_name=>'Go To Page 142'
,p_branch_action=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174611536151829091)
,p_name=>'P204_NOMBRE_ENTIDAD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
,p_prompt=>'Nombre Entidad:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
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
 p_id=>wwv_flow_api.id(174611588041829092)
,p_name=>'P204_RAZON_SOCIAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
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
 p_id=>wwv_flow_api.id(174746571598854145)
,p_name=>'P204_ID_DESC_INSCRIPCION'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
,p_item_source_plug_id=>wwv_flow_api.id(174746087625854148)
,p_prompt=>'Numero Solicitud'
,p_source=>'ID_DESC_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174746939655854140)
,p_name=>'P204_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
,p_item_source_plug_id=>wwv_flow_api.id(174746087625854148)
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
 p_id=>wwv_flow_api.id(174747319249854139)
,p_name=>'P204_FECHA_CESE_OPERA'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
,p_item_source_plug_id=>wwv_flow_api.id(174746087625854148)
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
 p_id=>wwv_flow_api.id(174747709857854139)
,p_name=>'P204_MOTIVO_CESE_OPERA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
,p_item_source_plug_id=>wwv_flow_api.id(174746087625854148)
,p_prompt=>'Motivo Cese Operaciones:'
,p_source=>'MOTIVO_CESE_OPERA'
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
 p_id=>wwv_flow_api.id(174748145849854139)
,p_name=>'P204_FECHA_SUSCRITO'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
,p_item_source_plug_id=>wwv_flow_api.id(174746087625854148)
,p_source=>'FECHA_SUSCRITO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174748495866854138)
,p_name=>'P204_LUGAR_SUSCRITO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
,p_item_source_plug_id=>wwv_flow_api.id(174746087625854148)
,p_source=>'LUGAR_SUSCRITO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174748977285854138)
,p_name=>'P204_USUARIO_INTERNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(187061113165260843)
,p_item_default=>':APP_USER'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Funcionario ICT:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174773732693225243)
,p_name=>'P204_CEDULA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
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
 p_id=>wwv_flow_api.id(174773823115225244)
,p_name=>'P204_TIPO_CONTRIBUYENTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
,p_prompt=>'Tipo Contribuyente:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_CONTRIBUYENTE_IR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_TIPO_CONTRIBUYENTE, DESCRIPCION',
'FROM TIPO_CONTRIBUYENTE',
'WHERE CODIGO_ESTADO = ''AC''',
'--AND   IND_TIPO_INSCRIP = ''IR'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174773944883225245)
,p_name=>'P204_CODIGO_IATA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
,p_prompt=>unistr('C\00F3digo IATA:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_display_when=>'P204_MOSTRAR_IATA'
,p_display_when2=>'S'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232291664934347775)
,p_name=>'P204_MOSTRAR_IATA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232292728403347786)
,p_name=>'P204_ID_DEUDOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(174775054061225256)
,p_prompt=>unistr('C\00F3digo Tributario:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(159236978181083172)
,p_name=>'DAC_APROBAR_SOLI_DESC'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(174775111701225257)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(159236993971083173)
,p_event_id=>wwv_flow_api.id(159236978181083172)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMensaje_Retorno varchar2(300);',
'vRetorno boolean;',
'BEGIN',
'PKG_INSCRIPCION_REGULAR.P_APROBAR_SOLI_DESINSCRIP (:P204_ID_DESC_INSCRIPCION,',
'                           :P204_ID_CONTRIBUYENTE,',
'                           :APP_USER,',
'                           6,',
'                           ''A'',',
'                           0,',
'                           vMensaje_Retorno,',
'                           vRetorno);',
'END;'))
,p_attribute_02=>'P204_ID_DESC_INSCRIPCION,P204_ID_CONTRIBUYENTE'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(159237099987083174)
,p_event_id=>wwv_flow_api.id(159236978181083172)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(174754209428854129)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(174746087625854148)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 204-Forlulario solicitud desincripcion'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(174753864834854131)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(174746087625854148)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 204-Forlulario solicitud desincripcion'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(174774064970225246)
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
'',
'    CURSOR C_CONTRIB IS',
'    SELECT NOMBRE_ENTIDAD,ID_TIPO_IDENTIFICACION,RAZON_SOCIAL,CEDULA_JURIDICA,CEDULA_FISICA,ID_TIPO_CONTRIBUYENTE,CODIGO_IATA, ID_DEUDOR',
'    FROM   MAESTRO_CONTRIBUYENTE',
'    WHERE  ID_CONTRIBUYENTE = :P204_ID_CONTRIBUYENTE;',
'BEGIN',
'    OPEN  C_CONTRIB;',
'    FETCH C_CONTRIB INTO vNom_entidad,vTipo_cedula,vRazon_social,vCedulaJ,vCedulaF,vTipo_Contrib,vCod_IATA,vId_Deudor;',
'    CLOSE C_CONTRIB;',
'    ',
'    :P204_NOMBRE_ENTIDAD := vNom_entidad;',
'    :P204_RAZON_SOCIAL   := vRazon_social;',
'    :P204_TIPO_CONTRIBUYENTE := vTipo_Contrib;',
'    :P204_CODIGO_IATA := vCod_IATA;',
'    :P204_ID_DEUDOR := vId_Deudor;',
'    IF vTipo_cedula = 1 THEN',
'        :P204_CEDULA := vCedulaJ;',
'    ELSE',
'        :P204_CEDULA := vCedulaF;',
'    END IF;',
'    ',
'    IF vTipo_Contrib IN (4,5) THEN',
'    :P204_MOSTRAR_IATA := ''N'';',
'    ELSE',
'    :P204_MOSTRAR_IATA := ''S'';',
'END IF;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(174775281807225259)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_APROBAR_DESINCRIP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMensaje_Retorno varchar2(300);',
'vRetorno boolean;',
'BEGIN',
'PKG_INSCRIPCION_REGULAR.P_APROBAR_SOLI_DESINSCRIP (:P204_ID_DESC_INSCRIPCION,',
'                           :P204_ID_CONTRIBUYENTE,',
'                           :APP_USER,',
'                           6,',
'                           ''A'',',
'                           0,',
'                           vMensaje_Retorno,',
'                           vRetorno);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(174775111701225257)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
