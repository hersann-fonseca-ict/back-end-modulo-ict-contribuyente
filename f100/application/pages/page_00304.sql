prompt --application/pages/page_00304
begin
--   Manifest
--     PAGE: 00304
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
 p_id=>304
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'304-Reporte Des-inscripciones por estado'
,p_alias=>'304-REPORTE-DES-INSCRIPCIONES-POR-ESTADO'
,p_step_title=>'Des-inscripciones por estado'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220715103513'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188659082796885578)
,p_plug_name=>'Des-inscripciones por estado'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188659233654885579)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(188659082796885578)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(188829692035042615)
,p_name=>'Reporte Des-inscripciones por estado'
,p_parent_plug_id=>wwv_flow_api.id(188659082796885578)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_DESC_INSCRIPCION,',
'       ID_CONTRIBUYENTE,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_TIPO_CONTRIBUYENTE (ID_CONTRIBUYENTE)TIPO_CONTRIBUYENTE,',
'       FECHA_CESE_OPERA,',
'       MOTIVO_CESE_OPERA,',
'       FECHA_SUSCRITO,',
'       LUGAR_SUSCRITO,',
'       USUARIO_INTERNO,',
'       CODIGO_ESTADO,',
'       USUARIO_SIT,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE)ID_DEUDOR',
'  from SOLICITUD_DES_INSCRIPCION',
'  WHERE  CODIGO_ESTADO IN (''A'',''R'',''P'')',
'  AND    ID_DESC_INSCRIPCION = NVL(:P304_NUM_DESINSC,ID_DESC_INSCRIPCION)',
'  AND    CODIGO_ESTADO = NVL(:P304_ESTADO,CODIGO_ESTADO)',
'  AND    PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE) = NVL(:P304_ID_DEUDOR,PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P304_NUM_DESINSC,P304_ESTADO,P304_ID_DEUDOR'
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
 p_id=>wwv_flow_api.id(188830141724042616)
,p_query_column_id=>1
,p_column_alias=>'ID_DESC_INSCRIPCION'
,p_column_display_sequence=>1
,p_column_heading=>unistr('N\00BA')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188830505246042616)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>3
,p_column_heading=>'Contribuyente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188660298531885590)
,p_query_column_id=>3
,p_column_alias=>'TIPO_CONTRIBUYENTE'
,p_column_display_sequence=>4
,p_column_heading=>'Tipo Contribuyente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(181879233338093932)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188830969899042616)
,p_query_column_id=>4
,p_column_alias=>'FECHA_CESE_OPERA'
,p_column_display_sequence=>5
,p_column_heading=>'Cese Operaciones'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188831342286042616)
,p_query_column_id=>5
,p_column_alias=>'MOTIVO_CESE_OPERA'
,p_column_display_sequence=>6
,p_column_heading=>'Motivo Cese Operaciones'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188831745098042616)
,p_query_column_id=>6
,p_column_alias=>'FECHA_SUSCRITO'
,p_column_display_sequence=>7
,p_column_heading=>'Fecha Suscrito'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188832102365042616)
,p_query_column_id=>7
,p_column_alias=>'LUGAR_SUSCRITO'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188832504303042616)
,p_query_column_id=>8
,p_column_alias=>'USUARIO_INTERNO'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188832891240042617)
,p_query_column_id=>9
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>11
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188833312188042617)
,p_query_column_id=>10
,p_column_alias=>'USUARIO_SIT'
,p_column_display_sequence=>9
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(234059662697275689)
,p_query_column_id=>11
,p_column_alias=>'ID_DEUDOR'
,p_column_display_sequence=>2
,p_column_heading=>unistr('C\00F3digo Tributario')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(283274673517427517)
,p_plug_name=>'Titulo'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Des-inscripciones por estado</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(188659282248885580)
,p_name=>'P304_NUM_DESINSC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(188659233654885579)
,p_prompt=>unistr('N\00BA Des-inscripci\00F3n ')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(188659508465885582)
,p_name=>'P304_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(188659233654885579)
,p_prompt=>'Estado:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Aprobado;A,Rechazado;R,Pendiente;P'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(234059707022275690)
,p_name=>'P304_ID_DEUDOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(188659233654885579)
,p_prompt=>unistr('C\00F3digo Tributario')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(188659663308885583)
,p_name=>'DAC_NUM_INSC'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P304_NUM_DESINSC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(188659758761885584)
,p_event_id=>wwv_flow_api.id(188659663308885583)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(188829692035042615)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(188659787327885585)
,p_name=>'DAC_CONTRIBUYENTE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P304_CONTRIBUYENTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(188659898641885586)
,p_event_id=>wwv_flow_api.id(188659787327885585)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(188829692035042615)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(188660036415885587)
,p_name=>'DAC_ESTADO'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P304_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(188660169717885588)
,p_event_id=>wwv_flow_api.id(188660036415885587)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(188829692035042615)
);
wwv_flow_api.component_end;
end;
/
