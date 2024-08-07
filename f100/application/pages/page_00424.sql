prompt --application/pages/page_00424
begin
--   Manifest
--     PAGE: 00424
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
 p_id=>424
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('424-Bitacora Garant\00EDas de cumplimiento')
,p_alias=>unistr('424-BITACORA-GARANT\00CDAS-DE-CUMPLIMIENTO')
,p_step_title=>unistr('Bit\00E1cora Garant\00EDas de cumplimiento')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221111132652'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(479357565148417685)
,p_plug_name=>unistr('415-Consulta Bit\00E1cora Garant\00EDas de cumplimiento')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CONTRIBUYENTE,',
'       NOMBRE_ENTIDAD,',
'       ID_TIPO_IDENTIFICACION,',
'       RAZON_SOCIAL,',
'       CEDULA_JURIDICA,',
'       CEDULA_FISICA,',
'       ID_TIPO_CONTRIBUYENTE,',
'       CODIGO_ESTADO,',
'       FECHA_INGRESO,',
'       MONTO_MONEDA,',
'       FECHA_INSCRIPCION,',
'       CODIGO_FUENTE,',
'       ID_DEUDOR,',
'       FECHA_SUSCRITO,',
'       LUGAR_SUSCRITO,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO,',
'       NULL Link_bit_correos,',
'       NULL Link_bit_telefono',
'  from BITACORA_MAESTRO_CONTRIBUYENTE',
'  where ID_TIPO_CONTRIBUYENTE IN (13)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('415-Consulta Bit\00E1cora Garant\00EDas de cumplimiento')
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
 p_id=>wwv_flow_api.id(479357675040417685)
,p_name=>unistr('415-Consulta Bit\00E1cora Maestro Contribuyente')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>330236896551003643
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190457398836349932)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod. Trib.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190457863373349932)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Entidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190458184589349933)
,p_db_column_name=>'ID_TIPO_CONTRIBUYENTE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Tipo Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(181879233338093932)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190459034806349933)
,p_db_column_name=>'FECHA_INSCRIPCION'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>unistr('Fecha Inscripci\00F3n')
,p_column_type=>'DATE'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190459786197349937)
,p_db_column_name=>'CODIGO_FUENTE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Codigo Fuente'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190460198336349937)
,p_db_column_name=>'ID_DEUDOR'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Id Deudor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190460617071349938)
,p_db_column_name=>'FECHA_SUSCRITO'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Fecha Suscrito'
,p_column_type=>'DATE'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190461062796349938)
,p_db_column_name=>'LUGAR_SUSCRITO'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Lugar Suscrito'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190458612737349933)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>63
,p_column_identifier=>'Y'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190461828932349938)
,p_db_column_name=>'FECHA'
,p_display_order=>73
,p_column_identifier=>'CJ'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190462253265349939)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>83
,p_column_identifier=>'CK'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190462593665349939)
,p_db_column_name=>'USUARIO'
,p_display_order=>93
,p_column_identifier=>'CL'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191035237375152371)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION'
,p_display_order=>103
,p_column_identifier=>'CM'
,p_column_label=>unistr('Tipo Identificaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(160819142014193368)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191035378078152372)
,p_db_column_name=>'RAZON_SOCIAL'
,p_display_order=>113
,p_column_identifier=>'CN'
,p_column_label=>unistr('Raz\00F3n Social')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191035388274152373)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>123
,p_column_identifier=>'CO'
,p_column_label=>unistr('Cedula Jur\00EDdica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191035499826152374)
,p_db_column_name=>'CEDULA_FISICA'
,p_display_order=>133
,p_column_identifier=>'CP'
,p_column_label=>unistr('Cedula F\00EDsica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191035640793152375)
,p_db_column_name=>'FECHA_INGRESO'
,p_display_order=>143
,p_column_identifier=>'CQ'
,p_column_label=>'Fecha Ingreso'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191035738522152376)
,p_db_column_name=>'MONTO_MONEDA'
,p_display_order=>153
,p_column_identifier=>'CR'
,p_column_label=>'Monto Moneda'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191035816327152377)
,p_db_column_name=>'LINK_BIT_CORREOS'
,p_display_order=>163
,p_column_identifier=>'CS'
,p_column_label=>'Bit Correos'
,p_column_link=>'f?p=&APP_ID.:435:&SESSION.::&DEBUG.::P435_ID_CONTRIB,P435_PAGINA:#ID_CONTRIBUYENTE#,424'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191035936231152378)
,p_db_column_name=>'LINK_BIT_TELEFONO'
,p_display_order=>173
,p_column_identifier=>'CT'
,p_column_label=>'Bit Telefono'
,p_column_link=>'f?p=&APP_ID.:436:&SESSION.::&DEBUG.::P436_ID_CONTRIB,P436_PAGINA:#ID_CONTRIBUYENTE#,424'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(479394696199421231)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'413422'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ID_CONTRIBUYENTE:NOMBRE_ENTIDAD:ID_TIPO_CONTRIBUYENTE:FECHA_INSCRIPCION:ID_DEUDOR:FECHA:ID_TIPO_OPERACION:USUARIO::LINK_BIT_CORREOS:LINK_BIT_TELEFONO'
,p_sort_column_1=>'ID_CONTRIBUYENTE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'FECHA'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'ID_TIPO_OPERACION'
,p_sort_direction_3=>'DESC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(599787038518847653)
,p_plug_name=>unistr('Bit Garant\00EDas de cumplimiento')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Bit\00E1cora Garant\00EDas de Cumplimiento</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
