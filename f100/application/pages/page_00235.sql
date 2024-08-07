prompt --application/pages/page_00235
begin
--   Manifest
--     PAGE: 00235
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
 p_id=>235
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'235-Reporte Temp repre legal'
,p_alias=>'235-REPORTE-TEMP-REPRE-LEGAL'
,p_step_title=>'235-Reporte Temp repre legal'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220715101905'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(228056078965828422)
,p_name=>'Reporte temp rep legal'
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_REPRESENTA,',
'       ID_CONTRIBUYENTE,',
'       NOMBRE_REPRE_LEGAL,',
'       CEDULA_REPRE_LEGAL,',
'       CORREO_REPRE_LEGAL,',
'       CODIGO_ESTADO,',
'       USUARIO_SIT,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE)CODIGO_TRIBUTARIO',
'  from TEMP_ACT_REPRE_LEGAL',
' where CODIGO_ESTADO = ''P''',
' and   PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE) = NVL(:P235_CODIGO_TRIB, PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P235_CODIGO_TRIB'
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
 p_id=>wwv_flow_api.id(228056484020828418)
,p_query_column_id=>1
,p_column_alias=>'ID_REPRESENTA'
,p_column_display_sequence=>1
,p_column_heading=>'Ejecutar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:236:&SESSION.::&DEBUG.:RP,:P236_ID_REPRESENTA,P236_ID_CONTRIBUYENTE:\#ID_REPRESENTA#\,#ID_CONTRIBUYENTE#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(228056919132828415)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>3
,p_column_heading=>'Contribuyente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(188848714042086160)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(228057320213828414)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_REPRE_LEGAL'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(228057737795828414)
,p_query_column_id=>4
,p_column_alias=>'CEDULA_REPRE_LEGAL'
,p_column_display_sequence=>5
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(228058119788828414)
,p_query_column_id=>5
,p_column_alias=>'CORREO_REPRE_LEGAL'
,p_column_display_sequence=>6
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(228058486254828414)
,p_query_column_id=>6
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>7
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
 p_id=>wwv_flow_api.id(228058942966828414)
,p_query_column_id=>7
,p_column_alias=>'USUARIO_SIT'
,p_column_display_sequence=>8
,p_column_heading=>'Usuario Incluye'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230616454153483068)
,p_query_column_id=>8
,p_column_alias=>'CODIGO_TRIBUTARIO'
,p_column_display_sequence=>2
,p_column_heading=>'Codigo Tributario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(230616570493483069)
,p_plug_name=>'Filtros'
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
 p_id=>wwv_flow_api.id(265770314445371334)
,p_plug_name=>'Titulo'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Solicitud Representante Legal Pendiente</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(228061028753828393)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(228056078965828422)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:236:&SESSION.::&DEBUG.:236'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230616658547483070)
,p_name=>'P235_CODIGO_TRIB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(230616570493483069)
,p_prompt=>unistr('C\00F3digo Tributario:')
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
 p_id=>wwv_flow_api.id(228060006959828394)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(228056078965828422)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(228060485992828393)
,p_event_id=>wwv_flow_api.id(228060006959828394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(228056078965828422)
);
wwv_flow_api.component_end;
end;
/
