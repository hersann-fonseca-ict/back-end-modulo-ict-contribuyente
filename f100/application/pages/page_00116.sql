prompt --application/pages/page_00116
begin
--   Manifest
--     PAGE: 00116
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
 p_id=>116
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'116-Reporte Tipos vuelos charter'
,p_alias=>'116-REPORTE-TIPOS-VUELOS-CHARTER'
,p_step_title=>'Tipos vuelos charter'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20210917111716'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161749896403929578)
,p_plug_name=>'Tipos vuelos charter'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161750068900929579)
,p_plug_name=>'Filtro'
,p_parent_plug_id=>wwv_flow_api.id(161749896403929578)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(163275081768911971)
,p_name=>'Reporte Tipos vuelos charter'
,p_parent_plug_id=>wwv_flow_api.id(161749896403929578)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CHARTER,',
'       NOMBRE_INSCRIPCION',
'  from TIPO_VUELOS_CHARTER',
'  where ID_CHARTER = NVL(:P116_TIPO_VUELO_CHARTER,ID_CHARTER)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P116_TIPO_VUELO_CHARTER'
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
 p_id=>wwv_flow_api.id(163275495453911970)
,p_query_column_id=>1
,p_column_alias=>'ID_CHARTER'
,p_column_display_sequence=>1
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:117:&SESSION.::&DEBUG.:RP:P117_ID_CHARTER:\#ID_CHARTER#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163275881904911969)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_INSCRIPCION'
,p_column_display_sequence=>2
,p_column_heading=>unistr('Nombre Inscripci\00F3n')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(177077743028290055)
,p_query_column_id=>3
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>3
,p_column_heading=>'Sub Tipo Vuelos'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.::P124_TIPO_VUELO_C:#ID_CHARTER#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(163277322147911966)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(161750068900929579)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:117:&SESSION.::&DEBUG.:117'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161750127667929580)
,p_name=>'P116_TIPO_VUELO_CHARTER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(161750068900929579)
,p_prompt=>'Tipo Vuelo Charter'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE_INSCRIPCION,ID_CHARTER',
'  from TIPO_VUELOS_CHARTER'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(163276323105911966)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(163275081768911971)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(163276804608911966)
,p_event_id=>wwv_flow_api.id(163276323105911966)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(163275081768911971)
);
wwv_flow_api.component_end;
end;
/
