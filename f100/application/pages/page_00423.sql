prompt --application/pages/page_00423
begin
--   Manifest
--     PAGE: 00423
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
 p_id=>423
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'423-Bitacora Alquileres Propiedades ICT (Locales)'
,p_alias=>'423-BITACORA-ALQUILERES-PROPIEDADES-ICT-LOCALES'
,p_step_title=>unistr('Bit\00E1cora Alquileres Propiedades ICT (Locales)')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221111132354'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(438022256493481798)
,p_plug_name=>unistr('415-Consulta Bit\00E1cora Alquileres Propiedades ICT (Locales)')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CONTRIBUYENTE,',
'       NOMBRE_ENTIDAD,',
'       ID_TIPO_IDENTIFICACION,',
'       PERSONA_FISICA,',
'       PERSONA_JURIDICA,',
'       CEDULA_JURIDICA,',
'       CEDULA_FISICA,',
'       ID_TIPO_CONTRIBUYENTE,',
'       CODIGO_ESTADO,',
'       ID_PROVINCIA_ENTIDAD,',
'       OBSERVA_EMPRESA,',
'       ID_TIPO_LOCAL,',
'       MOTIVO,',
'       NUMERO_CONTRATO,',
'       FECHA_INICIO_CONTRATO,',
'       FECHA_VENCE_CONTRATO,',
'       FECHA_PAGO,',
'       PORCENTAJE_AJUSTE,',
'       PORCENTAJE_INTERESES,',
'       TARIFA_MENSUAL,',
'       MESES_AJUSTES,',
'       FECHA_RENOVACION_INICIO,',
'       FECHA_RENOVACION_VENCI,',
'       NOMBRE_PROPIEDAD',
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
'  where ID_TIPO_CONTRIBUYENTE IN (12)',
'',
'       '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('415-Consulta Bit\00E1cora Alquileres Propiedades ICT (Locales)')
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
 p_id=>wwv_flow_api.id(438022366385481798)
,p_name=>unistr('415-Consulta Bit\00E1cora Maestro Contribuyente')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>288901587896067756
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190448436481338437)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod. Trib.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190448863243338438)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Entidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190449218645338438)
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
 p_id=>wwv_flow_api.id(190450816045338439)
,p_db_column_name=>'CODIGO_FUENTE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Codigo Fuente'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190451241029338439)
,p_db_column_name=>'ID_DEUDOR'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Id Deudor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190451659975338440)
,p_db_column_name=>'FECHA_SUSCRITO'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Fecha Suscrito'
,p_column_type=>'DATE'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190452029390338440)
,p_db_column_name=>'LUGAR_SUSCRITO'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Lugar Suscrito'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190449615431338439)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>63
,p_column_identifier=>'Y'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190452831976338440)
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
 p_id=>wwv_flow_api.id(190453180601338440)
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
 p_id=>wwv_flow_api.id(190453620284338441)
