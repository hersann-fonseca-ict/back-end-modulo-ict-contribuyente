prompt --application/pages/page_00303
begin
--   Manifest
--     PAGE: 00303
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
 p_id=>303
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('303-Reporte Envi\00F3 correos')
,p_alias=>unistr('303-REPORTE-ENVI\00D3-CORREOS')
,p_step_title=>unistr('Reporte Envi\00F3 correos')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230314113353'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188658306486885570)
,p_plug_name=>unistr('Hist\00F3rico envi\00F3 de correos, usuarios externos')
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
 p_id=>wwv_flow_api.id(188658471480885571)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(188658306486885570)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(188808562436960820)
,p_name=>unistr('Reporte envi\00F3 de correos, usuarios externos')
,p_parent_plug_id=>wwv_flow_api.id(188658306486885570)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CORREO,',
'       ID_TIPO_SOLICITUD,',
'       CORREO_DE,',
'       CORREO_PARA,',
'       CORREO_COPIA,',
'       ASUNTO,',
'       DETALLE,',
'       USUARIO,',
'       FECHA_INCLUYE',
'  from ENVIO_CORREO_SIT',
'  where ID_TIPO_SOLICITUD = NVL(:P303_TIPO_SOLICITUD,ID_TIPO_SOLICITUD)',
'  AND   CORREO_PARA = NVL(:P303_PARA,CORREO_PARA)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P303_TIPO_SOLICITUD,P303_PARA'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>10
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
 p_id=>wwv_flow_api.id(188808953514960821)
,p_query_column_id=>1
,p_column_alias=>'ID_CORREO'
,p_column_display_sequence=>1
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188809324267960822)
,p_query_column_id=>2
,p_column_alias=>'ID_TIPO_SOLICITUD'
,p_column_display_sequence=>2
,p_column_heading=>'Tipo Solicitud'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(185309552587512611)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188809773756960822)
,p_query_column_id=>3
,p_column_alias=>'CORREO_DE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188810138336960822)
,p_query_column_id=>4
,p_column_alias=>'CORREO_PARA'
,p_column_display_sequence=>4
,p_column_heading=>'Para'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188810481779960822)
,p_query_column_id=>5
,p_column_alias=>'CORREO_COPIA'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188810915930960822)
,p_query_column_id=>6
,p_column_alias=>'ASUNTO'
,p_column_display_sequence=>6
,p_column_heading=>'Asunto'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188811360411960822)
,p_query_column_id=>7
,p_column_alias=>'DETALLE'
,p_column_display_sequence=>7
,p_column_heading=>'Detalle'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(159234025759083143)
,p_query_column_id=>8
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>9
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(188812079123960823)
,p_query_column_id=>9
,p_column_alias=>'FECHA_INCLUYE'
,p_column_display_sequence=>8
,p_column_heading=>'Fecha Envio'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY HH:MIPM'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(283274926900428948)
,p_plug_name=>'Titulo'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Hist\00F3rico envi\00F3 de correos, usuarios externos</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(188658572374885572)
,p_name=>'P303_TIPO_SOLICITUD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(188658471480885571)
,p_prompt=>'Tipo Solicitud:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_SOLICITUD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(188658622183885573)
,p_name=>'P303_PARA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(188658471480885571)
,p_prompt=>'Para:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(188658771492885574)
,p_name=>'DAC_TIPO_SOLICITUD'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_TIPO_SOLICITUD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(188658860091885575)
,p_event_id=>wwv_flow_api.id(188658771492885574)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(188808562436960820)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(188658920589885576)
,p_name=>'DAC_PARA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P303_PARA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(188659038666885577)
,p_event_id=>wwv_flow_api.id(188658920589885576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(188808562436960820)
);
wwv_flow_api.component_end;
end;
/
