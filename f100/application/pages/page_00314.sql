prompt --application/pages/page_00314
begin
--   Manifest
--     PAGE: 00314
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
 p_id=>314
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'314-Archivo Requisito COT'
,p_alias=>'314-ARCHIVO-REQUISITO-COT'
,p_page_mode=>'MODAL'
,p_step_title=>'Archivo Requisito COT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230309142322'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(619586303366123554)
,p_name=>unistr('Revisi\00F3n de Requisitos')
,p_region_name=>'ID_REQUI'
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_REQUI_CTO,',
'       ID_DECLARA_CTO,',
'       NOMBRE_ARCHIVO,',
'      -- ARCHIVO,',
'      sys.dbms_lob.getlength(ARCHIVO)DESCARGAR,',
'       MIMETYPE,',
'       FEC_ACT',
'  from ARCHIVOS_DECLARA_CHARTER_TO',
'  where  ID_DECLARA_CTO = :P314_ID_DECLARA'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P314_ID_DECLARA'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164494502056763883)
,p_query_column_id=>1
,p_column_alias=>'ID_REQUI_CTO'
,p_column_display_sequence=>1
,p_column_heading=>'Requisito'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(169262864369395251)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164494970734763883)
,p_query_column_id=>2
,p_column_alias=>'ID_DECLARA_CTO'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164495379403763883)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ARCHIVO'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164496597754763886)
,p_query_column_id=>4
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>4
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_DECLARA_CHARTER_TO:ARCHIVO:ID_REQUI_CTO::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164495739405763883)
,p_query_column_id=>5
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164496102442763883)
,p_query_column_id=>6
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>6
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(164496929269763887)
,p_name=>'P314_ID_DECLARA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(619586303366123554)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
