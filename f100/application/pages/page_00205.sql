prompt --application/pages/page_00205
begin
--   Manifest
--     PAGE: 00205
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
 p_id=>205
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('205-Reporte Inscripci\00F3n Vuelos ch\00E1rter')
,p_alias=>unistr('205-REPORTE-INSCRIPCI\00D3N-VUELOS-CH\00C1RTER')
,p_step_title=>unistr('Inscripci\00F3n Vuelos ch\00E1rter')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221129123924'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(200010445883780768)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(177030081561407876)
,p_plug_name=>unistr('Reporte Inscripci\00F3n Vuelos Charter')
,p_parent_plug_id=>wwv_flow_api.id(200010445883780768)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_NUM_INSCRIPCION,',
'       NOMBRE_ENTIDAD,',
'       ID_TIPO_IDENTIFICACION,',
'       RAZON_SOCIAL,',
'       PERSONA_FISICA,',
'       CEDULA_JURIDICA,',
'       CEDULA_FISICA,',
'       ID_TIPO_CONTRIBUYENTE,',
'       CODIGO_IATA,',
'       FECHA_INICIO_OPERA,',
'       DIRECCION_ENTIDAD,',
'       ID_PROVINCIA_ENTIDAD,',
'       ID_CANTON_ENTIDAD,',
'       ID_DISTRITO_ENTIDAD,',
'       DIRECCION_NOTIFICA,',
'       ID_PROVINCIA_NOTIFICA,',
'       ID_CANTON_NOTIFICA,',
'       ID_DISTRITO_NOTIFICA,',
'       CEDULA_GERENTE,',
'       NOMBRE_GERENTE,',
'       CORREO_GERENTE,',
'       NOMBRE_REPRE_LEGAL,',
'       CEDULA_REPRE_LEGAL,',
'       CORREO_REPRE_LEGAL,',
'       CODIGO_ESTADO,',
'       FECHA_INSCRIPCION,',
'       OBSERVA_EMPRESA,',
'       OBSERVA_ADM_TRIBUTA,',
'       FECHA_SUSCRITO,',
'       LUGAR_SUSCRITO,',
'       USUARIO_INTERNO,',
'       ID_CHARTER,',
'       ID_REQUISITOS_INS,',
'       ID_MODALIDAD,',
'       NOM_ASISTENTE_CHARTER,',
'       CEDULA_ASISTENTE_CHARTER,',
'       CORREO_ASISTENTE_CHARTER',
'  from SOLICITUD_INSCRIPCION',
'  where CODIGO_ESTADO = ''P''',
'  and   ID_TIPO_CONTRIBUYENTE IN (SELECT ID_TIPO_CONTRIBUYENTE FROM TIPO_CONTRIBUYENTE WHERE IND_TIPO_INSCRIP IN (''IVC'')) '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Reporte Inscripci\00F3n Vuelos Charter')
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
 p_id=>wwv_flow_api.id(177030578399407875)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:RP:P206_ID_NUM_INSCRIPCION:\#ID_NUM_INSCRIPCION#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>27909799909993833
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177030638387407867)
,p_db_column_name=>'ID_NUM_INSCRIPCION'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('Id Inscripci\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177037463679407855)
,p_db_column_name=>'ID_CHARTER'
,p_display_order=>11
,p_column_identifier=>'R'
,p_column_label=>unistr('Tipo Ch\00E1rter')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177031017037407860)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>'Nombre Entidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177031455126407860)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION'
,p_display_order=>31
,p_column_identifier=>'C'
,p_column_label=>unistr('Tipo Identificaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(160819142014193368)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177031797925407860)
,p_db_column_name=>'RAZON_SOCIAL'
,p_display_order=>41
,p_column_identifier=>'D'
,p_column_label=>unistr('Raz\00F3n Social')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177032266721407859)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>51
,p_column_identifier=>'E'
,p_column_label=>unistr('Cedula Jur\00EDdica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177032670456407859)
,p_db_column_name=>'CEDULA_FISICA'
,p_display_order=>61
,p_column_identifier=>'F'
,p_column_label=>unistr('Cedula F\00EDsica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177033014169407859)
,p_db_column_name=>'ID_TIPO_CONTRIBUYENTE'
,p_display_order=>71
,p_column_identifier=>'G'
,p_column_label=>'Tipo Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(177784848207908884)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177033415788407858)
,p_db_column_name=>'FECHA_INICIO_OPERA'
,p_display_order=>81
,p_column_identifier=>'H'
,p_column_label=>'Fecha Inicio Operaciones'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177035043890407857)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>121
,p_column_identifier=>'L'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177035382596407857)
,p_db_column_name=>'FECHA_INSCRIPCION'
,p_display_order=>131
,p_column_identifier=>'M'
,p_column_label=>unistr('Fecha Inscripci\00F3n')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176511038564044975)
,p_db_column_name=>'PERSONA_FISICA'
,p_display_order=>141
,p_column_identifier=>'S'
,p_column_label=>'Persona Fisica'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176511097190044976)
,p_db_column_name=>'CODIGO_IATA'
,p_display_order=>151
,p_column_identifier=>'T'
,p_column_label=>'Codigo Iata'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176511296439044978)
,p_db_column_name=>'DIRECCION_ENTIDAD'
,p_display_order=>171
,p_column_identifier=>'V'
,p_column_label=>'Direccion Entidad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176511448461044979)
,p_db_column_name=>'ID_PROVINCIA_ENTIDAD'
,p_display_order=>181
,p_column_identifier=>'W'
,p_column_label=>'Id Provincia Entidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176511526781044980)
,p_db_column_name=>'ID_CANTON_ENTIDAD'
,p_display_order=>191
,p_column_identifier=>'X'
,p_column_label=>'Id Canton Entidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176511606615044981)
,p_db_column_name=>'ID_DISTRITO_ENTIDAD'
,p_display_order=>201
,p_column_identifier=>'Y'
,p_column_label=>'Id Distrito Entidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176511734293044982)
,p_db_column_name=>'DIRECCION_NOTIFICA'
,p_display_order=>211
,p_column_identifier=>'Z'
,p_column_label=>'Direccion Notifica'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176511785521044983)
,p_db_column_name=>'ID_PROVINCIA_NOTIFICA'
,p_display_order=>221
,p_column_identifier=>'AA'
,p_column_label=>'Id Provincia Notifica'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176511963511044984)
,p_db_column_name=>'ID_CANTON_NOTIFICA'
,p_display_order=>231
,p_column_identifier=>'AB'
,p_column_label=>'Id Canton Notifica'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176512018381044985)
,p_db_column_name=>'ID_DISTRITO_NOTIFICA'
,p_display_order=>241
,p_column_identifier=>'AC'
,p_column_label=>'Id Distrito Notifica'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176512112156044986)
,p_db_column_name=>'CEDULA_GERENTE'
,p_display_order=>251
,p_column_identifier=>'AD'
,p_column_label=>'Cedula Gerente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176512247278044987)
,p_db_column_name=>'NOMBRE_GERENTE'
,p_display_order=>261
,p_column_identifier=>'AE'
,p_column_label=>'Nombre Gerente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176512297213044988)
,p_db_column_name=>'CORREO_GERENTE'
,p_display_order=>271
,p_column_identifier=>'AF'
,p_column_label=>'Correo Gerente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176512472335044989)
,p_db_column_name=>'NOMBRE_REPRE_LEGAL'
,p_display_order=>281
,p_column_identifier=>'AG'
,p_column_label=>'Nombre Repre Legal'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176512484655044990)
,p_db_column_name=>'CEDULA_REPRE_LEGAL'
,p_display_order=>291
,p_column_identifier=>'AH'
,p_column_label=>'Cedula Repre Legal'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176512619258044991)
,p_db_column_name=>'CORREO_REPRE_LEGAL'
,p_display_order=>301
,p_column_identifier=>'AI'
,p_column_label=>'Correo Repre Legal'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(176512714520044992)
,p_db_column_name=>'OBSERVA_EMPRESA'
,p_display_order=>311
,p_column_identifier=>'AJ'
,p_column_label=>'Observa Empresa'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177076517296290043)
,p_db_column_name=>'OBSERVA_ADM_TRIBUTA'
,p_display_order=>321
,p_column_identifier=>'AK'
,p_column_label=>'Observa Adm Tributa'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177076630989290044)
,p_db_column_name=>'FECHA_SUSCRITO'
,p_display_order=>331
,p_column_identifier=>'AL'
,p_column_label=>'Fecha Suscrito'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177076758563290045)
,p_db_column_name=>'LUGAR_SUSCRITO'
,p_display_order=>341
,p_column_identifier=>'AM'
,p_column_label=>'Lugar Suscrito'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177076828887290046)
,p_db_column_name=>'USUARIO_INTERNO'
,p_display_order=>351
,p_column_identifier=>'AN'
,p_column_label=>'Usuario Interno'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177076892012290047)
,p_db_column_name=>'ID_REQUISITOS_INS'
,p_display_order=>361
,p_column_identifier=>'AO'
,p_column_label=>'Id Requisitos Ins'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177077022867290048)
,p_db_column_name=>'ID_MODALIDAD'
,p_display_order=>371
,p_column_identifier=>'AP'
,p_column_label=>'Id Modalidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177077113688290049)
,p_db_column_name=>'NOM_ASISTENTE_CHARTER'
,p_display_order=>381
,p_column_identifier=>'AQ'
,p_column_label=>'Nom Asistente Charter'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177077196182290050)
,p_db_column_name=>'CEDULA_ASISTENTE_CHARTER'
,p_display_order=>391
,p_column_identifier=>'AR'
,p_column_label=>'Cedula Asistente Charter'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(177077320118290051)
,p_db_column_name=>'CORREO_ASISTENTE_CHARTER'
,p_display_order=>401
,p_column_identifier=>'AS'
,p_column_label=>'Correo Asistente Charter'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(177040218278407021)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'279195'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_NUM_INSCRIPCION:NOMBRE_ENTIDAD:RAZON_SOCIAL:ID_TIPO_CONTRIBUYENTE:FECHA_INICIO_OPERA:FECHA_INSCRIPCION:CODIGO_ESTADO:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(297094379246926345)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(200010445883780768)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Inscripci\00F3n Vuelos Ch\00E1rter</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(177039861171407851)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(177030081561407876)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.:206'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
