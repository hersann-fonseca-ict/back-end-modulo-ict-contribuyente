prompt --application/pages/page_00311
begin
--   Manifest
--     PAGE: 00311
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
 p_id=>311
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('311- Declaraci\00F3n Jurada COT Aprobadas')
,p_alias=>unistr('311-DECLARACI\00D3N-JURADA-COT-APROBADAS')
,p_step_title=>unistr('Declaraci\00F3n Jurada COT Aprobadas')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230502154359'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(453925231005909568)
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
 p_id=>wwv_flow_api.id(455128114146613766)
,p_name=>'Report 1'
,p_parent_plug_id=>wwv_flow_api.id(453925231005909568)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_DECLARA_CTO,',
'       ''DO-03-''||ID_DECLARA_CTO ID,',
'       NOMBRE_ENTIDAD,',
'       FECHA,',
'       NUMERO_PLACA,',
'       CODIGO_ESTADO,',
'       CORREO_NOTIFICA1,',
'       DECODE (CONTRATO_ARRENDA,''S'',1220,''N'',1240)ID_REPORTE,',
'       DECODE (CONTRATO_ARRENDA,''S'',1282,''N'',1302)ID_REPORTE_TTR,',
'       ''LINK''LINK_TTR',
'  from DECLARA_CHARTER_TERRESTRE_O',
'  where CODIGO_ESTADO = ''A''',
'  and   ID_CONTRIBUYENTE = :P311_ID_CONTRIBUYENTE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P311_ID_CONTRIBUYENTE'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163226234554152041)
,p_query_column_id=>1
,p_column_alias=>'ID_DECLARA_CTO'
,p_column_display_sequence=>7
,p_column_heading=>unistr('Descargar Declaraci\00F3n Jurada')
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.:RP,:P310_ID_DECLARACION,P310_ID_REPORTE:#ID_DECLARA_CTO#,#ID_REPORTE#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P311_TIPO_CONTRIBUYENTE'
,p_display_when_condition2=>'8'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163227829515152045)
,p_query_column_id=>2
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>unistr('N\00BA Tramite')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163226684717152044)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ENTIDAD'
,p_column_display_sequence=>2
,p_column_heading=>'Nombre Entidad'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163227070639152044)
,p_query_column_id=>4
,p_column_alias=>'FECHA'
,p_column_display_sequence=>5
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163227488837152045)
,p_query_column_id=>5
,p_column_alias=>'NUMERO_PLACA'
,p_column_display_sequence=>3
,p_column_heading=>'Numero Placa'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163228236759152045)
,p_query_column_id=>6
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>6
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163228600432152046)
,p_query_column_id=>7
,p_column_alias=>'CORREO_NOTIFICA1'
,p_column_display_sequence=>4
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163229958158154203)
,p_query_column_id=>8
,p_column_alias=>'ID_REPORTE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(167973148428571022)
,p_query_column_id=>9
,p_column_alias=>'ID_REPORTE_TTR'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(167973238467571023)
,p_query_column_id=>10
,p_column_alias=>'LINK_TTR'
,p_column_display_sequence=>8
,p_column_heading=>'TSR'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.::P310_ID_DECLARACION,P310_ID_REPORTE:#ID_DECLARA_CTO#,#ID_REPORTE_TTR#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P311_TIPO_CONTRIBUYENTE'
,p_display_when_condition2=>'17'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163232466714154228)
,p_query_column_id=>11
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Requisitos Archivos'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:314:&SESSION.::&DEBUG.:Y,:P314_ID_DECLARA:#ID_DECLARA_CTO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(990535537321994220)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(453925231005909568)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Declaraci\00F3n Jurada de Ch\00E1rter Terrestre Transporte Internacional</h3></center>'),
'<center><h3>Solicitudes Aprobadas</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(163229040388152046)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(455128114146613766)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:245:&SESSION.::&DEBUG.:245'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(163229732574154201)
,p_name=>'P311_ID_CONTRIBUYENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(455128114146613766)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(167973043248571021)
,p_name=>'P311_TIPO_CONTRIBUYENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(455128114146613766)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
