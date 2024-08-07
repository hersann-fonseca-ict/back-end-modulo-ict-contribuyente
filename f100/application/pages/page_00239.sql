prompt --application/pages/page_00239
begin
--   Manifest
--     PAGE: 00239
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
 p_id=>239
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('239-Solicitud activaci\00F3n usuario externo')
,p_alias=>unistr('239-SOLICITUD-ACTIVACI\00D3N-USUARIO-EXTERNO')
,p_step_title=>unistr('Activaci\00F3n usuario externo')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221108120627'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(252712744771524357)
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
 p_id=>wwv_flow_api.id(252713169317524361)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(252712744771524357)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(255623174834232684)
,p_name=>'Reporte solicitud act usuario'
,p_parent_plug_id=>wwv_flow_api.id(252712744771524357)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
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
'       FECHA_INCLUYE,',
'       CODIGO_ESTADO,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_CONTRIBUYENTE (USUARIO)ID_CONTRIBUYENTE,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR (USUARIO)ID_DEUDOR,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_TIPO_CONTRI (USUARIO)TIPO_CONTRIBUYENTE',
'  from ENVIO_CORREO_SIT',
'  where ID_TIPO_SOLICITUD = 8',
'  and   CODIGO_ESTADO = ''P''',
'  and   PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR (USUARIO) = NVL(:P239_ID_DEUDOR, PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR (USUARIO))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P239_ID_DEUDOR'
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
 p_id=>wwv_flow_api.id(255623546559232675)
,p_query_column_id=>1
,p_column_alias=>'ID_CORREO'
,p_column_display_sequence=>1
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(255623888695232672)
,p_query_column_id=>2
,p_column_alias=>'ID_TIPO_SOLICITUD'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(255624289553232672)
,p_query_column_id=>3
,p_column_alias=>'CORREO_DE'
,p_column_display_sequence=>6
,p_column_heading=>'Remitente'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(255624743521232672)
,p_query_column_id=>4
,p_column_alias=>'CORREO_PARA'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(255625102905232672)
,p_query_column_id=>5
,p_column_alias=>'CORREO_COPIA'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(255625552960232672)
,p_query_column_id=>6
,p_column_alias=>'ASUNTO'
,p_column_display_sequence=>9
,p_column_heading=>'Asunto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(255625886365232671)
,p_query_column_id=>7
,p_column_alias=>'DETALLE'
,p_column_display_sequence=>10
,p_column_heading=>'Detalle'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(252712789535524358)
,p_query_column_id=>8
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(255626705302232671)
,p_query_column_id=>9
,p_column_alias=>'FECHA_INCLUYE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(252712581914524356)
,p_query_column_id=>10
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>12
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(252712926050524359)
,p_query_column_id=>11
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
 p_id=>wwv_flow_api.id(252713046708524360)
,p_query_column_id=>12
,p_column_alias=>'ID_DEUDOR'
,p_column_display_sequence=>4
,p_column_heading=>unistr('C\00F3digo Tributario')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(252713479605524365)
,p_query_column_id=>13
,p_column_alias=>'TIPO_CONTRIBUYENTE'
,p_column_display_sequence=>5
,p_column_heading=>'Tipo Contribuyente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(181879233338093932)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(252713651809524366)
,p_query_column_id=>14
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>14
,p_column_heading=>'Revisar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:240:&SESSION.::&DEBUG.::P240_NUM_SOLICITUD,P240_CONTRIBUYENTE,P240_ID_DEUDOR,P240_CEDULA,P240_TIPO_CONTRIB:#ID_CORREO#,#ID_CONTRIBUYENTE#,#ID_DEUDOR#,#USUARIO#,#TIPO_CONTRIBUYENTE#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(453874244199094550)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(252712744771524357)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Solicitud de activaci\00F3n de usuario</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(252713271892524362)
,p_name=>'P239_ID_DEUDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(252713169317524361)
,p_prompt=>unistr('C\00F3digo Tributario:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(252713376793524363)
,p_name=>'DAC_REFRESH_REGION'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_ID_DEUDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(252713409941524364)
,p_event_id=>wwv_flow_api.id(252713376793524363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(255623174834232684)
);
wwv_flow_api.component_end;
end;
/
