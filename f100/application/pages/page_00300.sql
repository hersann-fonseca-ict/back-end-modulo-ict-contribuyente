prompt --application/pages/page_00300
begin
--   Manifest
--     PAGE: 00300
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
 p_id=>300
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'300-Reporte de Tipo Movimientos SIT'
,p_alias=>'300-REPORTE-DE-TIPO-MOVIMIENTOS-SIT'
,p_step_title=>'300-Reporte de Tipo Movimientos SIT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20210820101252'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(172314618479644134)
,p_plug_name=>'300-Reporte de Tipo Movimientos SIT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'MOVIMIENTOS_CONTRIBUYENTES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'300-Reporte de Tipo Movimientos SIT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(172314745926644134)
,p_name=>'300-Reporte de Tipo Movimientos SIT'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>23193967437230092
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169224538240313488)
,p_db_column_name=>'ID_MOVIMIENTO'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Id Movimiento'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(172315106404644129)
,p_db_column_name=>'ID_TIPO_MOVIMIENTO'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(172321109659576863)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169224658981313489)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Contribuyente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169224742842313490)
,p_db_column_name=>'FECHA'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169224792054313491)
,p_db_column_name=>'USUARIO'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(172315916156633960)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'231952'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_TIPO_MOVIMIENTO:ID_MOVIMIENTO:ID_CONTRIBUYENTE:FECHA:USUARIO'
);
wwv_flow_api.component_end;
end;
/
