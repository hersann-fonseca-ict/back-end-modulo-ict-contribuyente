prompt --application/pages/page_00112
begin
--   Manifest
--     PAGE: 00112
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
 p_id=>112
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'112- Reporte Tipo Telefonos'
,p_alias=>'112-REPORTE-TIPO-TELEFONOS'
,p_step_title=>unistr('Tipo Tel\00E9fono')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230126162556'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161749310606929572)
,p_plug_name=>unistr('Tipo Tel\00E9fono')
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
 p_id=>wwv_flow_api.id(161749383214929573)
,p_plug_name=>'Filtro'
,p_parent_plug_id=>wwv_flow_api.id(161749310606929572)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(163175228354108631)
,p_name=>unistr('Reporte Tipo Tel\00E9fono')
,p_parent_plug_id=>wwv_flow_api.id(161749310606929572)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TIPO_TELEFONO,',
'       NOMBRE,',
'CODIGO_ESTADO',
'  from TIPO_TELEFONOS',
'  where ID_TIPO_TELEFONO = NVL(:P112_TIPO_TELEFONO,ID_TIPO_TELEFONO)'))
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
 p_id=>wwv_flow_api.id(163175648545108629)
,p_query_column_id=>1
,p_column_alias=>'ID_TIPO_TELEFONO'
,p_column_display_sequence=>1
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:113:&SESSION.::&DEBUG.:RP:P113_ID_TIPO_TELEFONO:\#ID_TIPO_TELEFONO#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163176039675108629)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE'
,p_column_display_sequence=>2
,p_column_heading=>'Nombre'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192549151795429947)
,p_query_column_id=>3
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>3
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(164723649596609236)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(297040481424353142)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(161749310606929572)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Tipo Tel\00E9fono</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(163177384039108625)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(161749383214929573)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:113:&SESSION.::&DEBUG.:113:P113_CODIGO_ESTADO:AC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161749532205929574)
,p_name=>'P112_TIPO_TELEFONO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(161749383214929573)
,p_prompt=>unistr('Tipo Tel\00E9fono')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE,ID_TIPO_TELEFONO',
'  from TIPO_TELEFONOS'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(163176477068108626)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(163175228354108631)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(163176904809108625)
,p_event_id=>wwv_flow_api.id(163176477068108626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(163175228354108631)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(148047009871686143)
,p_name=>'Create Report - Closed Dialog '
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(161749383214929573)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(148047147878686144)
,p_event_id=>wwv_flow_api.id(148047009871686143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(163175228354108631)
);
wwv_flow_api.component_end;
end;
/
