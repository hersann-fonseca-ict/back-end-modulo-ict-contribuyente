prompt --application/pages/page_00301
begin
--   Manifest
--     PAGE: 00301
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
 p_id=>301
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'301-Reporte Movimientos No Contribuyentes'
,p_alias=>'301-REPORTE-MOVIMIENTOS-NO-CONTRIBUYENTES'
,p_step_title=>'301-Reporte Movimientos No Contribuyentes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20210820101538'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(172323570286566413)
,p_plug_name=>'301-Reporte Movimientos No Contribuyentes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'MOVIMIENTOS_NO_CONTRIBUYE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'301-Reporte Movimientos No Contribuyentes'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(172323669309566413)
,p_name=>'301-Reporte Movimientos No Contribuyentes'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>23202890820152371
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(172323997607566404)
,p_db_column_name=>'ID_MOVIMIENTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Movimiento'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(172324442801566403)
,p_db_column_name=>'ID_TIPO_MOVIMIENTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Tipo Movimiento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(172321109659576863)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(172324791346566403)
,p_db_column_name=>'ID_NO_CONTRIBUYENTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'No Contribuyente'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(172325259408566402)
,p_db_column_name=>'FECHA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(172325617583566402)
,p_db_column_name=>'USUARIO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(172325992244559871)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'232053'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_MOVIMIENTO:ID_TIPO_MOVIMIENTO:ID_NO_CONTRIBUYENTE:FECHA:USUARIO'
);
wwv_flow_api.component_end;
end;
/
