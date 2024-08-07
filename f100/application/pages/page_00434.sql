prompt --application/pages/page_00434
begin
--   Manifest
--     PAGE: 00434
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
 p_id=>434
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'434-Bitacora impuesto MC'
,p_alias=>'434-BITACORA-IMPUESTO-MC'
,p_step_title=>unistr('Bit\00E1cora impuesto MC')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221111100515'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190783326617377982)
,p_plug_name=>'434-Bitacora impuesto MC'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TIPO_IMPUESTO,',
'       ID_CONTRIBUYENTE,',
'       NOMBRE_ENCARGADO_IMP,',
'       CEDULA_ENCARGADO_IMP,',
'       CORREO_ENCARGADO_IMP,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO',
'  from BITA_IMP_X_MAESTRO_CONTRIBUYE',
'  where ID_CONTRIBUYENTE = :P434_ID_CONTRIB'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P434_ID_CONTRIB'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'434-Bitacora impuesto MC'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(190783381514377982)
,p_name=>'434-Bitacora impuesto MC'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>41662603024963940
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190783853973377982)
,p_db_column_name=>'ID_TIPO_IMPUESTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tipo Impuesto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(161757268632851451)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190784252552377983)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190784674346377983)
,p_db_column_name=>'NOMBRE_ENCARGADO_IMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre Encargado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190784983706377983)
,p_db_column_name=>'CEDULA_ENCARGADO_IMP'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cedula Encargado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190785452183377983)
,p_db_column_name=>'CORREO_ENCARGADO_IMP'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Correo Encargado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190785790246377983)
,p_db_column_name=>'FECHA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190786275898377983)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190786585604377984)
,p_db_column_name=>'USUARIO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190789303054394073)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'416686'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_TIPO_IMPUESTO:ID_CONTRIBUYENTE:NOMBRE_ENCARGADO_IMP:CEDULA_ENCARGADO_IMP:CORREO_ENCARGADO_IMP:FECHA:ID_TIPO_OPERACION:USUARIO'
,p_sort_column_1=>'FECHA'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'ID_TIPO_OPERACION'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1014346018469791038)
,p_plug_name=>'Bit impuestos mc'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Bit\00E1cora impuestos</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(190787399383383215)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1014346018469791038)
,p_button_name=>'BTN_REGRESAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155207953779979427)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Btn Regresar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:&P434_PAGINA.:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(190787852531383217)
,p_name=>'P434_ID_CONTRIB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1014346018469791038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(190788248679383219)
,p_name=>'P434_PAGINA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1014346018469791038)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
