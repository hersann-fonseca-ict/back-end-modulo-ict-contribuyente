prompt --application/pages/page_00215
begin
--   Manifest
--     PAGE: 00215
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
 p_id=>215
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'215-Reporte Inscripcion Alquileres'
,p_alias=>'215-REPORTE-INSCRIPCION-ALQUILERES'
,p_step_title=>'Alquileres Propiedades ICT (Locales)'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220818104216'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(247499322364447466)
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
 p_id=>wwv_flow_api.id(183133831713280423)
,p_plug_name=>unistr('Reporte Inscripci\00F3n Alquileres')
,p_parent_plug_id=>wwv_flow_api.id(247499322364447466)
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
'       ID_TIPO_IDENTIFICACION,',
'       PERSONA_FISICA,',
'       CEDULA_JURIDICA,',
'       CEDULA_FISICA,',
'       ID_TIPO_CONTRIBUYENTE,',
'       ID_PROVINCIA_ENTIDAD,',
'       CODIGO_ESTADO,',
'       OBSERVA_EMPRESA,',
'       ID_TIPO_LOCAL,',
'       PERSONA_JURIDICA,',
'       MOTIVO,',
'       NUMERO_CONTRATO,',
'       FECHA_INICIO_CONTRATO,',
'       FECHA_VENCE_CONTRATO,',
'       FECHA_PAGO,',
'       PORCENTAJE_AJUSTE,',
'       PORCENTAJE_INTERESES,',
'       TARIFA_MENSUAL,',
'       MESES_AJUSTES,',
'       FECHA_RENOVACION_INICIO,',
'       FECHA_RENOVACION_VENCI,',
'       NOMBRE_PROPIEDAD',
'  from MAESTRO_CONTRIBUYENTE',
'  where ID_TIPO_CONTRIBUYENTE = 12',
'  order by ID_CONTRIBUYENTE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Reporte Inscripci\00F3n Alquileres')
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
 p_id=>wwv_flow_api.id(183134264123280424)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:RP:P216_ID_CONTRIBUYENTE:\#ID_CONTRIBUYENTE#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>34013485633866382
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183134356430280427)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('C\00F3digo Contrib.')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183134735134280430)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Encargado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183054670892988676)
,p_db_column_name=>'ID_TIPO_CONTRIBUYENTE'
,p_display_order=>12
,p_column_identifier=>'Y'
,p_column_label=>'Tipo Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(181879233338093932)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183143173941280434)
,p_db_column_name=>'NOMBRE_PROPIEDAD'
,p_display_order=>22
,p_column_identifier=>'W'
,p_column_label=>'Nombre Propiedad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183135147621280430)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION'
,p_display_order=>32
,p_column_identifier=>'C'
,p_column_label=>'Id Tipo Identificacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183135525058280430)
,p_db_column_name=>'PERSONA_FISICA'
,p_display_order=>42
,p_column_identifier=>'D'
,p_column_label=>'Persona Fisica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183135897716280431)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>52
,p_column_identifier=>'E'
,p_column_label=>'Cedula Juridica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183136309121280431)
,p_db_column_name=>'CEDULA_FISICA'
,p_display_order=>62
,p_column_identifier=>'F'
,p_column_label=>'Cedula Fisica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183136728286280431)
,p_db_column_name=>'ID_PROVINCIA_ENTIDAD'
,p_display_order=>72
,p_column_identifier=>'G'
,p_column_label=>'Id Provincia Entidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183137083723280431)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>82
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183137574980280431)
,p_db_column_name=>'OBSERVA_EMPRESA'
,p_display_order=>92
,p_column_identifier=>'I'
,p_column_label=>'Observa Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183137964836280432)
,p_db_column_name=>'ID_TIPO_LOCAL'
,p_display_order=>102
,p_column_identifier=>'J'
,p_column_label=>'Tipo Local'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183138318660280432)
,p_db_column_name=>'PERSONA_JURIDICA'
,p_display_order=>112
,p_column_identifier=>'K'
,p_column_label=>'Persona Juridica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183138739432280433)
,p_db_column_name=>'MOTIVO'
,p_display_order=>122
,p_column_identifier=>'L'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183139098684280433)
,p_db_column_name=>'NUMERO_CONTRATO'
,p_display_order=>132
,p_column_identifier=>'M'
,p_column_label=>'Numero Contrato'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183139516774280433)
,p_db_column_name=>'FECHA_INICIO_CONTRATO'
,p_display_order=>142
,p_column_identifier=>'N'
,p_column_label=>'Fecha Inicio Contrato'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183139964967280433)
,p_db_column_name=>'FECHA_VENCE_CONTRATO'
,p_display_order=>152
,p_column_identifier=>'O'
,p_column_label=>'Fecha Vence Contrato'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183140358438280433)
,p_db_column_name=>'FECHA_PAGO'
,p_display_order=>162
,p_column_identifier=>'P'
,p_column_label=>'Fecha Pago'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183140682192280433)
,p_db_column_name=>'PORCENTAJE_AJUSTE'
,p_display_order=>172
,p_column_identifier=>'Q'
,p_column_label=>'Porcentaje Ajuste'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183141114324280434)
,p_db_column_name=>'PORCENTAJE_INTERESES'
,p_display_order=>182
,p_column_identifier=>'R'
,p_column_label=>'Porcentaje Intereses'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183141545144280434)
,p_db_column_name=>'TARIFA_MENSUAL'
,p_display_order=>192
,p_column_identifier=>'S'
,p_column_label=>'Tarifa Mensual'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183141967874280434)
,p_db_column_name=>'MESES_AJUSTES'
,p_display_order=>202
,p_column_identifier=>'T'
,p_column_label=>'Meses Ajustes'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183142314471280434)
,p_db_column_name=>'FECHA_RENOVACION_INICIO'
,p_display_order=>212
,p_column_identifier=>'U'
,p_column_label=>'Fecha Renovacion Inicio'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183142728864280434)
,p_db_column_name=>'FECHA_RENOVACION_VENCI'
,p_display_order=>222
,p_column_identifier=>'V'
,p_column_label=>'Fecha Renovacion Venci'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(186816547746999563)
,p_db_column_name=>'CODIGO_FUENTE'
,p_display_order=>232
,p_column_identifier=>'Z'
,p_column_label=>'Codigo Fuente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(186816595414999564)
,p_db_column_name=>'ID_DEUDOR'
,p_display_order=>242
,p_column_identifier=>'AA'
,p_column_label=>unistr('C\00F3digo Tributario')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(183144913505283321)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'340242'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CONTRIBUYENTE:CODIGO_FUENTE:ID_DEUDOR:NOMBRE_PROPIEDAD:NOMBRE_ENTIDAD:ID_TIPO_CONTRIBUYENTE:ID_TIPO_LOCAL:NUMERO_CONTRATO:FECHA_INICIO_CONTRATO:FECHA_VENCE_CONTRATO:CODIGO_ESTADO:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187046177337456590)
,p_plug_name=>'Alquileres'
,p_parent_plug_id=>wwv_flow_api.id(247499322364447466)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Alquileres Propiedades ICT (Locales)</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183144344023280448)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(183133831713280423)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:216'
);
wwv_flow_api.component_end;
end;
/
