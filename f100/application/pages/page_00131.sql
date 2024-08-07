prompt --application/pages/page_00131
begin
--   Manifest
--     PAGE: 00131
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
 p_id=>131
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'131-Reporte Tipo Correos'
,p_alias=>'131-REPORTE-TIPO-CORREOS'
,p_step_title=>'Tipo Correos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230502091605'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185233495653199162)
,p_plug_name=>'Tipo Correos'
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
 p_id=>wwv_flow_api.id(185233636296199163)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(185233495653199162)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(185302738621455084)
,p_name=>'Reporte Tipo Correos'
,p_parent_plug_id=>wwv_flow_api.id(185233495653199162)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CORREO,',
'       ID_TIPO_SOLICITUD,',
'       ASUNTO,',
'       DETALLE,',
'       CODIGO_ESTADO,',
'       TIPO_USUARIO,',
'       TIPO_CORREO',
'  from TIPO_CORREO_SIT',
'  where ID_TIPO_SOLICITUD = NVL(:P131_TIPO_SOLICITUD,ID_TIPO_SOLICITUD)',
'  and   TIPO_USUARIO = NVL(:P131_TIPO_USUARIO,TIPO_USUARIO)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P131_TIPO_SOLICITUD,P131_TIPO_USUARIO'
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
 p_id=>wwv_flow_api.id(185303147028455087)
,p_query_column_id=>1
,p_column_alias=>'ID_CORREO'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:RP:P132_ID_CORREO:\#ID_CORREO#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185303535638455090)
,p_query_column_id=>2
,p_column_alias=>'ID_TIPO_SOLICITUD'
,p_column_display_sequence=>2
,p_column_heading=>'Tipo Solicitud'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(185309552587512611)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185303911334455090)
,p_query_column_id=>3
,p_column_alias=>'ASUNTO'
,p_column_display_sequence=>3
,p_column_heading=>'Asunto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185304369242455090)
,p_query_column_id=>4
,p_column_alias=>'DETALLE'
,p_column_display_sequence=>4
,p_column_heading=>'Detalle'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185304695080455090)
,p_query_column_id=>5
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>6
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
 p_id=>wwv_flow_api.id(185233863958199165)
,p_query_column_id=>6
,p_column_alias=>'TIPO_USUARIO'
,p_column_display_sequence=>5
,p_column_heading=>'Tipo Usuario'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(164717588627640546)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(252711318605524343)
,p_query_column_id=>7
,p_column_alias=>'TIPO_CORREO'
,p_column_display_sequence=>7
,p_column_heading=>'Tipo Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(252716969945517844)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(890884515591767554)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(185233495653199162)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Tipo Correos</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(185305835895455103)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(185233636296199163)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:132:P132_CODIGO_ESTADO:AC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185234020607199167)
,p_name=>'P131_TIPO_SOLICITUD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(185233636296199163)
,p_prompt=>'Tipo Solicitud:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_SOLICITUD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185234093398199168)
,p_name=>'P131_TIPO_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(185233636296199163)
,p_prompt=>'Tipo Usuario:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_USUARIO'
,p_lov=>'.'||wwv_flow_api.id(164717588627640546)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/
