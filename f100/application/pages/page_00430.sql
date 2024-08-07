prompt --application/pages/page_00430
begin
--   Manifest
--     PAGE: 00430
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
 p_id=>430
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'430-Bitacora Apoderados inscripcion regular'
,p_alias=>'430-BITACORA-APODERADOS-INSCRIPCION-REGULAR'
,p_step_title=>unistr('Bit\00E1cora Apoderados inscripci\00F3n regular')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20221111094553'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(189964723463877679)
,p_plug_name=>unistr('Bit autorizaci\00F3n firma digital')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('<center><h3>Bit\00E1cora autorizaci\00F3n firma digital</h3></center>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P430_PAGINA'
,p_plug_display_when_cond2=>'414'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(189964863590877680)
,p_plug_name=>unistr('Bit autorizaci\00F3n a terceros')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('<center><h3>Bit\00E1cora autorizaci\00F3n a terceros</h3></center>')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P430_PAGINA'
,p_plug_display_when_cond2=>'414'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(189964972428877681)
,p_plug_name=>unistr('430-Bitacora autorizaci\00F3n firma digital')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_APODERADO,',
'       ID_TIPO_APODERADO,',
'       ID_NUM_INSCRIPCION,',
'       NOMBRE_APODERADO,',
'       CEDULA_APODERADO,',
'       CORREO_APODERADO,',
'       --ID_TIPO_IMPUESTO,',
'       INDICA_AUTORIZO,',
'       FECHA_INICIO_AUTORIZA,',
'       FECHA_FIN_AUTORIZA,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO,',
'       ''LINK''LINK',
'  from BITA_APODERA_SOLICITUD',
'  where ID_NUM_INSCRIPCION = :P430_NUM_INSCRIPCION',
'    and   INDICA_AUTORIZO = ''F'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P430_NUM_INSCRIPCION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P430_PAGINA'
,p_plug_display_when_cond2=>'414'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('430-Bitacora autorizaci\00F3n firma digital')
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
 p_id=>wwv_flow_api.id(189965177721877683)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>40844399232463641
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189965234528877684)
,p_db_column_name=>'ID_APODERADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189965345931877685)
,p_db_column_name=>'ID_NUM_INSCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Num Inscripcion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189965437256877686)
,p_db_column_name=>'ID_TIPO_APODERADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Apoderado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189965563121877687)
,p_db_column_name=>'NOMBRE_APODERADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189965590700877688)
,p_db_column_name=>'CEDULA_APODERADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cedula'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189965694128877689)
,p_db_column_name=>'CORREO_APODERADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Correo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189965881761877691)
,p_db_column_name=>'INDICA_AUTORIZO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Indica Autorizo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189966061288877692)
,p_db_column_name=>'FECHA_INICIO_AUTORIZA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('Inicio Autorizaci\00F3n ')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190556271515901743)
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
 p_id=>wwv_flow_api.id(190556334717901744)
,p_db_column_name=>'FECHA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190556435761901745)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190556519578901746)
,p_db_column_name=>'USUARIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261049290941988259)
,p_db_column_name=>'LINK'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Bit. Impuestos'
,p_column_link=>'f?p=&APP_ID.:447:&SESSION.::&DEBUG.::P447_ID_APODERADO:#ID_APODERADO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190566993841905156)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'414463'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ID_APODERADO:ID_NUM_INSCRIPCION:ID_TIPO_APODERADO:NOMBRE_APODERADO:CEDULA_APODERADO:CORREO_APODERADO:INDICA_AUTORIZO:FECHA_INICIO_AUTORIZA:FECHA_FIN_AUTORIZA:FECHA:ID_TIPO_OPERACION:USUARIO:LINK'
,p_sort_column_1=>'ID_APODERADO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'FECHA'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190537401762809727)
,p_plug_name=>'430-Bitacora Apoderados inscripcion regular'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_APODERADO,',
'       ID_TIPO_APODERADO,',
'       ID_NUM_INSCRIPCION,',
'       NOMBRE_APODERADO,',
'       CEDULA_APODERADO,',
'       CORREO_APODERADO,',
'       ID_TIPO_IMPUESTO,',
'       INDICA_AUTORIZO,',
'       FECHA_INICIO_AUTORIZA,',
'       FECHA_FIN_AUTORIZA,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO,',
'       NULL LINK_BIT_ARCHIVOS',
'  from BITA_APODERA_SOLICITUD',
'  where ID_NUM_INSCRIPCION = :P430_NUM_INSCRIPCION',
'  and   INDICA_AUTORIZO = ''A'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P430_NUM_INSCRIPCION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'430-Bitacora Apoderados inscripcion regular'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(190537510509809727)
,p_name=>'430-Bitacora Apoderados inscripcion regular'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>41416732020395685
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190537977901809727)
,p_db_column_name=>'ID_APODERADO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190538359573809728)
,p_db_column_name=>'ID_NUM_INSCRIPCION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Num Inscripcion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190538719334809728)
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
 p_id=>wwv_flow_api.id(190539079799809728)
