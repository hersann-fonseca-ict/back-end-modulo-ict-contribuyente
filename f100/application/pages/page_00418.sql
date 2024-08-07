prompt --application/pages/page_00418
begin
--   Manifest
--     PAGE: 00418
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
 p_id=>418
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'418-Bitacora Hoteles'
,p_alias=>'418-BITACORA-HOTELES'
,p_step_title=>unistr('Bit\00E1cora Hoteles')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221111131927'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(231483958156269800)
,p_plug_name=>unistr('415-Consulta Bit\00E1cora Hoteles')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CONTRIBUYENTE,',
'       NOMBRE_ENTIDAD,',
'       ID_TIPO_IDENTIFICACION,',
'       CEDULA_JURIDICA,',
'       CEDULA_FISICA,',
'       ID_TIPO_CONTRIBUYENTE,',
'       NOMBRE_GERENTE,',
'       CEDULA_GERENTE,',
'       CORREO_GERENTE,',
'       CODIGO_ESTADO,',
'       FECHA_INSCRIPCION,',
'       CODIGO_FUENTE,',
'       ID_DEUDOR,',
'       FECHA_SUSCRITO,',
'       LUGAR_SUSCRITO,',
'       OTRA_ID,',
'       PROPIETARIO,',
'       CEDULA,',
'       CORREO_PROPIETARIO,',
'       PROPIETARIO_PATENTE,',
'       APARTADO,',
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
'       FECHA_INICIO_OPERA,',
'       DIRECCION_ENTIDAD,',
'       ID_PROVINCIA_ENTIDAD,',
'       ID_CANTON_ENTIDAD,',
'       ID_DISTRITO_ENTIDAD,',
'       CEDULA_RESPONSABLE,',
'       CORREO_RESPONSABLE,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO,',
'       NULL Link_bit_correos,',
'       NULL Link_bit_telefonos,',
'       NULL Link_bit_apoderados,',
'       NULL Link_bit_exp_jud',
'  from BITACORA_MAESTRO_CONTRIBUYENTE',
'  where ID_TIPO_CONTRIBUYENTE IN (1)',
'  ',
'       ',
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
,p_prn_page_header=>unistr('415-Consulta Bit\00E1cora Hoteles')
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
 p_id=>wwv_flow_api.id(231484068048269800)
,p_name=>unistr('415-Consulta Bit\00E1cora Maestro Contribuyente')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>82363289558855758
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190401144320171087)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod. Trib.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190401513862171089)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Entidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190401962454171089)
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
 p_id=>wwv_flow_api.id(190402715684171089)
,p_db_column_name=>'FECHA_INSCRIPCION'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>unistr('Fecha Inscripci\00F3n')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190403482111171090)
,p_db_column_name=>'CODIGO_FUENTE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Codigo Fuente'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190403905374171090)
,p_db_column_name=>'ID_DEUDOR'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Id Deudor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190404343453171090)
,p_db_column_name=>'FECHA_SUSCRITO'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Fecha Suscrito'
,p_column_type=>'DATE'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190404687873171090)
,p_db_column_name=>'LUGAR_SUSCRITO'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Lugar Suscrito'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190402316273171089)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>63
,p_column_identifier=>'Y'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190405512330171091)
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
 p_id=>wwv_flow_api.id(190405926310171091)
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
 p_id=>wwv_flow_api.id(190406376367171092)
,p_db_column_name=>'USUARIO'
,p_display_order=>93
,p_column_identifier=>'CL'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190919098707321676)
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
 p_id=>wwv_flow_api.id(190919268327321677)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>113
