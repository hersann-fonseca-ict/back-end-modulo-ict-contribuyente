prompt --application/pages/page_00213
begin
--   Manifest
--     PAGE: 00213
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
 p_id=>213
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'213-Reporte Inscripcion Concesiones Golfo de Papagayo'
,p_alias=>'213-REPORTE-INSCRIPCION-CONCESIONES-GOLFO-DE-PAPAGAYO'
,p_step_title=>'Concesiones Golfo de Papagayo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220818103828'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(247499251719447465)
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
 p_id=>wwv_flow_api.id(183041592568976922)
,p_plug_name=>'Reporte Inscripcion Concesiones Golfo de Papagayo'
,p_parent_plug_id=>wwv_flow_api.id(247499251719447465)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CONTRIBUYENTE,',
'       CODIGO_FUENTE,',
'       ID_DEUDOR,',
'       NOMBRE_ENTIDAD,',
'       RAZON_SOCIAL,',
'       ID_TIPO_CONTRIBUYENTE,',
'       ID_PROVINCIA_ENTIDAD,',
'       ID_CANTON_ENTIDAD,',
'       ID_DISTRITO_ENTIDAD,',
'       CODIGO_ESTADO,',
'       OFICIO,',
'       NUMERO_CONTRATO,',
'       FECHA_CONTRATO,',
'       DESCRIPCION',
'  from MAESTRO_CONTRIBUYENTE',
'  where ID_TIPO_CONTRIBUYENTE = 11',
'  order by ID_CONTRIBUYENTE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte Inscripcion Concesiones Golfo de Papagayo'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(183042076639976922)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:RP:P214_ID_CONTRIBUYENTE:\#ID_CONTRIBUYENTE#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>33921298150562880
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183042094416976925)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3d.Contribuyente')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183042512386976927)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183042920821976927)
,p_db_column_name=>'RAZON_SOCIAL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Raz\00F3n Social')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182914358176598454)
,p_db_column_name=>'ID_TIPO_CONTRIBUYENTE'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Tipo Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(181879233338093932)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183044560740976928)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>23
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183043282319976928)
,p_db_column_name=>'ID_PROVINCIA_ENTIDAD'
,p_display_order=>33
,p_column_identifier=>'D'
,p_column_label=>'Id Provincia Entidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183043719768976928)
,p_db_column_name=>'ID_CANTON_ENTIDAD'
,p_display_order=>43
,p_column_identifier=>'E'
,p_column_label=>'Id Canton Entidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183044172741976928)
,p_db_column_name=>'ID_DISTRITO_ENTIDAD'
,p_display_order=>53
,p_column_identifier=>'F'
,p_column_label=>'Id Distrito Entidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183044954547976928)
,p_db_column_name=>'OFICIO'
,p_display_order=>63
,p_column_identifier=>'H'
,p_column_label=>'Oficio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183045345612976928)
,p_db_column_name=>'NUMERO_CONTRATO'
,p_display_order=>73
,p_column_identifier=>'I'
,p_column_label=>'Numero Contrato'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183045769344976929)
,p_db_column_name=>'FECHA_CONTRATO'
,p_display_order=>83
,p_column_identifier=>'J'
,p_column_label=>'Fecha Contrato'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183046082511976929)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>93
,p_column_identifier=>'K'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(186816357085999561)
,p_db_column_name=>'CODIGO_FUENTE'
,p_display_order=>103
,p_column_identifier=>'M'
,p_column_label=>'Codigo Fuente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(186816395880999562)
,p_db_column_name=>'ID_DEUDOR'
,p_display_order=>113
,p_column_identifier=>'N'
,p_column_label=>unistr('C\00F3digo Tributario')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(183048214973979880)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'339275'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_TIPO_CONTRIBUYENTE:ID_CONTRIBUYENTE:CODIGO_FUENTE:ID_DEUDOR:NOMBRE_ENTIDAD:RAZON_SOCIAL:CODIGO_ESTADO:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186816275338999560)
,p_plug_name=>'Concesiones Golfo de Papagayo'
,p_parent_plug_id=>wwv_flow_api.id(247499251719447465)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Concesiones Golfo de Papagayo</h3></center>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183047286497976942)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(183041592568976922)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:214'
);
wwv_flow_api.component_end;
end;
/
