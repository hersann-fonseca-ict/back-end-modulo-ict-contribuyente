prompt --application/pages/page_00227
begin
--   Manifest
--     PAGE: 00227
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
 p_id=>227
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'227-Reporte Hoteles'
,p_alias=>'227-REPORTE-HOTELES'
,p_step_title=>'Reporte Hoteles'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JROJAS'
,p_last_upd_yyyymmddhh24miss=>'20220825110713'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(184725496634549984)
,p_plug_name=>'Reporte Hoteles'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CONTRIBUYENTE,',
'       NOMBRE_ENTIDAD,',
'       ID_TIPO_IDENTIFICACION,',
'       CEDULA_JURIDICA,',
'       CEDULA_FISICA,',
'       ID_TIPO_CONTRIBUYENTE,',
'       NOMBRE_GERENTE,',
'       CODIGO_ESTADO,',
'       OTRA_ID,',
'       PROPIETARIO,',
'       DOMICILIO_FISCAL,',
'       RESPONSABLE_TRIBUTARIO,',
'       SITIO_WEB,',
'       HABITACIONES,',
'       FECHA_INGRESO,',
'       TIPO_PAGO_TARIFA,',
'       EMPLEO_TEMPORADA_BAJA,',
'       EMPLEO_TEMPORADA_ALTA,',
'       ID_TIPO_SERVICIO,',
'       NUMERO_ESTRELLAS,',
'       ID_DEUDOR',
'  from MAESTRO_CONTRIBUYENTE',
'  where ID_TIPO_CONTRIBUYENTE = 1',
'  AND   ID_CONTRIBUYENTE = NVL(:P227_ID_CONTRIBUYENTE,ID_CONTRIBUYENTE)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P227_ID_CONTRIBUYENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte Hoteles'
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
 p_id=>wwv_flow_api.id(184725977016549985)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:228:&SESSION.::&DEBUG.:RP:P228_ID_CONTRIBUYENTE:\#ID_CONTRIBUYENTE#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>35605198527135943
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184725990227549987)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Contribuyente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184726451028549988)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184726837427549988)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Tipo Identificacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184727218400549988)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cedula Juridica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184727580424549988)
,p_db_column_name=>'CEDULA_FISICA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cedula Fisica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184728030842549988)
,p_db_column_name=>'ID_TIPO_CONTRIBUYENTE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tipo Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(181879233338093932)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184728396120549989)
,p_db_column_name=>'NOMBRE_GERENTE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Nombre Gerente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184728813619549989)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184729218832549989)
,p_db_column_name=>'OTRA_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Otra Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184729635889549989)
,p_db_column_name=>'PROPIETARIO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Propietario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184730042721549989)
,p_db_column_name=>'DOMICILIO_FISCAL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Domicilio Fiscal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184730383835549989)
,p_db_column_name=>'RESPONSABLE_TRIBUTARIO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Responsable Tributario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184730788142549990)
,p_db_column_name=>'SITIO_WEB'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Sitio Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184731250813549990)
,p_db_column_name=>'HABITACIONES'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Habitaciones'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184731612100549990)
,p_db_column_name=>'FECHA_INGRESO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Fecha Ingreso'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184732016001549990)
,p_db_column_name=>'TIPO_PAGO_TARIFA'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Tipo Pago Tarifa'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184732399015549990)
,p_db_column_name=>'EMPLEO_TEMPORADA_BAJA'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Empleo Temporada Baja'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184732867548549991)
,p_db_column_name=>'EMPLEO_TEMPORADA_ALTA'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Empleo Temporada Alta'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184733212576549991)
,p_db_column_name=>'ID_TIPO_SERVICIO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Id Tipo Servicio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184733617008549991)
,p_db_column_name=>'NUMERO_ESTRELLAS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Numero Estrellas'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(234056260222275655)
,p_db_column_name=>'ID_DEUDOR'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>unistr('C\00F3digo Tributario')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(184736939347585154)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'356162'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CONTRIBUYENTE:ID_DEUDOR:NOMBRE_ENTIDAD:ID_TIPO_CONTRIBUYENTE:CODIGO_ESTADO:FECHA_INGRESO:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(189090229721871446)
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
 p_id=>wwv_flow_api.id(184734800230549993)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(184725496634549984)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:228:&SESSION.::&DEBUG.:228'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189090322047871447)
,p_name=>'P227_ID_CONTRIBUYENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(189090229721871446)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
