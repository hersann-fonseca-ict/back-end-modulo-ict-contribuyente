prompt --application/pages/page_00415
begin
--   Manifest
--     PAGE: 00415
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
 p_id=>415
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('415-Consulta Bit\00E1cora Maestro Contribuyente')
,p_alias=>unistr('415-CONSULTA-BIT\00C1CORA-MAESTRO-CONTRIBUYENTE')
,p_step_title=>unistr('Bit\00E1cora Maestro Contribuyente')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221111095304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(232290859754347767)
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
 p_id=>wwv_flow_api.id(190204932405512780)
,p_plug_name=>unistr('415-Consulta Bit\00E1cora Maestro Contribuyente')
,p_parent_plug_id=>wwv_flow_api.id(232290859754347767)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>40
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
'       --NOMBRE_REPRE_LEGAL,',
'       --CEDULA_REPRE_LEGAL,',
'       --CORREO_REPRE_LEGAL,',
'       CODIGO_ESTADO,',
'       FECHA_INSCRIPCION,',
'       OBSERVA_EMPRESA,',
'       OBSERVA_ADM_TRIBUTA,',
'       --FECHA_SUSCRITO,',
'       --LUGAR_SUSCRITO,',
'       --USUARIO_INTERNO,',
'       ID_MODALIDAD,',
'       CODIGO_FUENTE,',
'       ID_DEUDOR,',
'       ID_NUM_INSCRIPCION,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO,',
'       NULL Link_bit_impuestos,',
'       NULL Link_bit_correos,',
'       NULL Link_bit_telefonos,',
'       NULL Link_bit_apoderados,',
'       NULL Link_bit_repre_legal,',
'       NULL LINK_bit_ventas',
'  from BITACORA_MAESTRO_CONTRIBUYENTE',
'  where ID_DEUDOR = NVL(:P415_COD_TRIB,ID_DEUDOR)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P415_COD_TRIB'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>unistr('415-Consulta Bit\00E1cora Maestro Contribuyente')
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(190205042297512780)
,p_name=>unistr('415-Consulta Bit\00E1cora Maestro Contribuyente')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>41084263808098738
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190205396741512788)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cod. Trib.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190205877229512790)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Entidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190208182214512791)
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
 p_id=>wwv_flow_api.id(190215349467512794)
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
 p_id=>wwv_flow_api.id(190217336446512795)
,p_db_column_name=>'ID_MODALIDAD'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Modalidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(161286874042251678)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190217684663512795)
,p_db_column_name=>'CODIGO_FUENTE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Codigo Fuente'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190218879074512796)
,p_db_column_name=>'ID_DEUDOR'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Id Deudor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190226135456512800)
,p_db_column_name=>'ID_NUM_INSCRIPCION'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>unistr('N\00BA Inscripci\00F3n')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190214891380512794)
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
 p_id=>wwv_flow_api.id(190240153814512807)
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
 p_id=>wwv_flow_api.id(190240528005512807)
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
 p_id=>wwv_flow_api.id(190240916253512807)
,p_db_column_name=>'USUARIO'
,p_display_order=>93
,p_column_identifier=>'CL'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190682767233719269)
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
 p_id=>wwv_flow_api.id(190682861033719270)
