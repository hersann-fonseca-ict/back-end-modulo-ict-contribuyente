prompt --application/pages/page_00211
begin
--   Manifest
--     PAGE: 00211
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
 p_id=>211
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'211-Reporte inscripcion Funcionarios'
,p_alias=>'211-REPORTE-INSCRIPCION-FUNCIONARIOS'
,p_step_title=>'Funcionarios / Ex Funcionarios'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JORGE.ROJAS'
,p_last_upd_yyyymmddhh24miss=>'20230816144218'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(247499151799447464)
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
 p_id=>wwv_flow_api.id(182889929858537683)
,p_plug_name=>'Reporte inscripcion Funcionarios'
,p_parent_plug_id=>wwv_flow_api.id(247499151799447464)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CONTRIBUYENTE,',
'       ID_DEUDOR,',
'       CODIGO_FUENTE, ',
'       NOMBRE_ENTIDAD,',
'       ID_TIPO_CONTRIBUYENTE,',
'       OFICIO,',
'       MOTIVO,',
'       CODIGO_EMPLEADO,',
'       ID_EMPLEADO,',
'       CODIGO_ESTADO',
'  from MAESTRO_CONTRIBUYENTE',
'  where ID_TIPO_CONTRIBUYENTE = 10',
'  order by id_contribuyente desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte inscripcion Funcionarios'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(182890339827537683)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:212:&SESSION.::&DEBUG.:RP:P212_ID_CONTRIBUYENTE:\#ID_CONTRIBUYENTE#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>33769561338123641
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189451628420619019)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Id Contribuyente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189451774995619020)
,p_db_column_name=>'ID_DEUDOR'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>unistr('C\00F3digo Tributario')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189452424156619027)
,p_db_column_name=>'CODIGO_EMPLEADO'
,p_display_order=>30
,p_column_identifier=>'K'
,p_column_label=>unistr('C\00F3digo Empleado')
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189451887222619021)
,p_db_column_name=>'CODIGO_FUENTE'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Codigo Fuente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189452639887619029)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>50
,p_column_identifier=>'M'
,p_column_label=>'Nombre Funcionario'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189452082650619023)
,p_db_column_name=>'OFICIO'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Oficio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189452134243619024)
,p_db_column_name=>'MOTIVO'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189452323537619026)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Codigo Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(164723649596609236)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189452587645619028)
,p_db_column_name=>'ID_EMPLEADO'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Id Empleado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189452740374619030)
,p_db_column_name=>'ID_TIPO_CONTRIBUYENTE'
,p_display_order=>100
,p_column_identifier=>'N'
,p_column_label=>'Id Tipo Contribuyente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(182896149466541024)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'337754'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CONTRIBUYENTE:ID_DEUDOR:CODIGO_EMPLEADO:NOMBRE_ENTIDAD:CODIGO_ESTADO:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187046043946456589)
,p_plug_name=>'Funcionarios / Ex Funcionarios'
,p_parent_plug_id=>wwv_flow_api.id(247499151799447464)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Funcionarios / Ex Funcionarios</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(182894855230537688)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(182889929858537683)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:212:&SESSION.::&DEBUG.:212'
);
wwv_flow_api.component_end;
end;
/
