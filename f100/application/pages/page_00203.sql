prompt --application/pages/page_00203
begin
--   Manifest
--     PAGE: 00203
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
 p_id=>203
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'203-Reporte solicitud desincripcion'
,p_alias=>'203-REPORTE-SOLICITUD-DESINCRIPCION'
,p_step_title=>unistr('Solicitud des-inscripci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220714102901'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(200010275266780766)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(174754788944854128)
,p_name=>unistr('Solicitud Des-inscripci\00F3n ')
,p_parent_plug_id=>wwv_flow_api.id(200010275266780766)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.ID_DESC_INSCRIPCION,',
'       S.ID_CONTRIBUYENTE,',
'       M.NOMBRE_ENTIDAD,',
'       M.RAZON_SOCIAL,',
'       M.CEDULA_JURIDICA,',
'       M.CEDULA_FISICA,',
'       M.ID_TIPO_CONTRIBUYENTE,',
'       M.CODIGO_IATA,',
'       M.ID_DEUDOR,',
'       S.FECHA_CESE_OPERA,',
'       S.MOTIVO_CESE_OPERA,',
'       S.FECHA_SUSCRITO,',
'       S.LUGAR_SUSCRITO,',
'       S.USUARIO_INTERNO,',
'       S.ID_DESC_INSCRIPCION NUM_SOLICITUD',
'  from SOLICITUD_DES_INSCRIPCION S, MAESTRO_CONTRIBUYENTE M',
'  where S.ID_CONTRIBUYENTE = M.ID_CONTRIBUYENTE',
'  and   S.CODIGO_ESTADO = ''E''',
'  and   M.ID_TIPO_CONTRIBUYENTE IN (SELECT ID_TIPO_CONTRIBUYENTE FROM TIPO_CONTRIBUYENTE WHERE IND_TIPO_INSCRIP = ''IR'')',
'  and   M.ID_DEUDOR = NVL(:P203_ID_DEUDOR,M.ID_DEUDOR)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P203_ID_DEUDOR'
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
 p_id=>wwv_flow_api.id(174755194892854127)
,p_query_column_id=>1
,p_column_alias=>'ID_DESC_INSCRIPCION'
,p_column_display_sequence=>15
,p_column_heading=>'Ejecutar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:RP:P204_ID_DESC_INSCRIPCION:\#ID_DESC_INSCRIPCION#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174755657618854127)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_column_heading=>'Id Contribuyente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174610918883829085)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ENTIDAD'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre Entidad'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174611033053829086)
,p_query_column_id=>4
,p_column_alias=>'RAZON_SOCIAL'
,p_column_display_sequence=>5
,p_column_heading=>'Razon Social'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174611171408829087)
,p_query_column_id=>5
,p_column_alias=>'CEDULA_JURIDICA'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174611250655829088)
,p_query_column_id=>6
,p_column_alias=>'CEDULA_FISICA'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174611303852829089)
,p_query_column_id=>7
,p_column_alias=>'ID_TIPO_CONTRIBUYENTE'
,p_column_display_sequence=>8
,p_column_heading=>'Tipo Contribuyente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(166850819189940657)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174611426448829090)
,p_query_column_id=>8
,p_column_alias=>'CODIGO_IATA'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232292464143347783)
,p_query_column_id=>9
,p_column_alias=>'ID_DEUDOR'
,p_column_display_sequence=>3
,p_column_heading=>unistr('C\00F3digo Tributario:')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174756066479854127)
,p_query_column_id=>10
,p_column_alias=>'FECHA_CESE_OPERA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174756426411854127)
,p_query_column_id=>11
,p_column_alias=>'MOTIVO_CESE_OPERA'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174756833431854126)
,p_query_column_id=>12
,p_column_alias=>'FECHA_SUSCRITO'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174757182540854126)
,p_query_column_id=>13
,p_column_alias=>'LUGAR_SUSCRITO'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174757599119854126)
,p_query_column_id=>14
,p_column_alias=>'USUARIO_INTERNO'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194241317203119790)
,p_query_column_id=>15
,p_column_alias=>'NUM_SOLICITUD'
,p_column_display_sequence=>1
,p_column_heading=>unistr('N\00FAmero Solicitud')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(232292490814347784)
,p_plug_name=>'Filtro'
,p_parent_plug_id=>wwv_flow_api.id(200010275266780766)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(297087174902899555)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(200010275266780766)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Solicitud Des-inscripci\00F3n</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174758080220854126)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(174754788944854128)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:204'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232292611530347785)
,p_name=>'P203_ID_DEUDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(232292490814347784)
,p_prompt=>unistr('C\00F3digo Tributario:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
