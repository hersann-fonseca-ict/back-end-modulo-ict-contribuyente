prompt --application/pages/page_00417
begin
--   Manifest
--     PAGE: 00417
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
 p_id=>417
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'417-Consulta Bitacora Inscripcion ANRI'
,p_alias=>'417-CONSULTA-BITACORA-INSCRIPCION-ANRI'
,p_step_title=>unistr('Bit\00E1cora Inscripci\00F3n ANRI')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221111095239'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(272354415562688661)
,p_plug_name=>unistr('414-Bitacora inscripci\00F3n ANRI')
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
'       CEDULA_JURIDICA,',
'       ID_TIPO_CONTRIBUYENTE,',
'       CODIGO_IATA,',
'       DIRECCION_ENTIDAD,',
'       --NOMBRE_REPRE_LEGAL,',
'       --CEDULA_REPRE_LEGAL,',
'       --CORREO_REPRE_LEGAL,',
'       CODIGO_ESTADO,',
'       FECHA_INSCRIPCION,',
'       ENCARGADO_RESPONSABLE,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO,',
'       NULL Link_bit_impuestos,',
'       NULL Link_bit_correos,',
'       NULL Link_bit_telefonos,',
'       NULL Link_bit_requisitos,',
'       NULL Link_bit_apoderados,',
'       NULL Link_bit_repre_legal',
'  from BITA_SOLICITUD_INSCRIP',
'  where ID_TIPO_CONTRIBUYENTE IN (SELECT ID_TIPO_CONTRIBUYENTE FROM TIPO_CONTRIBUYENTE WHERE  IND_TIPO_INSCRIP = ''ANRI'')',
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
,p_prn_page_header=>unistr('414-Bitacora inscripci\00F3n ANRI')
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
 p_id=>wwv_flow_api.id(272212717486119751)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>123091938996705709
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190250020574542862)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190250477926542864)
,p_db_column_name=>'ID_NUM_INSCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00BA')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190250827296542864)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre Entidad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190251263005542864)
,p_db_column_name=>'ID_TIPO_CONTRIBUYENTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tipo Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(181879233338093932)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190251586050542864)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190252022218542864)
,p_db_column_name=>'FECHA_INSCRIPCION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fecha Inscripcion'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190252438890542865)
,p_db_column_name=>'FECHA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190252863512542865)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190253235420542865)
,p_db_column_name=>'USUARIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190682583800719268)
,p_db_column_name=>'LINK_BIT_IMPUESTOS'
,p_display_order=>100
,p_column_identifier=>'V'
,p_column_label=>'Bit Impuestos'
,p_column_link=>'f?p=&APP_ID.:433:&SESSION.::&DEBUG.::P433_NUM_INSCRIPCION,P433_PAGINA:#ID_NUM_INSCRIPCION#,417'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190633005139139870)
,p_db_column_name=>'LINK_BIT_CORREOS'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Bit Correos'
,p_column_link=>'f?p=&APP_ID.:427:&SESSION.::&DEBUG.::P427_NUM_SOLICITUD,P427_PAGINA:#ID_NUM_INSCRIPCION#,417'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190633120478139871)
,p_db_column_name=>'LINK_BIT_TELEFONOS'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>unistr('Bit Tel\00E9fonos')
,p_column_link=>'f?p=&APP_ID.:428:&SESSION.::&DEBUG.::P428_NUM_INSCRIPCION,P428_PAGINA:#ID_NUM_INSCRIPCION#,417'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190633232943139872)
,p_db_column_name=>'LINK_BIT_REQUISITOS'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Bit Requisitos'
,p_column_link=>'f?p=&APP_ID.:429:&SESSION.::&DEBUG.::P429_NUM_INSCRIPCION,P429_PAGINA:#ID_NUM_INSCRIPCION#,417'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190633345431139873)
,p_db_column_name=>'LINK_BIT_APODERADOS'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Bit Apoderados'
,p_column_link=>'f?p=&APP_ID.:430:&SESSION.::&DEBUG.::P430_NUM_INSCRIPCION,P430_PAGINA:#ID_NUM_INSCRIPCION#,417'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190633475443139874)
,p_db_column_name=>'LINK_BIT_REPRE_LEGAL'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Bit Rep. Legal'
,p_column_link=>'f?p=&APP_ID.:432:&SESSION.::&DEBUG.::P432_NUM_INSCRIPCION,P432_PAGINA:#ID_NUM_INSCRIPCION#,417'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190681523656719257)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>unistr('Tipo Identificaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(160819142014193368)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190681586452719258)
,p_db_column_name=>'RAZON_SOCIAL'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>unistr('Raz\00F3n Social')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190681722125719259)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>unistr('Cedula Jur\00EDdica')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190681947611719261)
,p_db_column_name=>'CODIGO_IATA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>unistr('C\00F3digo IATA')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190681985275719262)
,p_db_column_name=>'DIRECCION_ENTIDAD'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>unistr('Direcci\00F3n Entidad')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190682128732719263)
,p_db_column_name=>'ENCARGADO_RESPONSABLE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Encargado Responsable'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(272448324271655869)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'411328'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ID_NUM_INSCRIPCION:NOMBRE_ENTIDAD:ID_TIPO_CONTRIBUYENTE:CODIGO_ESTADO:FECHA:ID_TIPO_OPERACION:USUARIO:LINK_BIT_IMPUESTOS:LINK_BIT_CORREOS:LINK_BIT_TELEFONOS:LINK_BIT_REQUISITOS:LINK_BIT_APODERADOS:LINK_BIT_REPRE_LEGAL:'
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
 p_id=>wwv_flow_api.id(310635839133954693)
,p_plug_name=>unistr(' inscripci\00F3n ANRI')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Bit\00E1cora inscripci\00F3n agencia no recaudadora de impuestos</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
