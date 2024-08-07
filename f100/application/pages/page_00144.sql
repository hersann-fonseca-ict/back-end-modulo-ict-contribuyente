prompt --application/pages/page_00144
begin
--   Manifest
--     PAGE: 00144
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
 p_id=>144
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'144-Reporte Notificaciones'
,p_alias=>'144-REPORTE-NOTIFICACIONES'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220728093618'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(232290487870347764)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(232330456110256047)
,p_name=>'Reporte notificaciones'
,p_parent_plug_id=>wwv_flow_api.id(232290487870347764)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CONTRIBUYENTE,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE)CODIGO_TRIBUTARIO,',
'       FECHA_NOTIFICA',
'  from NOTIFICA_CONTRIBUYENTE',
'  where TRUNC (FECHA_NOTIFICA) = TRUNC(SYSDATE)'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(232330791862256027)
,p_query_column_id=>1
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_column_heading=>'Contribuyente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(188848714042086160)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232290673950347765)
,p_query_column_id=>2
,p_column_alias=>'CODIGO_TRIBUTARIO'
,p_column_display_sequence=>1
,p_column_heading=>'Codigo Tributario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232331196860256023)
,p_query_column_id=>3
,p_column_alias=>'FECHA_NOTIFICA'
,p_column_display_sequence=>3
,p_column_heading=>'Fecha Notifica'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232290724977347766)
,p_query_column_id=>4
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>4
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:415:&SESSION.::&DEBUG.::P415_COD_TRIB:#CODIGO_TRIBUTARIO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1082089091583600549)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(232290487870347764)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Reporte Notificaciones</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
