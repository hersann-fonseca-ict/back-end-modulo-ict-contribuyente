prompt --application/pages/page_01001
begin
--   Manifest
--     PAGE: 01001
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
 p_id=>1001
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'Documentos'
,p_alias=>'DOCUMENTOS'
,p_step_title=>'Documentos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20210729155008'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(166106221402019523)
,p_plug_name=>'Documentos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NOM_ARCHIVO,',
'       sys.dbms_lob.getlength(ARCHIVO)DESCARGAR,',
'       MIMETYPE,',
'       CHARSET,',
'       LAST_UPDATE',
'  from ARCHIVOS_CARGADOS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Documentos'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(166106313647019523)
,p_name=>'Documentos'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>16985535157605481
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(166106731657019517)
,p_db_column_name=>'NOM_ARCHIVO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Nom Archivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(166107124610019513)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(166107542713019513)
,p_db_column_name=>'CHARSET'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(166107958157019512)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Last Update'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(165203483948141158)
,p_db_column_name=>'ID'
,p_display_order=>25
,p_column_identifier=>'F'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(165203658436141159)
,p_db_column_name=>'DESCARGAR'
,p_display_order=>35
,p_column_identifier=>'G'
,p_column_label=>'Descargar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:ARCHIVOS_CARGADOS:ARCHIVO:ID::MIMETYPE:NOM_ARCHIVO:LAST_UPDATE::attachment:Descargar:'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(166110450843019099)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'169897'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:NOM_ARCHIVO:DESCARGAR:LAST_UPDATE:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(165203754708141160)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(166106221402019523)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'New'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:1000:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.component_end;
end;
/
