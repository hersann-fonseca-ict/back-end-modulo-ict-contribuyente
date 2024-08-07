prompt --application/pages/page_00110
begin
--   Manifest
--     PAGE: 00110
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
 p_id=>110
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'110-Reporte Tipo Solicitud'
,p_alias=>'110-REPORTE-TIPO-SOLICITUD'
,p_step_title=>'Tipo Solicitud'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230314112701'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161748885345929568)
,p_plug_name=>'Tipo Solicitud'
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
 p_id=>wwv_flow_api.id(161749004332929569)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(161748885345929568)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(163075947571238793)
,p_name=>'Reporte Tipo Solicitud'
,p_parent_plug_id=>wwv_flow_api.id(161748885345929568)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TIPO_SOLICITUD,',
'       NOMBRE_SOLICITUD,',
'       NOMBRE_MODULO,',
'       USUARIO_SIT,',
'       CODIGO_ESTADO,',
'       ID_TIPO_CONTRIBUYENTE',
'  from TIPO_SOLICITUD',
'  where ID_TIPO_SOLICITUD = NVL(:P110_TIPO_SOLICITUD,ID_TIPO_SOLICITUD)',
'  and   NOMBRE_MODULO = 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P110_TIPO_SOLICITUD'
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
 p_id=>wwv_flow_api.id(163076368976238792)
,p_query_column_id=>1
,p_column_alias=>'ID_TIPO_SOLICITUD'
,p_column_display_sequence=>1
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:RP:P111_ID_TIPO_SOLICITUD:\#ID_TIPO_SOLICITUD#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163076727199238791)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_SOLICITUD'
,p_column_display_sequence=>3
,p_column_heading=>'Solicitud'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163077085394238791)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_MODULO'
,p_column_display_sequence=>4
,p_column_heading=>'Modulo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(191921254073419997)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(187568422578083157)
,p_query_column_id=>4
,p_column_alias=>'USUARIO_SIT'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192550311350429959)
,p_query_column_id=>5
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>6
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(164723649596609236)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(247501785809447491)
,p_query_column_id=>6
,p_column_alias=>'ID_TIPO_CONTRIBUYENTE'
,p_column_display_sequence=>2
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
 p_id=>wwv_flow_api.id(252711659733524346)
,p_query_column_id=>7
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>7
,p_column_heading=>'Ver Correos'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.::P131_TIPO_SOLICITUD:#ID_TIPO_SOLICITUD#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(620931349112410366)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(161748885345929568)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Tipo Solicitud</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(163079103449238786)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(161749004332929569)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:111:P111_CODIGO_ESTADO:AC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161749098758929570)
,p_name=>'P110_TIPO_SOLICITUD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(161749004332929569)
,p_prompt=>'Tipo Solicitud'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOMBRE_SOLICITUD,ID_TIPO_SOLICITUD',
'  from TIPO_SOLICITUD',
'  where NOMBRE_MODULO = 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(163078132730238787)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(161748885345929568)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(163078639526238786)
,p_event_id=>wwv_flow_api.id(163078132730238787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.component_end;
end;
/
