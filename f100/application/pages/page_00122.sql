prompt --application/pages/page_00122
begin
--   Manifest
--     PAGE: 00122
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
 p_id=>122
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'122-Mantenimiento Tipo Movimiento SIT'
,p_alias=>'122-MANTENIMIENTO-TIPO-MOVIMIENTO-SIT'
,p_step_title=>'122-Mantenimiento Tipo Movimiento SIT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20210820094850'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(172308723221730350)
,p_name=>'Tipo Movimientos SIT'
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'TIPO_MOVIMIENTOS_SIT'
,p_include_rowid_column=>false
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
 p_id=>wwv_flow_api.id(172309166822730348)
,p_query_column_id=>1
,p_column_alias=>'ID_TIPO_MOVIMIENTO'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:RP:P123_ID_TIPO_MOVIMIENTO:\#ID_TIPO_MOVIMIENTO#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172309531898730347)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>2
,p_column_heading=>'Descripcion'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(172311598513730335)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(172308723221730350)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:123'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(172310634649730336)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(172308723221730350)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(172311087815730335)
,p_event_id=>wwv_flow_api.id(172310634649730336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(172308723221730350)
);
wwv_flow_api.component_end;
end;
/
