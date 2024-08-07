prompt --application/pages/page_00305
begin
--   Manifest
--     PAGE: 00305
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
 p_id=>305
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('305- Reporte creaci\00F3n de usuarios externos')
,p_alias=>unistr('305-REPORTE-CREACI\00D3N-DE-USUARIOS-EXTERNOS')
,p_step_title=>'Reporte de usuarios externos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220715103712'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(195723108390445569)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(195723034807445568)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(195723108390445569)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(196191746773170493)
,p_name=>unistr('Reporte creaci\00F3n usuarios')
,p_parent_plug_id=>wwv_flow_api.id(195723108390445569)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_USUARIO,',
'       ID_CONTRIBUYENTE,',
'       CORREO,',
'       CLAVE,',
'       ID_ROL,',
'       FECHA_CREACION,',
'       USUARIO_INCLUYE,',
'       FECHA_CAMBIO_CLAVE,',
'       ESTADO,',
'       CODIGO_ESTADO',
'  from USUARIOS_EXTERNOS',
'  where ID_USUARIO = NVL(:P305_USUARIO,ID_USUARIO)',
'  and   ID_CONTRIBUYENTE = NVL(:P305_ID_CONTRIBUYENTE,ID_CONTRIBUYENTE)',
'  and   CODIGO_ESTADO = NVL(:P305_ESTADO,CODIGO_ESTADO)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P305_USUARIO,P305_ID_CONTRIBUYENTE,P305_ESTADO'
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
 p_id=>wwv_flow_api.id(196192077991170502)
,p_query_column_id=>1
,p_column_alias=>'ID_USUARIO'
,p_column_display_sequence=>1
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(196192414057170505)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_column_heading=>'Contribuyente'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(188848714042086160)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(196192859698170505)
,p_query_column_id=>3
,p_column_alias=>'CORREO'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(196193191047170505)
,p_query_column_id=>4
,p_column_alias=>'CLAVE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(196193607105170505)
,p_query_column_id=>5
,p_column_alias=>'ID_ROL'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(196194021609170506)
,p_query_column_id=>6
,p_column_alias=>'FECHA_CREACION'
,p_column_display_sequence=>6
,p_column_heading=>'Fecha Creacion'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(196194402079170506)
,p_query_column_id=>7
,p_column_alias=>'USUARIO_INCLUYE'
,p_column_display_sequence=>7
,p_column_heading=>'Usuario Incluye'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(196194800035170506)
,p_query_column_id=>8
,p_column_alias=>'FECHA_CAMBIO_CLAVE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(196195251985170506)
,p_query_column_id=>9
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(196195658405170506)
,p_query_column_id=>10
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>10
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(283275263788430166)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(195723108390445569)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Reporte creaci\00F3n de usuarios externos</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(195723264804445570)
,p_name=>'P305_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(195723034807445568)
,p_prompt=>'Usuario:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(195723347636445571)
,p_name=>'P305_ID_CONTRIBUYENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(195723034807445568)
,p_prompt=>unistr('N\00B0 Contribuyente:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(195723625670445574)
,p_name=>'P305_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(195723034807445568)
,p_prompt=>'Estado:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ESTADO'
,p_lov=>'.'||wwv_flow_api.id(164723649596609236)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/
