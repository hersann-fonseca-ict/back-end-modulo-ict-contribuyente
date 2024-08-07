prompt --application/pages/page_00114
begin
--   Manifest
--     PAGE: 00114
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
 p_id=>114
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'114-Reporte Tipo Venta'
,p_alias=>'114-REPORTE-TIPO-VENTA'
,p_step_title=>'Tipo Venta'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230126162136'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161749624956929575)
,p_plug_name=>'Tipo Venta'
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
 p_id=>wwv_flow_api.id(161749708162929576)
,p_plug_name=>'Filtro'
,p_parent_plug_id=>wwv_flow_api.id(161749624956929575)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(163190437531003473)
,p_name=>'Reporte Tipo Venta'
,p_parent_plug_id=>wwv_flow_api.id(161749624956929575)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TIPO_VENTAS,',
'       NOMBRE_TIPO_VENTAS,',
'       CODIGO_ESTADO',
'  from TIPO_VENTAS',
'  where ID_TIPO_VENTAS = NVL(:P114_TIPO_VENTA,ID_TIPO_VENTAS)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P114_TIPO_VENTA'
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
 p_id=>wwv_flow_api.id(163190847201003472)
,p_query_column_id=>1
,p_column_alias=>'ID_TIPO_VENTAS'
,p_column_display_sequence=>1
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:RP:P115_ID_TIPO_VENTAS:\#ID_TIPO_VENTAS#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163191204540003471)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_TIPO_VENTAS'
,p_column_display_sequence=>2
,p_column_heading=>'Tipo Venta'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192549029549429946)
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
 p_id=>wwv_flow_api.id(243064351823098522)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(161749624956929575)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Tipo Venta</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(163192617782003468)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(161749708162929576)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:115:P115_CODIGO_ESTADO:AC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161749788107929577)
,p_name=>'P114_TIPO_VENTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(161749708162929576)
,p_prompt=>'Tipo Venta'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE_TIPO_VENTAS,ID_TIPO_VENTAS',
'  from TIPO_VENTAS'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(163191631789003468)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(163190437531003473)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(163192102431003468)
,p_event_id=>wwv_flow_api.id(163191631789003468)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(163190437531003473)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(148046880889686141)
,p_name=>'Create Report - Closed_Dialog '
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(161749624956929575)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(148046939847686142)
,p_event_id=>wwv_flow_api.id(148046880889686141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(163190437531003473)
);
wwv_flow_api.component_end;
end;
/
