prompt --application/pages/page_00136
begin
--   Manifest
--     PAGE: 00136
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
 p_id=>136
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'136-Roles internos sit'
,p_alias=>'136-ROLES-INTERNOS-SIT'
,p_step_title=>'136-Roles internos sit'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220204155015'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(191877221242125337)
,p_name=>'Reporte roles internos'
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ROL,',
'       NOMBRE,',
'       DESCRIPCION,',
'       CODIGO_ESTADO,',
'       ID_MODULO,',
'       USUARIO_SIT',
'  from ROLES_INTERNOS_SIT'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(191877617837125340)
,p_query_column_id=>1
,p_column_alias=>'ID_ROL'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:RP:P137_ID_ROL:\#ID_ROL#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191878059844125342)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>2
,p_column_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191878379908125342)
,p_query_column_id=>3
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>3
,p_column_heading=>'Descripcion'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191878840998125342)
,p_query_column_id=>4
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>4
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(164723649596609236)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191880407064125343)
,p_query_column_id=>5
,p_column_alias=>'ID_MODULO'
,p_column_display_sequence=>6
,p_column_heading=>'Id Modulo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191880005681125342)
,p_query_column_id=>6
,p_column_alias=>'USUARIO_SIT'
,p_column_display_sequence=>5
,p_column_heading=>'Usuario Sit'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(191881609180125350)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(191877221242125337)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:137'
);
wwv_flow_api.component_end;
end;
/
