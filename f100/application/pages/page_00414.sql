prompt --application/pages/page_00414
begin
--   Manifest
--     PAGE: 00414
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
 p_id=>414
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('414-Bitacora inscripci\00F3n regular')
,p_alias=>unistr('414-BITACORA-INSCRIPCI\00D3N-REGULAR')
,p_step_title=>unistr('Bit\00E1cora inscripci\00F3n regular')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221111093721'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190104274335446567)
,p_plug_name=>unistr('414-Bitacora inscripci\00F3n regular')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ID_NUM_INSCRIPCION,',
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
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO,',
'       NULL Link_bit_impuestos,',
'       NULL Link_bit_correos,',
'       NULL Link_bit_telefonos,',
'       NULL Link_bit_requisitos,',
'       NULL Link_bit_apoderados,',
'       NULL Link_bit_repre_legal,',
'       NULL Link_bit_ventas',
'  from BITA_SOLICITUD_INSCRIP',
'  where ID_TIPO_CONTRIBUYENTE IN (SELECT ID_TIPO_CONTRIBUYENTE FROM TIPO_CONTRIBUYENTE WHERE  IND_TIPO_INSCRIP = ''IR'')',
'  ORDER BY ID_NUM_INSCRIPCION,FECHA DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('414-Bitacora inscripci\00F3n regular')
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
 p_id=>wwv_flow_api.id(189962576258877657)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>40841797769463615
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189962668241877658)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189962701041877659)
,p_db_column_name=>'ID_NUM_INSCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00BA')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189962790893877660)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre Entidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189962890939877661)
,p_db_column_name=>'ID_TIPO_CONTRIBUYENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(181879233338093932)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189963041297877662)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189963082736877663)
,p_db_column_name=>'FECHA_INSCRIPCION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha Inscripcion'
,p_column_type=>'DATE'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189963256217877664)
,p_db_column_name=>'FECHA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189963280243877665)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189963434143877666)
,p_db_column_name=>'USUARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190682469718719266)
,p_db_column_name=>'LINK_BIT_IMPUESTOS'
,p_display_order=>100
,p_column_identifier=>'AK'
,p_column_label=>'Bit Impuestos'
,p_column_link=>'f?p=&APP_ID.:433:&SESSION.::&DEBUG.::P433_NUM_INSCRIPCION,P433_PAGINA:#ID_NUM_INSCRIPCION#,414'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189963764922877669)
,p_db_column_name=>'LINK_BIT_CORREOS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Bit. Correos'
,p_column_link=>'f?p=&APP_ID.:427:&SESSION.::&DEBUG.::P427_NUM_SOLICITUD,P427_PAGINA:#ID_NUM_INSCRIPCION#,414'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189963788392877670)
,p_db_column_name=>'LINK_BIT_TELEFONOS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Bit. Tel\00E9fonos')
,p_column_link=>'f?p=&APP_ID.:428:&SESSION.::&DEBUG.::P428_NUM_INSCRIPCION,P428_PAGINA:#ID_NUM_INSCRIPCION#,414'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190743809858177445)
,p_db_column_name=>'LINK_BIT_REQUISITOS'
,p_display_order=>130
,p_column_identifier=>'AL'
,p_column_label=>'Bit Requisitos'
,p_column_link=>'f?p=&APP_ID.:429:&SESSION.::&DEBUG.::P429_NUM_INSCRIPCION,P429_PAGINA:#ID_NUM_INSCRIPCION#,414'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189964251765877674)
,p_db_column_name=>'LINK_BIT_APODERADOS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Bit Apoderados'
,p_column_link=>'f?p=&APP_ID.:430:&SESSION.::&DEBUG.::P430_NUM_INSCRIPCION,P430_PAGINA:#ID_NUM_INSCRIPCION#,414'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190559027968901771)
,p_db_column_name=>'LINK_BIT_REPRE_LEGAL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Bit Rep. Legal'
,p_column_link=>'f?p=&APP_ID.:432:&SESSION.::&DEBUG.::P432_NUM_INSCRIPCION,P432_PAGINA:#ID_NUM_INSCRIPCION#,414'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261050347739988269)
,p_db_column_name=>'LINK_BIT_VENTAS'
,p_display_order=>160
,p_column_identifier=>'AM'
,p_column_label=>'Bit Ventas'
,p_column_link=>'f?p=&APP_ID.:450:&SESSION.::&DEBUG.::P450_ID_NUM_INSCRIPCION:#ID_NUM_INSCRIPCION#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190633556335139875)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>unistr('Tipo Identificaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(160819142014193368)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190633579854139876)
,p_db_column_name=>'RAZON_SOCIAL'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>unistr('Raz\00F3n Social')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190633693543139877)
,p_db_column_name=>'PERSONA_FISICA'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>unistr('Persona F\00EDsica')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190633816873139878)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>unistr('Cedula Jur\00EDdica')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190633889954139879)
,p_db_column_name=>'CEDULA_FISICA'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>unistr('Cedula F\00EDsica')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190634059520139880)
,p_db_column_name=>'CODIGO_IATA'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>unistr('C\00F3digo IATA')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190634083473139881)
,p_db_column_name=>'FECHA_INICIO_OPERA'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>' Inicio Operaciones'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190634207138139882)
,p_db_column_name=>'DIRECCION_ENTIDAD'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>unistr('Direcci\00F3n Entidad')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190634369549139883)
,p_db_column_name=>'ID_PROVINCIA_ENTIDAD'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Provincia Entidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190634393665139884)
,p_db_column_name=>'ID_CANTON_ENTIDAD'
,p_display_order=>260
,p_column_identifier=>'Y'
,p_column_label=>unistr('Cant\00F3n Entidad')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190634498305139885)
,p_db_column_name=>'ID_DISTRITO_ENTIDAD'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>'Distrito Entidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190634632567139886)
,p_db_column_name=>'DIRECCION_NOTIFICA'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>unistr('Direcci\00F3n Notifica')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190634715293139887)
,p_db_column_name=>'ID_PROVINCIA_NOTIFICA'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>'Provincia Notifica'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190634843866139888)
,p_db_column_name=>'ID_CANTON_NOTIFICA'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'Canton Notifica'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190634924611139889)
,p_db_column_name=>'ID_DISTRITO_NOTIFICA'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>'Distrito Notifica'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190635038857139890)
,p_db_column_name=>'CEDULA_GERENTE'
,p_display_order=>320
,p_column_identifier=>'AE'
,p_column_label=>'Cedula Gerente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190635100069139891)
,p_db_column_name=>'NOMBRE_GERENTE'
,p_display_order=>330
,p_column_identifier=>'AF'
,p_column_label=>'Nombre Gerente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190635228264139892)
,p_db_column_name=>'CORREO_GERENTE'
,p_display_order=>340
,p_column_identifier=>'AG'
,p_column_label=>'Correo Gerente'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190680176296719243)
,p_db_column_name=>'OBSERVA_EMPRESA'
,p_display_order=>350
,p_column_identifier=>'AH'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190680223093719244)
,p_db_column_name=>'OBSERVA_ADM_TRIBUTA'
,p_display_order=>360
,p_column_identifier=>'AI'
,p_column_label=>'Observaciones Adm. Tributaria'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190680519155719247)
,p_db_column_name=>'ID_MODALIDAD'
,p_display_order=>370
,p_column_identifier=>'AJ'
,p_column_label=>'Modalidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(161286874042251678)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190198183044413775)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'410775'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ID_NUM_INSCRIPCION:NOMBRE_ENTIDAD:ID_TIPO_CONTRIBUYENTE:CODIGO_ESTADO:FECHA:ID_TIPO_OPERACION:USUARIO:LINK_BIT_IMPUESTOS:LINK_BIT_CORREOS:LINK_BIT_TELEFONOS:LINK_BIT_REQUISITOS:LINK_BIT_APODERADOS:LINK_BIT_REPRE_LEGAL::LINK_BIT_VENTAS'
,p_sort_column_1=>'ID_NUM_INSCRIPCION'
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
 p_id=>wwv_flow_api.id(228241194544940789)
,p_plug_name=>unistr(' inscripci\00F3n regular')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Bit\00E1cora Inscripci\00F3n Regular</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
