prompt --application/pages/page_00209
begin
--   Manifest
--     PAGE: 00209
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
 p_id=>209
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'209-Reporte Inscripcion Ferias Internacionales'
,p_alias=>'209-REPORTE-INSCRIPCION-FERIAS-INTERNACIONALES'
,p_step_title=>'Ferias Internacionales'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220714142633'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(182571622927510464)
,p_plug_name=>unistr('Reporte Inscripci\00F3n Ferias Internacionales')
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
'       FECHA_CESE_OPERA,',
'       FECHA_INICIO_VENTAS,',
'       OBSERVA_EMPRESA,',
'       OBSERVA_ADM_TRIBUTA,',
'       ID_MODALIDAD,',
'       CODIGO_FUENTE,',
'       CEDULA,',
'       CODIGO_EMPLEADO,',
'       ID_DEUDOR,',
'       FECHA_SUSCRITO,',
'       LUGAR_SUSCRITO,',
'       ID_TIPO_PUESTO,',
'       ID_CHARTER,',
'       NUM_EXPEDIENTE,',
'       OTRA_ID,',
'       PROPIETARIO,',
'       DOMICILIO_FISCAL,',
'       RESPONSABLE_TRIBUTARIO,',
'       SITIO_WEB,',
'       HABITACIONES,',
'       FECHA_INGRESO,',
'       TIPO_PAGO_TARIFA,',
'       EMPLEO_TEMPORADA_BAJA,',
'       EMPLEO_TEMPORADA_ALTA,',
'       ID_TIPO_SERVICIO,',
'       NUMERO_ESTRELLAS,',
'       ID_NUM_INSCRIPCION,',
'       NOM_ASISTENTE_CHARTER,',
'       CEDULA_ASISTENTE_CHARTER,',
'       CORREO_ASISTENTE_CHARTER,',
'       ID_TIPO_ENTE,',
'       ID_TIPO_LOCAL,',
'       PERSONA_JURIDICA,',
'       FUNCIONARIO_AUTORIZA,',
'       FECHA_EMISION,',
'       NOMBRE_EVENTO,',
'       PERIODO,',
'       MONTO_MONEDA,',
'       MONTO_COLONES,',
'       TIPO_CAMBIO,',
'       OFICIO,',
'       MOTIVO,',
'       NUMERO_CONTRATO,',
'       FECHA_CONTRATO,',
'       FECHA_INICIO_CONTRATO,',
'       FECHA_VENCE_CONTRATO,',
'       FECHA_PAGO,',
'       PORCENTAJE_AJUSTE,',
'       PORCENTAJE_INTERESES,',
'       TARIFA_MENSUAL,',
'       MESES_AJUSTES,',
'       FECHA_RENOVACION_INICIO,',
'       FECHA_RENOVACION_VENCI,',
'       DESCRIPCION,',
'       NOMBRE_PROPIEDAD',
'  from MAESTRO_CONTRIBUYENTE',
'  where ID_TIPO_CONTRIBUYENTE = 9',
'  ORDER BY ID_CONTRIBUYENTE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Reporte Inscripci\00F3n Ferias Internacionales')
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
 p_id=>wwv_flow_api.id(182572006502510464)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:RP:P210_ID_CONTRIBUYENTE:\#ID_CONTRIBUYENTE#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>33451228013096422
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182586272001530644)
,p_db_column_name=>'CODIGO_FUENTE'
,p_display_order=>11
,p_column_identifier=>'AN'
,p_column_label=>'Codigo Fuente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182586548269530647)
,p_db_column_name=>'ID_DEUDOR'
,p_display_order=>21
,p_column_identifier=>'AQ'
,p_column_label=>unistr('C\00F3digo Tributario')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182572171781510471)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>31
,p_column_identifier=>'A'
,p_column_label=>'Id Contribuyente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182572534419510473)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>41
,p_column_identifier=>'B'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182572908899510473)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION'
,p_display_order=>51
,p_column_identifier=>'C'
,p_column_label=>'Id Tipo Identificacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182573331550510474)
,p_db_column_name=>'PERSONA_FISICA'
,p_display_order=>61
,p_column_identifier=>'D'
,p_column_label=>'Persona Fisica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182573754278510474)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>71
,p_column_identifier=>'E'
,p_column_label=>'Cedula Juridica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182574172875510474)
,p_db_column_name=>'CEDULA_FISICA'
,p_display_order=>81
,p_column_identifier=>'F'
,p_column_label=>'Cedula Fisica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182574568646510474)
,p_db_column_name=>'DIRECCION_ENTIDAD'
,p_display_order=>91
,p_column_identifier=>'G'
,p_column_label=>'Direccion Entidad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182574905412510474)
,p_db_column_name=>'ID_PROVINCIA_ENTIDAD'
,p_display_order=>101
,p_column_identifier=>'H'
,p_column_label=>'Id Provincia Entidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182575341625510474)
,p_db_column_name=>'ID_CANTON_ENTIDAD'
,p_display_order=>111
,p_column_identifier=>'I'
,p_column_label=>'Id Canton Entidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182575736338510475)
,p_db_column_name=>'ID_DISTRITO_ENTIDAD'
,p_display_order=>121
,p_column_identifier=>'J'
,p_column_label=>'Id Distrito Entidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182576081568510475)
,p_db_column_name=>'OBSERVA_EMPRESA'
,p_display_order=>131
,p_column_identifier=>'K'
,p_column_label=>'Observa Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182576563927510475)
,p_db_column_name=>'PERSONA_JURIDICA'
,p_display_order=>141
,p_column_identifier=>'L'
,p_column_label=>'Persona Juridica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182576921479510476)
,p_db_column_name=>'FUNCIONARIO_AUTORIZA'
,p_display_order=>151
,p_column_identifier=>'M'
,p_column_label=>'Funcionario Autoriza'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182577282991510476)
,p_db_column_name=>'FECHA_EMISION'
,p_display_order=>161
,p_column_identifier=>'N'
,p_column_label=>'Fecha Emision'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182577708276510476)
,p_db_column_name=>'NOMBRE_EVENTO'
,p_display_order=>171
,p_column_identifier=>'O'
,p_column_label=>'Nombre Evento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182578172490510476)
,p_db_column_name=>'PERIODO'
,p_display_order=>181
,p_column_identifier=>'P'
,p_column_label=>'Periodo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182578576171510476)
,p_db_column_name=>'MONTO_MONEDA'
,p_display_order=>191
,p_column_identifier=>'Q'
,p_column_label=>'Monto Moneda'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182578883001510477)
,p_db_column_name=>'MONTO_COLONES'
,p_display_order=>201
,p_column_identifier=>'R'
,p_column_label=>'Monto Colones'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182584146517519473)
,p_db_column_name=>'RAZON_SOCIAL'
,p_display_order=>211
,p_column_identifier=>'S'
,p_column_label=>'Razon Social'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182584261123519474)
,p_db_column_name=>'ID_TIPO_CONTRIBUYENTE'
,p_display_order=>221
,p_column_identifier=>'T'
,p_column_label=>'Tipo Registro'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(181879233338093932)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182584301775519475)
,p_db_column_name=>'CODIGO_IATA'
,p_display_order=>231
,p_column_identifier=>'U'
,p_column_label=>'Codigo Iata'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182584491944519477)
,p_db_column_name=>'FECHA_INICIO_OPERA'
,p_display_order=>241
,p_column_identifier=>'W'
,p_column_label=>'Fecha Inicio Opera'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182584647735519478)
,p_db_column_name=>'DIRECCION_NOTIFICA'
,p_display_order=>251
,p_column_identifier=>'X'
,p_column_label=>'Direccion Notifica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182584763848519479)
,p_db_column_name=>'ID_PROVINCIA_NOTIFICA'
,p_display_order=>261
,p_column_identifier=>'Y'
,p_column_label=>'Id Provincia Notifica'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182584796581519480)
,p_db_column_name=>'ID_CANTON_NOTIFICA'
,p_display_order=>271
,p_column_identifier=>'Z'
,p_column_label=>'Id Canton Notifica'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182584905776519481)
,p_db_column_name=>'ID_DISTRITO_NOTIFICA'
,p_display_order=>281
,p_column_identifier=>'AA'
,p_column_label=>'Id Distrito Notifica'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182585020744519482)
,p_db_column_name=>'CEDULA_GERENTE'
,p_display_order=>291
,p_column_identifier=>'AB'
,p_column_label=>'Cedula Gerente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182585129635519483)
,p_db_column_name=>'NOMBRE_GERENTE'
,p_display_order=>301
,p_column_identifier=>'AC'
,p_column_label=>'Nombre Gerente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182585246442519484)
,p_db_column_name=>'CORREO_GERENTE'
,p_display_order=>311
,p_column_identifier=>'AD'
,p_column_label=>'Correo Gerente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182585357821519485)
,p_db_column_name=>'NOMBRE_REPRE_LEGAL'
,p_display_order=>321
,p_column_identifier=>'AE'
,p_column_label=>'Nombre Repre Legal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182585395139519486)
,p_db_column_name=>'CEDULA_REPRE_LEGAL'
,p_display_order=>331
,p_column_identifier=>'AF'
,p_column_label=>'Cedula Repre Legal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182585482484519487)
,p_db_column_name=>'CORREO_REPRE_LEGAL'
,p_display_order=>341
,p_column_identifier=>'AG'
,p_column_label=>'Correo Repre Legal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182585581564519488)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>351
,p_column_identifier=>'AH'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182585734986519489)
,p_db_column_name=>'FECHA_INSCRIPCION'
,p_display_order=>361
,p_column_identifier=>'AI'
,p_column_label=>'Fecha Inscripcion'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182585827125519490)
,p_db_column_name=>'FECHA_CESE_OPERA'
,p_display_order=>371
,p_column_identifier=>'AJ'
,p_column_label=>'Fecha Cese Opera'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182585951284519491)
,p_db_column_name=>'FECHA_INICIO_VENTAS'
,p_display_order=>381
,p_column_identifier=>'AK'
,p_column_label=>'Fecha Inicio Ventas'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182585985640519492)
,p_db_column_name=>'OBSERVA_ADM_TRIBUTA'
,p_display_order=>391
,p_column_identifier=>'AL'
,p_column_label=>'Observa Adm Tributa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182586161918530643)
,p_db_column_name=>'ID_MODALIDAD'
,p_display_order=>401
,p_column_identifier=>'AM'
,p_column_label=>'Id Modalidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182586347559530645)
,p_db_column_name=>'CEDULA'
,p_display_order=>411
,p_column_identifier=>'AO'
,p_column_label=>'Cedula'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182586384921530646)
,p_db_column_name=>'CODIGO_EMPLEADO'
,p_display_order=>421
,p_column_identifier=>'AP'
,p_column_label=>'Codigo Empleado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182586674594530648)
,p_db_column_name=>'FECHA_SUSCRITO'
,p_display_order=>431
,p_column_identifier=>'AR'
,p_column_label=>'Fecha Suscrito'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182586757549530649)
,p_db_column_name=>'LUGAR_SUSCRITO'
,p_display_order=>441
,p_column_identifier=>'AS'
,p_column_label=>'Lugar Suscrito'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182586810474530650)
,p_db_column_name=>'ID_TIPO_PUESTO'
,p_display_order=>451
,p_column_identifier=>'AT'
,p_column_label=>'Id Tipo Puesto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182586900888530651)
,p_db_column_name=>'ID_CHARTER'
,p_display_order=>461
,p_column_identifier=>'AU'
,p_column_label=>'Id Charter'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182587000465530652)
,p_db_column_name=>'NUM_EXPEDIENTE'
,p_display_order=>471
,p_column_identifier=>'AV'
,p_column_label=>'Num Expediente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182587145287530653)
,p_db_column_name=>'OTRA_ID'
,p_display_order=>481
,p_column_identifier=>'AW'
,p_column_label=>'Otra Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182587240338530654)
,p_db_column_name=>'PROPIETARIO'
,p_display_order=>491
,p_column_identifier=>'AX'
,p_column_label=>'Propietario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182587336485530655)
,p_db_column_name=>'DOMICILIO_FISCAL'
,p_display_order=>501
,p_column_identifier=>'AY'
,p_column_label=>'Domicilio Fiscal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182587475172530656)
,p_db_column_name=>'RESPONSABLE_TRIBUTARIO'
,p_display_order=>511
,p_column_identifier=>'AZ'
,p_column_label=>'Responsable Tributario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182587511466530657)
,p_db_column_name=>'SITIO_WEB'
,p_display_order=>521
,p_column_identifier=>'BA'
,p_column_label=>'Sitio Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182587657610530658)
,p_db_column_name=>'HABITACIONES'
,p_display_order=>531
,p_column_identifier=>'BB'
,p_column_label=>'Habitaciones'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182587702476530659)
,p_db_column_name=>'FECHA_INGRESO'
,p_display_order=>541
,p_column_identifier=>'BC'
,p_column_label=>'Fecha Ingreso'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182587866448530660)
,p_db_column_name=>'TIPO_PAGO_TARIFA'
,p_display_order=>551
,p_column_identifier=>'BD'
,p_column_label=>'Tipo Pago Tarifa'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182587913802530661)
,p_db_column_name=>'EMPLEO_TEMPORADA_BAJA'
,p_display_order=>561
,p_column_identifier=>'BE'
,p_column_label=>'Empleo Temporada Baja'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182587993436530662)
,p_db_column_name=>'EMPLEO_TEMPORADA_ALTA'
,p_display_order=>571
,p_column_identifier=>'BF'
,p_column_label=>'Empleo Temporada Alta'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182588115832530663)
,p_db_column_name=>'ID_TIPO_SERVICIO'
,p_display_order=>581
,p_column_identifier=>'BG'
,p_column_label=>'Id Tipo Servicio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182588253178530664)
,p_db_column_name=>'NUMERO_ESTRELLAS'
,p_display_order=>591
,p_column_identifier=>'BH'
,p_column_label=>'Numero Estrellas'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182588323315530665)
,p_db_column_name=>'ID_NUM_INSCRIPCION'
,p_display_order=>601
,p_column_identifier=>'BI'
,p_column_label=>'Id Num Inscripcion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182588408584530666)
,p_db_column_name=>'NOM_ASISTENTE_CHARTER'
,p_display_order=>611
,p_column_identifier=>'BJ'
,p_column_label=>'Nom Asistente Charter'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182588503533530667)
,p_db_column_name=>'CEDULA_ASISTENTE_CHARTER'
,p_display_order=>621
,p_column_identifier=>'BK'
,p_column_label=>'Cedula Asistente Charter'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182588660097530668)
,p_db_column_name=>'CORREO_ASISTENTE_CHARTER'
,p_display_order=>631
,p_column_identifier=>'BL'
,p_column_label=>'Correo Asistente Charter'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182588744829530669)
,p_db_column_name=>'ID_TIPO_ENTE'
,p_display_order=>641
,p_column_identifier=>'BM'
,p_column_label=>'Id Tipo Ente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182588831424530670)
,p_db_column_name=>'ID_TIPO_LOCAL'
,p_display_order=>651
,p_column_identifier=>'BN'
,p_column_label=>'Id Tipo Local'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182588906454530671)
,p_db_column_name=>'TIPO_CAMBIO'
,p_display_order=>661
,p_column_identifier=>'BO'
,p_column_label=>'Tipo Cambio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182589012679530672)
,p_db_column_name=>'OFICIO'
,p_display_order=>671
,p_column_identifier=>'BP'
,p_column_label=>'Oficio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182589171412530673)
,p_db_column_name=>'MOTIVO'
,p_display_order=>681
,p_column_identifier=>'BQ'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182589248682530674)
,p_db_column_name=>'NUMERO_CONTRATO'
,p_display_order=>691
,p_column_identifier=>'BR'
,p_column_label=>'Numero Contrato'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182589317923530675)
,p_db_column_name=>'FECHA_CONTRATO'
,p_display_order=>701
,p_column_identifier=>'BS'
,p_column_label=>'Fecha Contrato'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182589388168530676)
,p_db_column_name=>'FECHA_INICIO_CONTRATO'
,p_display_order=>711
,p_column_identifier=>'BT'
,p_column_label=>'Fecha Inicio Contrato'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182589534515530677)
,p_db_column_name=>'FECHA_VENCE_CONTRATO'
,p_display_order=>721
,p_column_identifier=>'BU'
,p_column_label=>'Fecha Vence Contrato'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182589589955530678)
,p_db_column_name=>'FECHA_PAGO'
,p_display_order=>731
,p_column_identifier=>'BV'
,p_column_label=>'Fecha Pago'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182589738652530679)
,p_db_column_name=>'PORCENTAJE_AJUSTE'
,p_display_order=>741
,p_column_identifier=>'BW'
,p_column_label=>'Porcentaje Ajuste'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182589810916530680)
,p_db_column_name=>'PORCENTAJE_INTERESES'
,p_display_order=>751
,p_column_identifier=>'BX'
,p_column_label=>'Porcentaje Intereses'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182589935156530681)
,p_db_column_name=>'TARIFA_MENSUAL'
,p_display_order=>761
,p_column_identifier=>'BY'
,p_column_label=>'Tarifa Mensual'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182590074396530682)
,p_db_column_name=>'MESES_AJUSTES'
,p_display_order=>771
,p_column_identifier=>'BZ'
,p_column_label=>'Meses Ajustes'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182590163024530683)
,p_db_column_name=>'FECHA_RENOVACION_INICIO'
,p_display_order=>781
,p_column_identifier=>'CA'
,p_column_label=>'Fecha Renovacion Inicio'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182590246598530684)
,p_db_column_name=>'FECHA_RENOVACION_VENCI'
,p_display_order=>791
,p_column_identifier=>'CB'
,p_column_label=>'Fecha Renovacion Venci'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182590336483530685)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>801
,p_column_identifier=>'CC'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182590468918530686)
,p_db_column_name=>'NOMBRE_PROPIEDAD'
,p_display_order=>811
,p_column_identifier=>'CD'
,p_column_label=>'Nombre Propiedad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(182580538744511597)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'334598'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CONTRIBUYENTE:CODIGO_FUENTE:ID_DEUDOR:NOMBRE_ENTIDAD:ID_TIPO_CONTRIBUYENTE:CODIGO_ESTADO:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187045920819456588)
,p_plug_name=>'Ferias Internacionales'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Ferias Internacionales</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(182580079949510489)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(182571622927510464)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:210'
);
wwv_flow_api.component_end;
end;
/
