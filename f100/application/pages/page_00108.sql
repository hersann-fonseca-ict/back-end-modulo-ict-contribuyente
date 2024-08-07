prompt --application/pages/page_00108
begin
--   Manifest
--     PAGE: 00108
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
 p_id=>108
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'108-Reporte Tipo Puesto Fronterizo'
,p_alias=>'108-REPORTE-TIPO-PUESTO-FRONTERIZO'
,p_step_title=>'Tipo Puesto Fronterizo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230126163950'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161748747423929566)
,p_plug_name=>'Tipo Puesto Fronterizo'
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
 p_id=>wwv_flow_api.id(161748784676929567)
,p_plug_name=>'Filtro'
,p_parent_plug_id=>wwv_flow_api.id(161748747423929566)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(162875235716477301)
,p_name=>'Reporte Tipo Puesto Fronterizo'
,p_parent_plug_id=>wwv_flow_api.id(161748747423929566)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TIPO_PUESTO,',
'       NOMBRE_PUESTO,',
'       CODIGO_ESTADO',
'  from TIPO_PUESTO_FRONTERIZO',
'  where  ID_TIPO_PUESTO = NVL(:P108_PUESTO_FRONTERIZO,ID_TIPO_PUESTO)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P108_PUESTO_FRONTERIZO'
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
 p_id=>wwv_flow_api.id(162875580004477298)
,p_query_column_id=>1
,p_column_alias=>'ID_TIPO_PUESTO'
,p_column_display_sequence=>1
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:RP:P109_ID_TIPO_PUESTO:\#ID_TIPO_PUESTO#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(162876075228477295)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_PUESTO'
,p_column_display_sequence=>2
,p_column_heading=>'Puesto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174609289984829069)
,p_query_column_id=>3
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>3
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(566945514979967966)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(161748747423929566)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Tipo Puesto Fronterizo</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(162877297073477288)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(161748784676929567)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:109:P109_CODIGO_ESTADO:AC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161749253616929571)
,p_name=>'P108_PUESTO_FRONTERIZO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(161748784676929567)
,p_prompt=>'Puesto Fronterizo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE_PUESTO,ID_TIPO_PUESTO',
'  from TIPO_PUESTO_FRONTERIZO'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(162876404903477289)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(162875235716477301)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(162876783145477288)
,p_event_id=>wwv_flow_api.id(162876404903477289)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(162875235716477301)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152943010083459403)
,p_name=>'Create Report - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(161748784676929567)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152943191178459404)
,p_event_id=>wwv_flow_api.id(152943010083459403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(162875235716477301)
);
wwv_flow_api.component_end;
end;
/
