prompt --application/pages/page_00133
begin
--   Manifest
--     PAGE: 00133
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
 p_id=>133
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'133-Reporte Encargado Correo'
,p_alias=>'133-REPORTE-ENCARGADO-CORREO'
,p_step_title=>'Encargado Correo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230314105618'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185234200045199169)
,p_plug_name=>'Encargado Correo'
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
 p_id=>wwv_flow_api.id(185376039235517091)
,p_name=>'Reporte Encargado Correo'
,p_parent_plug_id=>wwv_flow_api.id(185234200045199169)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ENCARGADO,',
'       NOMBRE_ENCARGADO,',
'       CORREO_ENCARGADO,',
'       IND_CORREO,',
'       USUARIO_SIT,',
'       ID_ROL,',
'       USUARIO,',
'       CODIGO_ESTADO',
'  from ENCARGADO_CORREO_SIT',
'  where ID_MODULO = 1'))
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
 p_id=>wwv_flow_api.id(185376418481517092)
,p_query_column_id=>1
,p_column_alias=>'ID_ENCARGADO'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.:RP:P134_ID_ENCARGADO:\#ID_ENCARGADO#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185376793140517093)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_ENCARGADO'
,p_column_display_sequence=>2
,p_column_heading=>'Nombre Encargado'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185377181881517093)
,p_query_column_id=>3
,p_column_alias=>'CORREO_ENCARGADO'
,p_column_display_sequence=>3
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185377645181517093)
,p_query_column_id=>4
,p_column_alias=>'IND_CORREO'
,p_column_display_sequence=>6
,p_column_heading=>'Recibe Correos?'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:SI;S,NO;N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(148045208984686125)
,p_query_column_id=>5
,p_column_alias=>'USUARIO_SIT'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(148045388553686126)
,p_query_column_id=>6
,p_column_alias=>'ID_ROL'
,p_column_display_sequence=>5
,p_column_heading=>'Rol'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(151469299819705588)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(148045447512686127)
,p_query_column_id=>7
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>4
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(148045572383686128)
,p_query_column_id=>8
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>8
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(164723649596609236)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(944879715537262809)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(185234200045199169)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Encargado Correo</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(185378774743517095)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(185376039235517091)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.:134'
);
wwv_flow_api.component_end;
end;
/