,p_db_column_name=>'USUARIO'
,p_display_order=>93
,p_column_identifier=>'CL'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191033036328152349)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION'
,p_display_order=>103
,p_column_identifier=>'CM'
,p_column_label=>'Id Tipo Identificacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191033173750152350)
,p_db_column_name=>'PERSONA_FISICA'
,p_display_order=>113
,p_column_identifier=>'CN'
,p_column_label=>unistr('Persona F\00EDsica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191033225929152351)
,p_db_column_name=>'PERSONA_JURIDICA'
,p_display_order=>123
,p_column_identifier=>'CO'
,p_column_label=>unistr('Persona Jur\00EDdica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191033310696152352)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>133
,p_column_identifier=>'CP'
,p_column_label=>unistr('Cedula Jur\00EDdica')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191033466759152353)
,p_db_column_name=>'CEDULA_FISICA'
,p_display_order=>143
,p_column_identifier=>'CQ'
,p_column_label=>unistr('Cedula F\00EDsica')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191033562667152354)
,p_db_column_name=>'ID_PROVINCIA_ENTIDAD'
,p_display_order=>153
,p_column_identifier=>'CR'
,p_column_label=>'Provincia Entidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191033647386152355)
,p_db_column_name=>'OBSERVA_EMPRESA'
,p_display_order=>163
,p_column_identifier=>'CS'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191033715607152356)
,p_db_column_name=>'ID_TIPO_LOCAL'
,p_display_order=>173
,p_column_identifier=>'CT'
,p_column_label=>'Tipo Local'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(183233193890368266)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191033783180152357)
,p_db_column_name=>'MOTIVO'
,p_display_order=>183
,p_column_identifier=>'CU'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191033918566152358)
,p_db_column_name=>'NUMERO_CONTRATO'
,p_display_order=>193
,p_column_identifier=>'CV'
,p_column_label=>'Numero Contrato'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191034028031152359)
,p_db_column_name=>'FECHA_INICIO_CONTRATO'
,p_display_order=>203
,p_column_identifier=>'CW'
,p_column_label=>'Inicio Contrato'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191034124474152360)
,p_db_column_name=>'FECHA_VENCE_CONTRATO'
,p_display_order=>213
,p_column_identifier=>'CX'
,p_column_label=>'Vence Contrato'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191034212791152361)
,p_db_column_name=>'FECHA_PAGO'
,p_display_order=>223
,p_column_identifier=>'CY'
,p_column_label=>'Fecha Pago'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191034309851152362)
,p_db_column_name=>'PORCENTAJE_AJUSTE'
,p_display_order=>233
,p_column_identifier=>'CZ'
,p_column_label=>'Porcentaje Ajuste'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191034398407152363)
,p_db_column_name=>'PORCENTAJE_INTERESES'
,p_display_order=>243
,p_column_identifier=>'DA'
,p_column_label=>'Porcentaje Intereses'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191034490640152364)
,p_db_column_name=>'TARIFA_MENSUAL'
,p_display_order=>253
,p_column_identifier=>'DB'
,p_column_label=>'Tarifa Mensual'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191034675436152365)
,p_db_column_name=>'MESES_AJUSTES'
,p_display_order=>263
,p_column_identifier=>'DC'
,p_column_label=>'Meses Ajustes'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191034725257152366)
,p_db_column_name=>'FECHA_RENOVACION_INICIO'
,p_display_order=>273
,p_column_identifier=>'DD'
,p_column_label=>'Fecha Renovacion Inicio'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191034853774152367)
,p_db_column_name=>'FECHA_RENOVACION_VENCI'
,p_display_order=>283
,p_column_identifier=>'DE'
,p_column_label=>'Fecha Renovacion Venci'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191034914885152368)
,p_db_column_name=>'FECHA_INSCRIPCION'
,p_display_order=>293
,p_column_identifier=>'DF'
,p_column_label=>'Fecha Inscripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191035042844152369)
,p_db_column_name=>'LINK_BIT_CORREOS'
,p_display_order=>303
,p_column_identifier=>'DG'
,p_column_label=>'Bit Correos'
,p_column_link=>'f?p=&APP_ID.:435:&SESSION.::&DEBUG.::P435_ID_CONTRIB,P435_PAGINA:#ID_CONTRIBUYENTE#,423'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191035164451152370)
,p_db_column_name=>'LINK_BIT_TELEFONO'
,p_display_order=>313
,p_column_identifier=>'DH'
,p_column_label=>unistr('Bit Tel\00E9fono')
,p_column_link=>'f?p=&APP_ID.:436:&SESSION.::&DEBUG.::P436_ID_CONTRIB,P436_PAGINA:#ID_CONTRIBUYENTE#,423'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(438059387544485344)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'413332'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ID_CONTRIBUYENTE:NOMBRE_ENTIDAD:ID_TIPO_CONTRIBUYENTE:ID_DEUDOR:FECHA:ID_TIPO_OPERACION:USUARIO::LINK_BIT_CORREOS:LINK_BIT_TELEFONO'
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
 p_id=>wwv_flow_api.id(558451729863911766)
,p_plug_name=>'Bit Alquileres Propiedades ICT (Locales)'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Bit\00E1cora Alquileres Propiedades ICT (locales)</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
