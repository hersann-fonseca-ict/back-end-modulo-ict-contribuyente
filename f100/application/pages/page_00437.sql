prompt --application/pages/page_00437
begin
--   Manifest
--     PAGE: 00437
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
 p_id=>437
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'437-Bitacora Apoderado mc'
,p_alias=>'437-BITACORA-APODERADO-MC'
,p_step_title=>unistr('Bit\00E1cora Apoderado mc')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221111130313'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190743956288177446)
,p_plug_name=>'437-Bitacora Aut firma digital'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_APODERADO,',
'       ID_CONTRIBUYENTE,',
'       ID_TIPO_APODERADO,',
'       NOMBRE_APODERADO,',
'       CEDULA_APODERADO,',
'       CORREO_APODERADO,',
'       ID_TIPO_IMPUESTO,',
'       INDICA_AUTORIZO,',
'       FECHA_INICIO_AUTORIZA,',
'       FECHA_FIN_AUTORIZA,',
'       CODIGO_ESTADO,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO,',
'''LINK''LINK',
'  from BITACORA_APODERADOS',
'  where ID_CONTRIBUYENTE = :P437_ID_CONTRIB',
'  and   INDICA_AUTORIZO = ''F'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P437_ID_CONTRIB'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P437_PAGINA'
,p_plug_display_when_cond2=>'415'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'437-Bitacora Aut firma digital'
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
 p_id=>wwv_flow_api.id(190744012292177447)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>41623233802763405
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190744166656177448)
,p_db_column_name=>'ID_APODERADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190744186862177449)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190744364687177450)
,p_db_column_name=>'ID_TIPO_APODERADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Apoderado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190744381868177451)
,p_db_column_name=>'NOMBRE_APODERADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190744521772177452)
,p_db_column_name=>'CEDULA_APODERADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cedula'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190744675294177453)
,p_db_column_name=>'CORREO_APODERADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Correo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190744688545177454)
,p_db_column_name=>'ID_TIPO_IMPUESTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tipo Impuesto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(161757268632851451)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190744837408177455)
,p_db_column_name=>'INDICA_AUTORIZO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Indica Autorizo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190744920445177456)
,p_db_column_name=>'FECHA_INICIO_AUTORIZA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('Inicio Autorizaci\00F3n')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190745009692177457)
,p_db_column_name=>'FECHA_FIN_AUTORIZA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Fin Autorizaci\00F3n ')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190745119197177458)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190745225567177459)
,p_db_column_name=>'FECHA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190745368375177460)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190745470975177461)
,p_db_column_name=>'USUARIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261049846344988264)
,p_db_column_name=>'LINK'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Bit. Impuestos'
,p_column_link=>'f?p=&APP_ID.:448:&SESSION.::&DEBUG.::P448_ID_APODERADO:#ID_APODERADO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190859659689690242)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'417389'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_APODERADO:ID_CONTRIBUYENTE:ID_TIPO_APODERADO:NOMBRE_APODERADO:CEDULA_APODERADO:CORREO_APODERADO:ID_TIPO_IMPUESTO:INDICA_AUTORIZO:FECHA_INICIO_AUTORIZA:FECHA_FIN_AUTORIZA:CODIGO_ESTADO:FECHA:ID_TIPO_OPERACION:USUARIO:LINK'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190745560122177462)
,p_plug_name=>'437-Bitacora Aut a terceros'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_APODERADO,',
'       ID_CONTRIBUYENTE,',
'       ID_TIPO_APODERADO,',
'       NOMBRE_APODERADO,',
'       CEDULA_APODERADO,',
'       CORREO_APODERADO,',
'       ID_TIPO_IMPUESTO,',
'       INDICA_AUTORIZO,',
'       FECHA_INICIO_AUTORIZA,',
'       FECHA_FIN_AUTORIZA,',
'       CODIGO_ESTADO,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO,',
'NULL Link_bit_archi_apo,',
'''LINK''LINK',
'  from BITACORA_APODERADOS',
'  where ID_CONTRIBUYENTE = :P437_ID_CONTRIB',
'  and   INDICA_AUTORIZO = ''T'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P437_ID_CONTRIB'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P437_PAGINA'
,p_plug_display_when_cond2=>'415'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'437-Bitacora Aut a terceros'
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
 p_id=>wwv_flow_api.id(190745598666177463)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>41624820176763421
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190745699356177464)
,p_db_column_name=>'ID_APODERADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190745868467177465)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190745970891177466)
,p_db_column_name=>'ID_TIPO_APODERADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Apoderado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190745986283177467)
,p_db_column_name=>'NOMBRE_APODERADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190746136296177468)
,p_db_column_name=>'CEDULA_APODERADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cedula'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190746231735177469)
,p_db_column_name=>'CORREO_APODERADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Correo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190746339239177470)
,p_db_column_name=>'ID_TIPO_IMPUESTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Tipo Impuesto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(161757268632851451)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190746469723177471)
,p_db_column_name=>'INDICA_AUTORIZO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Indica Autorizo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190746564870177472)
,p_db_column_name=>'FECHA_INICIO_AUTORIZA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('Inicio Autorizaci\00F3n')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190746631949177473)
,p_db_column_name=>'FECHA_FIN_AUTORIZA'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Fin Autorizaci\00F3n ')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190746722813177474)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190746875163177475)
,p_db_column_name=>'FECHA'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190746936866177476)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190746990012177477)
,p_db_column_name=>'USUARIO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190748237357177489)
,p_db_column_name=>'LINK_BIT_ARCHI_APO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Bit Archivo'
,p_column_link=>'f?p=&APP_ID.:438:&SESSION.::&DEBUG.::P438_ID_APODERADO,P438_PAGINA:#ID_APODERADO#,437'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261049693197988263)
,p_db_column_name=>'LINK'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Bit. Impuestos'
,p_column_link=>'f?p=&APP_ID.:448:&SESSION.::&DEBUG.::P448_ID_APODERADO:#ID_APODERADO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190866791685698685)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'417461'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_APODERADO:NOMBRE_APODERADO:CEDULA_APODERADO:CORREO_APODERADO:ID_TIPO_IMPUESTO:FECHA_INICIO_AUTORIZA:FECHA_FIN_AUTORIZA:CODIGO_ESTADO:FECHA:ID_TIPO_OPERACION:LINK:LINK_BIT_ARCHI_APO:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190747143888177478)
,p_plug_name=>'Bit aut firma digital'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('<center><h3>Bit\00E1cora autorizaci\00F3n firma digital</h3></center>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P437_PAGINA'
,p_plug_display_when_cond2=>'415'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190747499721177482)
,p_plug_name=>'Bit aut terceros'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('<center><h3>Bit\00E1cora autorizaci\00F3n a terceros</h3></center>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P437_PAGINA'
,p_plug_display_when_cond2=>'415'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190816173220591157)
,p_plug_name=>'437-Bitacora Apoderado mc'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_APODERADO,',
'       ID_CONTRIBUYENTE,',
'       ID_TIPO_APODERADO,',
'       NOMBRE_APODERADO,',
'       CEDULA_APODERADO,',
'       CORREO_APODERADO,',
'       ID_TIPO_IMPUESTO,',
'       INDICA_AUTORIZO,',
'       FECHA_INICIO_AUTORIZA,',
'       FECHA_FIN_AUTORIZA,',
'       CODIGO_ESTADO,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO,',
'       NULL Link_bit_archi_apo',
'  from BITACORA_APODERADOS',
'  where ID_CONTRIBUYENTE = :P437_ID_CONTRIB',
'  and   INDICA_AUTORIZO = ''A'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P437_ID_CONTRIB'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'437-Bitacora Apoderado mc'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(190816184677591157)
,p_name=>'437-Bitacora Apoderado mc'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>41695406188177115
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190816669550591157)
,p_db_column_name=>'ID_APODERADO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190817074878591157)
,p_db_column_name=>'ID_CONTRIBUYENTE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Contribuyente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190817460692591158)
,p_db_column_name=>'ID_TIPO_APODERADO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tipo Apoderado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(161480289353184503)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190817866745591158)
,p_db_column_name=>'NOMBRE_APODERADO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190818201238591158)
,p_db_column_name=>'CEDULA_APODERADO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cedula'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190818602601591158)
,p_db_column_name=>'CORREO_APODERADO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Correo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190818982231591158)
,p_db_column_name=>'ID_TIPO_IMPUESTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Tipo Impuesto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190819442772591158)
,p_db_column_name=>'INDICA_AUTORIZO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Indica Autorizo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190819831741591159)
,p_db_column_name=>'FECHA_INICIO_AUTORIZA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>unistr('Inicio Autorizaci\00F3n')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190820259974591159)
,p_db_column_name=>'FECHA_FIN_AUTORIZA'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>unistr('Fin Autorizaci\00F3n ')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190820662225591159)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190821018571591159)
,p_db_column_name=>'FECHA'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190821465271591159)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190821850974591159)
,p_db_column_name=>'USUARIO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190747760628177484)
,p_db_column_name=>'LINK_BIT_ARCHI_APO'
,p_display_order=>24
,p_column_identifier=>'O'
,p_column_label=>'Bit Archivos'
,p_column_link=>'f?p=&APP_ID.:438:&SESSION.::&DEBUG.::P438_ID_APODERADO,P438_PAGINA:#ID_APODERADO#,437'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190850053836672192)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'417293'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_APODERADO:ID_CONTRIBUYENTE:ID_TIPO_APODERADO:NOMBRE_APODERADO:CEDULA_APODERADO:CORREO_APODERADO:ID_TIPO_IMPUESTO:INDICA_AUTORIZO:FECHA_INICIO_AUTORIZA:FECHA_FIN_AUTORIZA:CODIGO_ESTADO:FECHA:ID_TIPO_OPERACION:USUARIO:LINK_BIT_ARCHI_APO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1139418233825147934)
,p_plug_name=>'Bit apoderados mc'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Bit\00E1cora apoderados</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(190822559066593836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1139418233825147934)
,p_button_name=>'BTN_REGRESAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155207953779979427)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Btn Regresar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:&P437_PAGINA.:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(190822887216593836)
,p_name=>'P437_ID_CONTRIB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1139418233825147934)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(190823333764593836)
,p_name=>'P437_PAGINA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1139418233825147934)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