,p_db_column_name=>'NOMBRE_APODERADO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190539484881809728)
,p_db_column_name=>'CEDULA_APODERADO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cedula'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190539964139809728)
,p_db_column_name=>'CORREO_APODERADO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Correo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190540366405809728)
,p_db_column_name=>'ID_TIPO_IMPUESTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Tipo Impuesto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190540695633809729)
,p_db_column_name=>'INDICA_AUTORIZO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Indica Autorizo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190541108234809729)
,p_db_column_name=>'FECHA_INICIO_AUTORIZA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>unistr('Inicio Autorizaci\00F3n ')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190541556092809729)
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
 p_id=>wwv_flow_api.id(189964385434877676)
,p_db_column_name=>'FECHA'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189964480751877677)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>30
,p_column_identifier=>'M'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(189964592630877678)
,p_db_column_name=>'USUARIO'
,p_display_order=>40
,p_column_identifier=>'N'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190558180994901763)
,p_db_column_name=>'LINK_BIT_ARCHIVOS'
,p_display_order=>50
,p_column_identifier=>'O'
,p_column_label=>'Bit Archivos'
,p_column_link=>'f?p=&APP_ID.:431:&SESSION.::&DEBUG.::P431_ID_APODERADO:#ID_APODERADO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190543470673821043)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'414227'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ID_APODERADO:ID_TIPO_APODERADO:NOMBRE_APODERADO:CEDULA_APODERADO:CORREO_APODERADO:FECHA_INICIO_AUTORIZA:FECHA_FIN_AUTORIZA:FECHA:ID_TIPO_OPERACION:USUARIO::LINK_BIT_ARCHIVOS'
,p_sort_column_1=>'ID_APODERADO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'FECHA'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190556628114901747)
,p_plug_name=>unistr('430-Bitacora autorizaci\00F3n a terceros')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_APODERADO,',
'       ID_TIPO_APODERADO,',
'       ID_NUM_INSCRIPCION,',
'       NOMBRE_APODERADO,',
'       CEDULA_APODERADO,',
'       CORREO_APODERADO,',
'       --ID_TIPO_IMPUESTO,',
'       INDICA_AUTORIZO,',
'       FECHA_INICIO_AUTORIZA,',
'       FECHA_FIN_AUTORIZA,',
'       FECHA,',
'       ID_TIPO_OPERACION,',
'       USUARIO,',
'       NULL LINK_BIT_ARCHIVOS,',
'''LINK''LINK',
'  from BITA_APODERA_SOLICITUD',
'  where ID_NUM_INSCRIPCION = :P430_NUM_INSCRIPCION',
'  and   INDICA_AUTORIZO = ''T''',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P430_NUM_INSCRIPCION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P430_PAGINA'
,p_plug_display_when_cond2=>'414'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('430-Bitacora autorizaci\00F3n a terceros')
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
 p_id=>wwv_flow_api.id(190556822095901749)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>41436043606487707
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190556973044901750)
,p_db_column_name=>'ID_APODERADO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190557030527901751)
,p_db_column_name=>'ID_NUM_INSCRIPCION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Num Inscripcion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190557163199901752)
,p_db_column_name=>'ID_TIPO_APODERADO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Tipo Apoderado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190557255252901753)
,p_db_column_name=>'NOMBRE_APODERADO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190557371680901754)
,p_db_column_name=>'CEDULA_APODERADO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cedula'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190557390095901755)
,p_db_column_name=>'CORREO_APODERADO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Correo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190557640234901757)
,p_db_column_name=>'INDICA_AUTORIZO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Indica Autorizo'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190557685439901758)
,p_db_column_name=>'FECHA_INICIO_AUTORIZA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('Inicio Autorizaci\00F3n ')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190557850519901759)
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
 p_id=>wwv_flow_api.id(190557932569901760)
,p_db_column_name=>'FECHA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fecha Mod.'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MM-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190557989251901761)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190558137161901762)
,p_db_column_name=>'USUARIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190558428769901765)
,p_db_column_name=>'LINK_BIT_ARCHIVOS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Bit Archivos'
,p_column_link=>'f?p=&APP_ID.:431:&SESSION.::&DEBUG.::P431_ID_APODERADO:#ID_APODERADO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261049451759988260)
,p_db_column_name=>'LINK'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Bit. Impuestos'
,p_column_link=>'f?p=&APP_ID.:447:&SESSION.::&DEBUG.::P447_ID_APODERADO:#ID_APODERADO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190572601267910331)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'414519'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_APODERADO:NOMBRE_APODERADO:CEDULA_APODERADO:CORREO_APODERADO:FECHA_INICIO_AUTORIZA:FECHA_FIN_AUTORIZA:FECHA:ID_TIPO_OPERACION:LINK:LINK_BIT_ARCHIVOS:'
,p_sort_column_1=>'ID_APODERADO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'FECHA'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(848100664684853782)
,p_plug_name=>'Bit apoderados inscripcion regular'
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
 p_id=>wwv_flow_api.id(190558585647901767)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(848100664684853782)
,p_button_name=>'BTN_REGRESAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155207953779979427)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Btn Regresar'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:&P430_PAGINA.:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-angle-double-left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189964362826877675)
,p_name=>'P430_NUM_INSCRIPCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(190537401762809727)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(190632779927139868)
,p_name=>'P430_PAGINA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(190537401762809727)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
