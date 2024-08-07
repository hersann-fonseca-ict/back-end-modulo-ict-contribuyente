prompt --application/pages/page_00242
begin
--   Manifest
--     PAGE: 00242
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
 p_id=>242
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'242-Impuestos apoderado MC'
,p_alias=>'242-IMPUESTOS-APODERADO-MC'
,p_page_mode=>'MODAL'
,p_step_title=>'Impuestos apoderado'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220914111448'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(260974449661602811)
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
'  from IMPUESTO_APODERADO',
'where ID_APODERADO = :P242_ID_APODERADO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P242_ID_APODERADO'
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
 p_id=>wwv_flow_api.id(260974792917602805)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(260975204740602805)
,p_query_column_id=>2
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(260975625183602805)
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
 p_id=>wwv_flow_api.id(260976053751602805)
,p_query_column_id=>4
,p_column_alias=>'USUARIO_SIT'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(259733370780611389)
,p_name=>'P242_ID_APODERADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(260974449661602811)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
