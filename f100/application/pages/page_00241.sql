prompt --application/pages/page_00241
begin
--   Manifest
--     PAGE: 00241
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
 p_id=>241
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'241-Impuestos apoderado solicitud'
,p_alias=>'241-IMPUESTOS-APODERADO-SOLICITUD'
,p_page_mode=>'MODAL'
,p_step_title=>'Impuestos apoderado'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220914095116'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(260948927717123558)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>5
,p_display_column=>4
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_APODERADO,',
'       ID_TIPO_IMPUESTO,',
'       USUARIO_SIT',
'  from IMPUESTO_APODERA_INSCRIP',
'  where ID_APODERADO = :P241_ID_APODERADO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P241_ID_APODERADO'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(260949348751123537)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(260949740241123534)
,p_query_column_id=>2
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(260950113647123429)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_IMPUESTO'
,p_column_display_sequence=>3
,p_column_heading=>'Tipo Impuesto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(161757268632851451)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(260950565348123429)
,p_query_column_id=>4
,p_column_alias=>'USUARIO_SIT'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(259732912390611385)
,p_name=>'P241_ID_APODERADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(260948927717123558)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