,p_column_identifier=>'CN'
,p_column_label=>unistr('Cedula Jur\00EDdica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190919287759321678)
,p_db_column_name=>'CEDULA_FISICA'
,p_display_order=>123
,p_column_identifier=>'CO'
,p_column_label=>unistr('Cedula F\00EDsica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190919418439321679)
,p_db_column_name=>'NOMBRE_GERENTE'
,p_display_order=>133
,p_column_identifier=>'CP'
,p_column_label=>'Nombre Gerente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190920709935321692)
,p_db_column_name=>'CEDULA_GERENTE'
,p_display_order=>143
,p_column_identifier=>'DC'
,p_column_label=>'Cedula Gerente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190962711938047343)
,p_db_column_name=>'CORREO_GERENTE'
,p_display_order=>153
,p_column_identifier=>'DD'
,p_column_label=>'Correo Gerente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190919524882321680)
,p_db_column_name=>'OTRA_ID'
,p_display_order=>163
,p_column_identifier=>'CQ'
,p_column_label=>'Otra Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190919643050321681)
,p_db_column_name=>'PROPIETARIO'
,p_display_order=>173
,p_column_identifier=>'CR'
,p_column_label=>'Propietario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190962850678047344)
,p_db_column_name=>'CEDULA'
,p_display_order=>183
,p_column_identifier=>'DE'
,p_column_label=>'Cedula'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190962898863047345)
,p_db_column_name=>'CORREO_PROPIETARIO'
,p_display_order=>193
,p_column_identifier=>'DF'
,p_column_label=>'Correo Propietario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190963046700047346)
,p_db_column_name=>'PROPIETARIO_PATENTE'
,p_display_order=>203
,p_column_identifier=>'DG'
,p_column_label=>'Propietario Patente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190919711246321682)
,p_db_column_name=>'DOMICILIO_FISCAL'
,p_display_order=>213
,p_column_identifier=>'CS'
,p_column_label=>'Domicilio Fiscal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190919903348321684)
,p_db_column_name=>'SITIO_WEB'
,p_display_order=>233
,p_column_identifier=>'CU'
,p_column_label=>'Sitio Web'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190920056196321685)
,p_db_column_name=>'HABITACIONES'
,p_display_order=>243
,p_column_identifier=>'CV'
,p_column_label=>'Habitaciones'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190920113645321686)
,p_db_column_name=>'FECHA_INGRESO'
,p_display_order=>253
,p_column_identifier=>'CW'
,p_column_label=>'Fecha Ingreso'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190920203524321687)
,p_db_column_name=>'TIPO_PAGO_TARIFA'
,p_display_order=>263
,p_column_identifier=>'CX'
,p_column_label=>'Tipo Pago Tarifa'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190920283240321688)
,p_db_column_name=>'EMPLEO_TEMPORADA_BAJA'
,p_display_order=>273
,p_column_identifier=>'CY'
,p_column_label=>'Empleo Temporada Baja'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190920423050321689)
,p_db_column_name=>'EMPLEO_TEMPORADA_ALTA'
,p_display_order=>283
,p_column_identifier=>'CZ'
,p_column_label=>'Empleo Temporada Alta'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190920569044321690)
,p_db_column_name=>'ID_TIPO_SERVICIO'
,p_display_order=>293
,p_column_identifier=>'DA'
,p_column_label=>'Tipo Servicio'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(185848668178856593)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190920634714321691)
,p_db_column_name=>'NUMERO_ESTRELLAS'
,p_display_order=>303
,p_column_identifier=>'DB'
,p_column_label=>'Numero Estrellas'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190963162210047347)
,p_db_column_name=>'APARTADO'
,p_display_order=>313
,p_column_identifier=>'DH'
,p_column_label=>'Apartado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190963267658047348)
,p_db_column_name=>'FECHA_INICIO_OPERA'
,p_display_order=>323
,p_column_identifier=>'DI'
,p_column_label=>'Inicio Operaciones'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190963324233047349)
,p_db_column_name=>'DIRECCION_ENTIDAD'
,p_display_order=>333
,p_column_identifier=>'DJ'
,p_column_label=>unistr('Direcci\00F3n Entidad')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190963437819047350)
,p_db_column_name=>'ID_PROVINCIA_ENTIDAD'
,p_display_order=>343
,p_column_identifier=>'DK'
,p_column_label=>'Id Provincia Entidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190963554862047351)
,p_db_column_name=>'ID_CANTON_ENTIDAD'
,p_display_order=>353
,p_column_identifier=>'DL'
,p_column_label=>'Id Canton Entidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190963652622047352)
,p_db_column_name=>'ID_DISTRITO_ENTIDAD'
,p_display_order=>363
,p_column_identifier=>'DM'
,p_column_label=>'Id Distrito Entidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190919789901321683)
,p_db_column_name=>'RESPONSABLE_TRIBUTARIO'
,p_display_order=>373
,p_column_identifier=>'CT'
,p_column_label=>'Responsable Tributario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190963731517047353)
,p_db_column_name=>'CEDULA_RESPONSABLE'
,p_display_order=>383
,p_column_identifier=>'DN'
,p_column_label=>'Cedula Responsable'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190963824200047354)
,p_db_column_name=>'CORREO_RESPONSABLE'
,p_display_order=>393
,p_column_identifier=>'DO'
,p_column_label=>'Correo Responsable'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190963950045047355)
,p_db_column_name=>'LINK_BIT_CORREOS'
,p_display_order=>403
,p_column_identifier=>'DP'
,p_column_label=>'Bit Correos'
,p_column_link=>'f?p=&APP_ID.:435:&SESSION.::&DEBUG.::P435_ID_CONTRIB,P435_PAGINA:#ID_CONTRIBUYENTE#,418'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190963991709047356)
,p_db_column_name=>'LINK_BIT_TELEFONOS'
,p_display_order=>413
,p_column_identifier=>'DQ'
,p_column_label=>unistr('Bit Tel\00E9fonos')
,p_column_link=>'f?p=&APP_ID.:436:&SESSION.::&DEBUG.::P436_ID_CONTRIB,P436_PAGINA:#ID_CONTRIBUYENTE#,418'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190964094229047357)
,p_db_column_name=>'LINK_BIT_APODERADOS'
,p_display_order=>423
,p_column_identifier=>'DR'
,p_column_label=>'Bit Apoderados'
,p_column_link=>'f?p=&APP_ID.:437:&SESSION.::&DEBUG.::P437_ID_CONTRIB,P437_PAGINA:#ID_CONTRIBUYENTE#,418'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191103833252479351)
,p_db_column_name=>'LINK_BIT_EXP_JUD'
,p_display_order=>433
,p_column_identifier=>'DS'
,p_column_label=>'Bit Expediente Judicial'
,p_column_link=>'f?p=&APP_ID.:440:&SESSION.::&DEBUG.::P440_ID_CONTRIB,P440_PAGINA:#ID_CONTRIBUYENTE#,418'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(231521089207273346)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'412859'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ID_CONTRIBUYENTE:NOMBRE_ENTIDAD:ID_TIPO_CONTRIBUYENTE:CODIGO_ESTADO:FECHA:ID_TIPO_OPERACION:USUARIO::LINK_BIT_CORREOS:LINK_BIT_TELEFONOS:LINK_BIT_APODERADOS:LINK_BIT_EXP_JUD'
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
 p_id=>wwv_flow_api.id(351913431526699768)
,p_plug_name=>'Bit Hoteles'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Bit\00E1cora Hoteles</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