,p_db_column_name=>'RAZON_SOCIAL'
,p_display_order=>113
,p_column_identifier=>'CN'
,p_column_label=>unistr('Raz\00F3n Social')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190682949526719271)
,p_db_column_name=>'PERSONA_FISICA'
,p_display_order=>123
,p_column_identifier=>'CO'
,p_column_label=>unistr('Persona F\00EDsica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190683005306719272)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>133
,p_column_identifier=>'CP'
,p_column_label=>unistr('Cedula Jur\00EDdica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190683084683719273)
,p_db_column_name=>'CEDULA_FISICA'
,p_display_order=>143
,p_column_identifier=>'CQ'
,p_column_label=>unistr('Cedula F\00EDsica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190683265286719274)
,p_db_column_name=>'CODIGO_IATA'
,p_display_order=>153
,p_column_identifier=>'CR'
,p_column_label=>unistr('C\00F3digo IATA')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190683357835719275)
,p_db_column_name=>'FECHA_INICIO_OPERA'
,p_display_order=>163
,p_column_identifier=>'CS'
,p_column_label=>'Inicio Operaciones'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190683403873719276)
,p_db_column_name=>'DIRECCION_ENTIDAD'
,p_display_order=>173
,p_column_identifier=>'CT'
,p_column_label=>'Direccion Entidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190683519592719277)
,p_db_column_name=>'ID_PROVINCIA_ENTIDAD'
,p_display_order=>183
,p_column_identifier=>'CU'
,p_column_label=>'Provincia Entidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190683591346719278)
,p_db_column_name=>'ID_CANTON_ENTIDAD'
,p_display_order=>193
,p_column_identifier=>'CV'
,p_column_label=>unistr('Cant\00F3n Entidad')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190683693978719279)
,p_db_column_name=>'ID_DISTRITO_ENTIDAD'
,p_display_order=>203
,p_column_identifier=>'CW'
,p_column_label=>'Distrito Entidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190683821483719280)
,p_db_column_name=>'DIRECCION_NOTIFICA'
,p_display_order=>213
,p_column_identifier=>'CX'
,p_column_label=>unistr('Direcci\00F3n Notifica')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190683963979719281)
,p_db_column_name=>'ID_PROVINCIA_NOTIFICA'
,p_display_order=>223
,p_column_identifier=>'CY'
,p_column_label=>'Provincia Notifica'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190684073113719282)
,p_db_column_name=>'ID_CANTON_NOTIFICA'
,p_display_order=>233
,p_column_identifier=>'CZ'
,p_column_label=>unistr('Cant\00F3n Notifica')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190684117656719283)
,p_db_column_name=>'ID_DISTRITO_NOTIFICA'
,p_display_order=>243
,p_column_identifier=>'DA'
,p_column_label=>'Distrito Notifica'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190684241587719284)
,p_db_column_name=>'CEDULA_GERENTE'
,p_display_order=>253
,p_column_identifier=>'DB'
,p_column_label=>'Cedula Gerente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190684360282719285)
,p_db_column_name=>'NOMBRE_GERENTE'
,p_display_order=>263
,p_column_identifier=>'DC'
,p_column_label=>'Nombre Gerente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190684435408719286)
,p_db_column_name=>'CORREO_GERENTE'
,p_display_order=>273
,p_column_identifier=>'DD'
,p_column_label=>'Correo Gerente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190684526360719287)
,p_db_column_name=>'OBSERVA_EMPRESA'
,p_display_order=>283
,p_column_identifier=>'DE'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190684612613719288)
,p_db_column_name=>'OBSERVA_ADM_TRIBUTA'
,p_display_order=>293
,p_column_identifier=>'DF'
,p_column_label=>'Observaciones Adm. Tributaria'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190684731332719289)
,p_db_column_name=>'LINK_BIT_IMPUESTOS'
,p_display_order=>303
,p_column_identifier=>'DG'
,p_column_label=>'Bit Impuestos'
,p_column_link=>'f?p=&APP_ID.:434:&SESSION.::&DEBUG.::P434_ID_CONTRIB,P434_PAGINA:#ID_CONTRIBUYENTE#,415'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190684834616719290)
,p_db_column_name=>'LINK_BIT_CORREOS'
,p_display_order=>313
,p_column_identifier=>'DH'
,p_column_label=>'Bit Correos'
,p_column_link=>'f?p=&APP_ID.:435:&SESSION.::&DEBUG.::P435_ID_CONTRIB,P435_PAGINA:#ID_CONTRIBUYENTE#,415'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190684975432719291)
,p_db_column_name=>'LINK_BIT_TELEFONOS'
,p_display_order=>323
,p_column_identifier=>'DI'
,p_column_label=>'Bit Telefonos'
,p_column_link=>'f?p=&APP_ID.:436:&SESSION.::&DEBUG.::P436_ID_CONTRIB,P436_PAGINA:#ID_CONTRIBUYENTE#,415'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190743672124177443)
,p_db_column_name=>'LINK_BIT_APODERADOS'
,p_display_order=>343
,p_column_identifier=>'DK'
,p_column_label=>'Bit Apoderados'
,p_column_link=>'f?p=&APP_ID.:437:&SESSION.::&DEBUG.::P437_ID_CONTRIB,P437_PAGINA:#ID_CONTRIBUYENTE#,415'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190743680386177444)
,p_db_column_name=>'LINK_BIT_REPRE_LEGAL'
,p_display_order=>353
,p_column_identifier=>'DL'
,p_column_label=>'Bit Repre Legal'
,p_column_link=>'f?p=&APP_ID.:439:&SESSION.::&DEBUG.::P439_ID_CONTRIB,P439_PAGINA:#ID_CONTRIBUYENTE#,415'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261050611373988272)
,p_db_column_name=>'LINK_BIT_VENTAS'
,p_display_order=>363
,p_column_identifier=>'DM'
,p_column_label=>'Bit Ventas'
,p_column_link=>'f?p=&APP_ID.:451:&SESSION.::&DEBUG.::P451_ID_CONTRIBUYENTE:#ID_CONTRIBUYENTE#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190242063456516326)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'411213'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ID_DEUDOR:NOMBRE_ENTIDAD:ID_TIPO_CONTRIBUYENTE:CODIGO_ESTADO:FECHA:ID_TIPO_OPERACION:USUARIO:LINK_BIT_IMPUESTOS:LINK_BIT_CORREOS:LINK_BIT_TELEFONOS:LINK_BIT_APODERADOS:LINK_BIT_REPRE_LEGAL::LINK_BIT_VENTAS'
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
 p_id=>wwv_flow_api.id(232290929012347768)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(232290859754347767)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(310634405775942748)
,p_plug_name=>'Bit Maestro Contribuyente'
,p_parent_plug_id=>wwv_flow_api.id(232290859754347767)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Bit\00E1cora Maestro Contribuyente</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232291003453347769)
,p_name=>'P415_COD_TRIB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(232290929012347768)
,p_prompt=>unistr('C\00F3digo Tributario:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
