prompt --application/pages/page_00237
begin
--   Manifest
--     PAGE: 00237
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
 p_id=>237
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'237-Reporte solicitud actualizacion impuesto'
,p_alias=>'237-REPORTE-SOLICITUD-ACTUALIZACION-IMPUESTO'
,p_step_title=>'237-Reporte solicitud actualizacion impuesto'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230622115822'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(230617805749483082)
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
 p_id=>wwv_flow_api.id(230617710953483081)
,p_plug_name=>'Filtro'
,p_parent_plug_id=>wwv_flow_api.id(230617805749483082)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(230699384143600009)
,p_name=>'Report 1'
,p_parent_plug_id=>wwv_flow_api.id(230617805749483082)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE)CODIGO_TRIBUTARIO,',
'       ID_TIPO_IMPUESTO,',
'       ID_CONTRIBUYENTE,',
'       ID_CONTRIBUYENTE COD,',
'       NOMBRE_ENCARGADO_IMP,',
'       CEDULA_ENCARGADO_IMP,',
'       CORREO_ENCARGADO_IMP,',
'       CODIGO_ESTADO,',
'       USUARIO_SIT,',
'       TIPO_ACT,',
'       ID_IMPUESTO',
'  from TEMP_IMPUESTO_MAEST_CONTRIB',
'  where CODIGO_ESTADO = ''P''',
'  and   PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE) = NVL(:P237_COD_TRIBUTARIO,PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P237_COD_TRIBUTARIO'
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
 p_id=>wwv_flow_api.id(230699818732600004)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:238:&SESSION.::&DEBUG.:RP,:P238_ROWID,P238_ID_CONTRIBUYENTE,P238_ID_IMPUESTO:\#ROWID#\,#ID_CONTRIBUYENTE#,#ID_IMPUESTO#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230618067610483084)
,p_query_column_id=>2
,p_column_alias=>'CODIGO_TRIBUTARIO'
,p_column_display_sequence=>3
,p_column_heading=>unistr('C\00F3digo Tributario')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230700250244600004)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_IMPUESTO'
,p_column_display_sequence=>6
,p_column_heading=>'Tipo Impuesto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(161757268632851451)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230700616804600003)
,p_query_column_id=>4
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>5
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(188848714042086160)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232292929898347788)
,p_query_column_id=>5
,p_column_alias=>'COD'
,p_column_display_sequence=>4
,p_column_heading=>'Id Contribuyente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230700981715600003)
,p_query_column_id=>6
,p_column_alias=>'NOMBRE_ENCARGADO_IMP'
,p_column_display_sequence=>7
,p_column_heading=>'Nombre Encargado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230701393407600003)
,p_query_column_id=>7
,p_column_alias=>'CEDULA_ENCARGADO_IMP'
,p_column_display_sequence=>8
,p_column_heading=>'Cedula Encargado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230701785532600003)
,p_query_column_id=>8
,p_column_alias=>'CORREO_ENCARGADO_IMP'
,p_column_display_sequence=>9
,p_column_heading=>'Correo Encargado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230702234225600003)
,p_query_column_id=>9
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>10
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
 p_id=>wwv_flow_api.id(230702588577600003)
,p_query_column_id=>10
,p_column_alias=>'USUARIO_SIT'
,p_column_display_sequence=>11
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232293002140347789)
,p_query_column_id=>11
,p_column_alias=>'TIPO_ACT'
,p_column_display_sequence=>2
,p_column_heading=>'Tipo Solicitud'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:Nuevo Impuesto;N,Inactivar Impuesto;I'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184951281145269025)
,p_query_column_id=>12
,p_column_alias=>'ID_IMPUESTO'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(347355998105345694)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(230617805749483082)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Solicitud Tipo Impuesto Pendiente</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(230704686184599993)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(230699384143600009)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:238:&SESSION.::&DEBUG.:238'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230617949107483083)
,p_name=>'P237_COD_TRIBUTARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(230617710953483081)
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
 p_id=>wwv_flow_api.id(230703700043599995)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(230699384143600009)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(230704204247599994)
,p_event_id=>wwv_flow_api.id(230703700043599995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(230699384143600009)
);
wwv_flow_api.component_end;
end;
/
