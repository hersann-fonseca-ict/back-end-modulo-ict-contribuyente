prompt --application/pages/page_00120
begin
--   Manifest
--     PAGE: 00120
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
 p_id=>120
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'120-Mantenimiento Tipo no Contribuyente'
,p_alias=>'120-MANTENIMIENTO-TIPO-NO-CONTRIBUYENTE'
,p_step_title=>'Tipo no Contribuyente'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20210901100304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(172388598248192546)
,p_plug_name=>'Tipo no Contribuyente'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(172295842388780947)
,p_name=>'Reporte Tipo no Contribuyente'
,p_parent_plug_id=>wwv_flow_api.id(172388598248192546)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TIPO_NO_CONTRI,',
'       DESCRIPCION,',
'       CODIGO_ESTADO',
'  from TIPO_NO_CONTRIBUYE',
'  where ID_TIPO_NO_CONTRI = NVL(:P120_TIPO_NO_CONTRIBUYENTE,ID_TIPO_NO_CONTRI)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P120_TIPO_NO_CONTRIBUYENTE'
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
 p_id=>wwv_flow_api.id(172296254712780946)
,p_query_column_id=>1
,p_column_alias=>'ID_TIPO_NO_CONTRI'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:RP:P121_ID_TIPO_NO_CONTRI:\#ID_TIPO_NO_CONTRI#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172296630960780946)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>2
,p_column_heading=>'Descripcion'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172388964098192549)
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
 p_id=>wwv_flow_api.id(172388769806192547)
,p_plug_name=>'Filtro'
,p_parent_plug_id=>wwv_flow_api.id(172388598248192546)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(172298716001780941)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(172388769806192547)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:121:P121_CODIGO_ESTADO:AC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(172388847872192548)
,p_name=>'P120_TIPO_NO_CONTRIBUYENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(172388769806192547)
,p_prompt=>'Tipo No Contribuyente:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_NO_CONTRIBUYENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_TIPO_NO_CONTRI, DESCRIPCION',
'FROM TIPO_NO_CONTRIBUYE',
'WHERE CODIGO_ESTADO = ''AC'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(172297709596780942)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(172295842388780947)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(172298256992780941)
,p_event_id=>wwv_flow_api.id(172297709596780942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(172295842388780947)
);
wwv_flow_api.component_end;
end;
/
