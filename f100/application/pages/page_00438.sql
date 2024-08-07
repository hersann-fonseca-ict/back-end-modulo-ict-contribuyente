prompt --application/pages/page_00438
begin
--   Manifest
--     PAGE: 00438
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
 p_id=>438
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'438-Bitacora archivo apoderados MC'
,p_alias=>'438-BITACORA-ARCHAPODERADOS-MC'
,p_step_title=>'438-Bitacora archivo apoderados MC'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221111131411'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190842698855659037)
,p_plug_name=>'438-Bitacora archi apoderados MC'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ARCHI_APODERA,',
'       ID_APODERADO,',
'       NOMBRE_ARCHIVO,',
'       MIMETYPE,',
'       FEC_ACT,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO',
'  from BITA_ARCHIVOS_APODERA',
'  where ID_APODERADO = :P438_ID_APODERADO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P438_ID_APODERADO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'438-Bitacora archi apoderados MC'
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
 p_id=>wwv_flow_api.id(190842802418659037)
,p_name=>'438-Bitacora apoderados MC'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>41722023929244995
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190747800903177485)
,p_db_column_name=>'ID_ARCHI_APODERA'
,p_display_order=>10
,p_column_identifier=>'O'
,p_column_label=>'Id Archivo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190843187267659053)
,p_db_column_name=>'ID_APODERADO'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Id Apoderado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190747951345177486)
,p_db_column_name=>'NOMBRE_ARCHIVO'
,p_display_order=>30
,p_column_identifier=>'P'
,p_column_label=>'Nombre Archivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190748012322177487)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>40
,p_column_identifier=>'Q'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190748162853177488)
,p_db_column_name=>'FEC_ACT'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Fec Act'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190847649886659062)
,p_db_column_name=>'FECHA'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190848005687659062)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190848395709659063)
,p_db_column_name=>'USUARIO'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190883581085803481)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'417629'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_ARCHI_APODERA:NOMBRE_ARCHIVO:FECHA:ID_TIPO_OPERACION:USUARIO:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1181179350931513543)
,p_plug_name=>'Bit archivo apoderados mc'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('<center><h3>Bit\00E1cora archivos apoderados</h3></center>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(190882254811779654)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1181179350931513543)
,p_button_name=>'BTN_REGRESAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155207953779979427)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Btn Regresar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:&P438_PAGINA.:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(190882584914779656)
,p_name=>'P438_ID_APODERADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1181179350931513543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(190883030175779661)
,p_name=>'P438_PAGINA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1181179350931513543)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
