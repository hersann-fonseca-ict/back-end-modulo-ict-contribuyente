prompt --application/pages/page_00207
begin
--   Manifest
--     PAGE: 00207
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
 p_id=>207
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'207-Reporte Maestro Contribuyente'
,p_alias=>'207-REPORTE-MAESTRO-CONTRIBUYENTE'
,p_step_title=>'207-Reporte Maestro Contribuyente'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JORGE.ROJAS'
,p_last_upd_yyyymmddhh24miss=>'20240307113450'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(271700718664769793)
,p_plug_name=>'Principal'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(253509588508722308)
,p_plug_name=>'Reporte Maestro Contribuyente'
,p_parent_plug_id=>wwv_flow_api.id(271700718664769793)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct MC.ID_CONTRIBUYENTE,',
'       MC.NOMBRE_ENTIDAD,',
'       MC.ID_TIPO_IDENTIFICACION,',
'       MC.RAZON_SOCIAL,',
'       MC.PERSONA_FISICA,',
'       MC.CEDULA_JURIDICA,',
'       MC.CEDULA_FISICA,',
'       MC.ID_TIPO_CONTRIBUYENTE,',
'       MC.CODIGO_IATA,',
'       MC.FECHA_INICIO_OPERA,',
'       MC.DIRECCION_ENTIDAD,',
'       MC.ID_PROVINCIA_ENTIDAD,',
'       MC.ID_CANTON_ENTIDAD,',
'       MC.ID_DISTRITO_ENTIDAD,',
'       MC.DIRECCION_NOTIFICA,',
'       MC.ID_PROVINCIA_NOTIFICA,',
'       MC.ID_CANTON_NOTIFICA,',
'       MC.ID_DISTRITO_NOTIFICA,',
'       MC.CEDULA_GERENTE,',
'       MC.NOMBRE_GERENTE,',
'       MC.CORREO_GERENTE,',
'       MC.NOMBRE_REPRE_LEGAL,',
'       MC.CEDULA_REPRE_LEGAL,',
'       MC.CORREO_REPRE_LEGAL,',
'       MC.CODIGO_ESTADO,',
'       MC.FECHA_INSCRIPCION,',
'       MC.FECHA_CESE_OPERA,',
'       MC.FECHA_INICIO_VENTAS,',
'       MC.OBSERVA_EMPRESA,',
'       MC.OBSERVA_ADM_TRIBUTA,',
'       MC.ID_MODALIDAD,',
'       MC.CODIGO_FUENTE,',
'       MC.CEDULA,',
'       MC.CODIGO_EMPLEADO,',
'       MC.ID_DEUDOR,',
'       MC.FECHA_SUSCRITO,',
'       MC.LUGAR_SUSCRITO,',
'       MC.ID_TIPO_PUESTO,',
'       MC.ID_CHARTER,',
'       MC.NUM_EXPEDIENTE,',
'       MC.OTRA_ID,',
'       MC.PROPIETARIO,',
'       MC.DOMICILIO_FISCAL,',
'       MC.RESPONSABLE_TRIBUTARIO,',
'       MC.SITIO_WEB,',
'       MC.HABITACIONES,',
'       MC.FECHA_INGRESO,',
'       MC.TIPO_PAGO_TARIFA,',
'       MC.EMPLEO_TEMPORADA_BAJA,',
'       MC.EMPLEO_TEMPORADA_ALTA,',
'       MC.ID_TIPO_SERVICIO,',
'       MC.NUMERO_ESTRELLAS,',
'       MC.ID_NUM_INSCRIPCION,',
'       MC.NOM_ASISTENTE_CHARTER,',
'       MC.CEDULA_ASISTENTE_CHARTER,',
'       MC.CORREO_ASISTENTE_CHARTER,',
'       MC.ID_TIPO_ENTE,',
'       MC.ID_TIPO_LOCAL,',
'       MC.PERSONA_JURIDICA,',
'       MC.FUNCIONARIO_AUTORIZA,',
'       MC.FECHA_EMISION,',
'       MC.NOMBRE_EVENTO,',
'       MC.PERIODO,',
'       MC.MONTO_MONEDA,',
'       MC.MONTO_COLONES,',
'       MC.TIPO_CAMBIO,',
'       MC.OFICIO,',
'       MC.MOTIVO,',
'       MC.NUMERO_CONTRATO,',
'       MC.FECHA_CONTRATO,',
'       MC.FECHA_INICIO_CONTRATO,',
'       MC.FECHA_VENCE_CONTRATO,',
'       MC.FECHA_PAGO,',
'       MC.PORCENTAJE_AJUSTE,',
'       MC.PORCENTAJE_INTERESES,',
'       MC.TARIFA_MENSUAL,',
'       MC.MESES_AJUSTES,',
'       MC.FECHA_RENOVACION_INICIO,',
'       MC.FECHA_RENOVACION_VENCI,',
'       MC.DESCRIPCION,',
'       MC.NOMBRE_PROPIEDAD,',
'       ''LINK''LINK',
'     --  C.CORREO_NOTIFICA',
'  from MAESTRO_CONTRIBUYENTE MC --,CORREO_NOTIFICACIONES C',
'  where MC.ID_TIPO_CONTRIBUYENTE = NVL(:P207_TIPO_CONTRIBUYENTE,MC.ID_TIPO_CONTRIBUYENTE)',
'  and   MC.CODIGO_ESTADO IN (''AC'',''IA'')',
'  and   MC.CODIGO_ESTADO = NVL(:P207_ESTADO, MC.CODIGO_ESTADO)',
'  and   MC.ID_DEUDOR = NVL(:P207_ID_DEUDOR,MC.ID_DEUDOR)',
'  and  MC.ID_TIPO_CONTRIBUYENTE IN (SELECT ID_TIPO_CONTRIBUYENTE FROM TIPO_CONTRIBUYENTE WHERE  IND_TIPO_INSCRIP = :P207_TIPO_INSCRIPCION)',
'--  AND   MC.ID_CONTRIBUYENTE = C.ID_CONTRIBUYENTE',
' -- AND   c.CODIGO_ESTADO = ''AC''',
'  order by MC.ID_CONTRIBUYENTE, MC.ID_TIPO_CONTRIBUYENTE DESC',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P207_TIPO_CONTRIBUYENTE,P207_ESTADO,P207_TIPO_INSCRIPCION,P207_ID_DEUDOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte Maestro Contribuyente'
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
 p_id=>wwv_flow_api.id(253509980486722308)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:PDF'
