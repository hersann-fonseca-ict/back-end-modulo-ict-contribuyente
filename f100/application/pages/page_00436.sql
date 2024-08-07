prompt --application/pages/page_00436
begin
--   Manifest
--     PAGE: 00436
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
 p_id=>436
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'436-Bitacora telefonos MC'
,p_alias=>'436-BITACORA-TELEFONOS-MC'
,p_step_title=>unistr('Bit\00E1cora tel\00E9fonos MC')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221111130233'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190807214948532014)
,p_plug_name=>'436-Bitacora telefonos MC'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TELEFONO,',
'       ID_CONTRIBUYENTE,',
'       ID_TIPO_TELEFONO,',
'       TELEFONO,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO',
'  from BITA_TELEFONO_X_MAES_CONTRI',
'where ID_CONTRIBUYENTE =:P436_ID_CONTRIB'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P436_ID_CONTRIB'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'436-Bitacora telefonos MC'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(190807373909532015)
,p_name=>'436-Bitacora telefonos MC'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>41686595420117973
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190807754913532016)
,p_db_column_name=>'ID_TELEFONO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190808119436532017)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190808553556532017)
,p_db_column_name=>'ID_TIPO_TELEFONO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Tipo Tel\00E9fono')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(182060249592638115)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190808942205532017)
,p_db_column_name=>'TELEFONO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Telefono'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190809367742532017)
,p_db_column_name=>'FECHA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190809737583532017)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190810127596532018)
,p_db_column_name=>'USUARIO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190813017089551913)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'416923'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ID_TELEFONO:ID_CONTRIBUYENTE:ID_TIPO_TELEFONO:TELEFONO:FECHA:ID_TIPO_OPERACION:USUARIO'
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
 p_id=>wwv_flow_api.id(1097716771348968140)
,p_plug_name=>'Bit telefonos mc'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Bit\00E1cora tel\00E9fonos</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(190810855719536638)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1097716771348968140)
,p_button_name=>'BTN_REGRESAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155207953779979427)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Btn Regresar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:&P436_PAGINA.:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(190811189810536639)
,p_name=>'P436_ID_CONTRIB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1097716771348968140)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(190811657453536640)
,p_name=>'P436_PAGINA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1097716771348968140)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