,p_detail_link=>'f?p=&APP_ID.:208:&SESSION.::&DEBUG.:RP:P208_ID_CONTRIBUYENTE:\#ID_CONTRIBUYENTE#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>253509980486722308
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220814625364402986)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Contribuyente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220815070998402984)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Entidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220815426791402983)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Tipo Identificacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220815872413402982)
,p_db_column_name=>'RAZON_SOCIAL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('Raz\00F3n Social')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220816203093402981)
,p_db_column_name=>'PERSONA_FISICA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Persona Fisica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220816610247402981)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cedula Juridica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220817004250402978)
,p_db_column_name=>'CEDULA_FISICA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Cedula Fisica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220817495038402977)
,p_db_column_name=>'ID_TIPO_CONTRIBUYENTE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Tipo Contribuyente'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220817878184402975)
,p_db_column_name=>'CODIGO_IATA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Codigo Iata'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220818250341402974)
,p_db_column_name=>'FECHA_INICIO_OPERA'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Inicio Operaciones '
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220818623377402973)
,p_db_column_name=>'DIRECCION_ENTIDAD'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Direccion Entidad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220819098755402972)
,p_db_column_name=>'ID_PROVINCIA_ENTIDAD'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Id Provincia Entidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220819439117402971)
,p_db_column_name=>'ID_CANTON_ENTIDAD'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Id Canton Entidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220819836009402970)
,p_db_column_name=>'ID_DISTRITO_ENTIDAD'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Id Distrito Entidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220820202942402969)
,p_db_column_name=>'DIRECCION_NOTIFICA'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Direccion Notifica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220820644508402968)
,p_db_column_name=>'ID_PROVINCIA_NOTIFICA'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Id Provincia Notifica'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220821050885402967)
,p_db_column_name=>'ID_CANTON_NOTIFICA'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Id Canton Notifica'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220821434272402966)
,p_db_column_name=>'ID_DISTRITO_NOTIFICA'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Id Distrito Notifica'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220821804999402965)
,p_db_column_name=>'CEDULA_GERENTE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Cedula Gerente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220822221897402964)
,p_db_column_name=>'NOMBRE_GERENTE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Nombre Gerente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220822602554402963)
,p_db_column_name=>'CORREO_GERENTE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Correo Gerente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220823009205402962)
,p_db_column_name=>'NOMBRE_REPRE_LEGAL'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Nombre Repre Legal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220823444456402961)
,p_db_column_name=>'CEDULA_REPRE_LEGAL'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Cedula Repre Legal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220823899815402959)
,p_db_column_name=>'CORREO_REPRE_LEGAL'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Correo Repre Legal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220824263478402958)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220824642707402957)
,p_db_column_name=>'FECHA_INSCRIPCION'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>unistr('Fecha Inscripci\00F3n')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220825014711402957)
,p_db_column_name=>'FECHA_CESE_OPERA'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Fecha Cese Opera'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220825445689402955)
,p_db_column_name=>'FECHA_INICIO_VENTAS'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Fecha Inicio Ventas'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220825898864402952)
,p_db_column_name=>'OBSERVA_EMPRESA'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Observa Empresa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220826254542402951)
,p_db_column_name=>'OBSERVA_ADM_TRIBUTA'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Observa Adm Tributa'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220826683646402950)
,p_db_column_name=>'ID_MODALIDAD'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Modalidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220827039018402950)
,p_db_column_name=>'CODIGO_FUENTE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Codigo Fuente'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220827490565402949)
,p_db_column_name=>'CEDULA'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Cedula'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220827801457402948)
,p_db_column_name=>'CODIGO_EMPLEADO'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Codigo Empleado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220828261633402947)
,p_db_column_name=>'ID_DEUDOR'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>unistr('C\00F3digo Tributario')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220828631782402946)
,p_db_column_name=>'FECHA_SUSCRITO'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Fecha Suscrito'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220829046862402945)
,p_db_column_name=>'LUGAR_SUSCRITO'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Lugar Suscrito'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220829404611402944)
,p_db_column_name=>'ID_TIPO_PUESTO'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Id Tipo Puesto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220829801217402943)
,p_db_column_name=>'ID_CHARTER'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Id Charter'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220830249845402942)
,p_db_column_name=>'NUM_EXPEDIENTE'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Num Expediente'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220830686137402941)
,p_db_column_name=>'OTRA_ID'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Otra Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220831081817402940)
,p_db_column_name=>'PROPIETARIO'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Propietario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220831334224402939)
,p_db_column_name=>'DOMICILIO_FISCAL'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Domicilio Fiscal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220831775702402938)
,p_db_column_name=>'RESPONSABLE_TRIBUTARIO'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Responsable Tributario'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220832117006402937)
,p_db_column_name=>'SITIO_WEB'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Sitio Web'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220832524510402930)
,p_db_column_name=>'HABITACIONES'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Habitaciones'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220832985422402929)
,p_db_column_name=>'FECHA_INGRESO'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Fecha Ingreso'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220833314686402928)
,p_db_column_name=>'TIPO_PAGO_TARIFA'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Tipo Pago Tarifa'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220833706939402928)
,p_db_column_name=>'EMPLEO_TEMPORADA_BAJA'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Empleo Temporada Baja'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220834176076402927)
,p_db_column_name=>'EMPLEO_TEMPORADA_ALTA'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Empleo Temporada Alta'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220834503935402926)
,p_db_column_name=>'ID_TIPO_SERVICIO'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Id Tipo Servicio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220834966444402925)
,p_db_column_name=>'NUMERO_ESTRELLAS'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Numero Estrellas'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220835319311402922)
,p_db_column_name=>'ID_NUM_INSCRIPCION'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Id Num Inscripcion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220835727575402921)
,p_db_column_name=>'NOM_ASISTENTE_CHARTER'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Nom Asistente Charter'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220836101680402920)
,p_db_column_name=>'CEDULA_ASISTENTE_CHARTER'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Cedula Asistente Charter'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220836512655402917)
,p_db_column_name=>'CORREO_ASISTENTE_CHARTER'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Correo Asistente Charter'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220836905044402915)
,p_db_column_name=>'ID_TIPO_ENTE'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Id Tipo Ente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220837335221402914)
,p_db_column_name=>'ID_TIPO_LOCAL'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Id Tipo Local'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220837761411402913)
,p_db_column_name=>'PERSONA_JURIDICA'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Persona Juridica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220838157360402912)
,p_db_column_name=>'FUNCIONARIO_AUTORIZA'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Funcionario Autoriza'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220838579571402912)
,p_db_column_name=>'FECHA_EMISION'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Fecha Emision'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220838963491402911)
,p_db_column_name=>'NOMBRE_EVENTO'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Nombre Evento'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220839306475402911)
,p_db_column_name=>'PERIODO'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Periodo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220839746128402909)
,p_db_column_name=>'MONTO_MONEDA'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Monto Moneda'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220840136664402909)
,p_db_column_name=>'MONTO_COLONES'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Monto Colones'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220840507792402908)
,p_db_column_name=>'TIPO_CAMBIO'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Tipo Cambio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220840985810402907)
,p_db_column_name=>'OFICIO'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Oficio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220841343410402906)
,p_db_column_name=>'MOTIVO'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Motivo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220841744697402905)
,p_db_column_name=>'NUMERO_CONTRATO'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Numero Contrato'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220842138692402904)
,p_db_column_name=>'FECHA_CONTRATO'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Fecha Contrato'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220842593970402904)
,p_db_column_name=>'FECHA_INICIO_CONTRATO'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Fecha Inicio Contrato'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220842925880402903)
,p_db_column_name=>'FECHA_VENCE_CONTRATO'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Fecha Vence Contrato'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220843344747402902)
,p_db_column_name=>'FECHA_PAGO'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Fecha Pago'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220843735680402901)
,p_db_column_name=>'PORCENTAJE_AJUSTE'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Porcentaje Ajuste'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220844117067402900)
,p_db_column_name=>'PORCENTAJE_INTERESES'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Porcentaje Intereses'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220844540458402899)
,p_db_column_name=>'TARIFA_MENSUAL'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Tarifa Mensual'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220844916663402898)
,p_db_column_name=>'MESES_AJUSTES'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Meses Ajustes'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220845383071402897)
,p_db_column_name=>'FECHA_RENOVACION_INICIO'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Fecha Renovacion Inicio'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220845744226402896)
,p_db_column_name=>'FECHA_RENOVACION_VENCI'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Fecha Renovacion Venci'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220846179879402894)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220846501102402893)
,p_db_column_name=>'NOMBRE_PROPIEDAD'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Nombre Propiedad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220814296024402988)
,p_db_column_name=>'LINK'
,p_display_order=>92
,p_column_identifier=>'CE'
,p_column_label=>'Link'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(253543765740723729)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2208469'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CONTRIBUYENTE:CODIGO_FUENTE:ID_DEUDOR:NOMBRE_ENTIDAD:ID_TIPO_CONTRIBUYENTE:FECHA_INICIO_OPERA:CODIGO_ESTADO:FECHA_INSCRIPCION'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(255687546856743813)
,p_plug_name=>unistr('Actualizaci\00F3n Contribuyentes')
,p_parent_plug_id=>wwv_flow_api.id(271700718664769793)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(422780088492417207)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(271700718664769793)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Actualizaci\00F3n Contribuyentes</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(220847340487402882)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(253509588508722308)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:208:&SESSION.::&DEBUG.:208'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(220812040673403008)
,p_name=>'P207_TIPO_CONTRIBUYENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(255687546856743813)
,p_prompt=>'Tipo Contribuyente:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION,ID_TIPO_CONTRIBUYENTE',
'FROM TIPO_CONTRIBUYENTE',
'WHERE CODIGO_ESTADO = ''AC''',
'AND   IND_TIPO_INSCRIP = :P207_TIPO_INSCRIPCION'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(220812402617403005)
,p_name=>'P207_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(255687546856743813)
,p_prompt=>'Estado:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(220812882972403004)
,p_name=>'P207_TIPO_INSCRIPCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(255687546856743813)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(220813229753403004)
,p_name=>'P207_ID_DEUDOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(255687546856743813)
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
wwv_flow_api.component_end;
end;
/
