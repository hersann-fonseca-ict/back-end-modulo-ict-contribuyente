prompt --application/pages/page_00219
begin
--   Manifest
--     PAGE: 00219
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
 p_id=>219
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'219-Reporte Agencias no recaudadoras de impuestos'
,p_alias=>'219-REPORTE-AGENCIAS-NO-RECAUDADORAS-DE-IMPUESTOS'
,p_step_title=>'Agencias No Recaudadoras de impuestos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220714152218'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(200010492618780769)
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
 p_id=>wwv_flow_api.id(184182448517332637)
,p_plug_name=>'Agencias no recaudadoras de impuestos'
,p_parent_plug_id=>wwv_flow_api.id(200010492618780769)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_NUM_INSCRIPCION,',
'       NOMBRE_ENTIDAD,',
'       ID_TIPO_IDENTIFICACION,',
'       RAZON_SOCIAL,',
'       CEDULA_JURIDICA,',
'       ID_TIPO_CONTRIBUYENTE,',
'       CODIGO_IATA,',
'       DIRECCION_ENTIDAD,',
'       NOMBRE_REPRE_LEGAL,',
'       CODIGO_ESTADO,',
'       ENCARGADO_RESPONSABLE',
'  from SOLICITUD_INSCRIPCION',
'  where ID_TIPO_CONTRIBUYENTE = 16',
'  and   CODIGO_ESTADO IN (''P'',''A'',''R'')',
'  and   ID_NUM_INSCRIPCION = NVL (:P219_NUM_INSCRIP,ID_NUM_INSCRIPCION)',
'  and   CODIGO_ESTADO = NVL(:P219_ESTADO,CODIGO_ESTADO)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P219_NUM_INSCRIP,P219_ESTADO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Agencias no recaudadoras de impuestos'
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
 p_id=>wwv_flow_api.id(184182851256332638)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.:RP:P220_ID_NUM_INSCRIPCION:\#ID_NUM_INSCRIPCION#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>35062072766918596
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184182926736332643)
,p_db_column_name=>'ID_NUM_INSCRIPCION'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA Inscripci\00F3n')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184183373729332648)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Agencia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184185349197332649)
,p_db_column_name=>'CODIGO_IATA'
,p_display_order=>12
,p_column_identifier=>'G'
,p_column_label=>'Codigo Iata'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184183729689332648)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION'
,p_display_order=>22
,p_column_identifier=>'C'
,p_column_label=>'Id Tipo Identificacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184184175989332648)
,p_db_column_name=>'RAZON_SOCIAL'
,p_display_order=>32
,p_column_identifier=>'D'
,p_column_label=>unistr('Raz\00F3n Social')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184184483656332648)
,p_db_column_name=>'CEDULA_JURIDICA'
,p_display_order=>42
,p_column_identifier=>'E'
,p_column_label=>'Cedula Juridica'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184184890665332649)
,p_db_column_name=>'ID_TIPO_CONTRIBUYENTE'
,p_display_order=>52
,p_column_identifier=>'F'
,p_column_label=>'Tipo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(181879233338093932)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184185697299332649)
,p_db_column_name=>'DIRECCION_ENTIDAD'
,p_display_order=>62
,p_column_identifier=>'H'
,p_column_label=>'Direccion Entidad'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184186139780332649)
,p_db_column_name=>'NOMBRE_REPRE_LEGAL'
,p_display_order=>72
,p_column_identifier=>'I'
,p_column_label=>'Nombre Repre Legal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184186528663332649)
,p_db_column_name=>'ENCARGADO_RESPONSABLE'
,p_display_order=>82
,p_column_identifier=>'J'
,p_column_label=>'Encargado Responsable'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184039103633707084)
,p_db_column_name=>'CODIGO_ESTADO'
,p_display_order=>92
,p_column_identifier=>'K'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(172402886801000103)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(184187579648333393)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'350669'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_NUM_INSCRIPCION:NOMBRE_ENTIDAD:ID_TIPO_IDENTIFICACION:RAZON_SOCIAL:CEDULA_JURIDICA:ID_TIPO_CONTRIBUYENTE:CODIGO_IATA:DIRECCION_ENTIDAD:NOMBRE_REPRE_LEGAL:ENCARGADO_RESPONSABLE:CODIGO_ESTADO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194550569355610257)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(200010492618780769)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(241579689394858354)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(200010492618780769)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Agencias No Recaudadoras de impuestos</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184187052849332657)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(184182448517332637)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.:220'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(194550620866610258)
,p_name=>'P219_NUM_INSCRIP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(194550569355610257)
,p_prompt=>unistr('N\00BA Inscripci\00F3n: ')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(194550731455610259)
,p_name=>'P219_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(194550569355610257)
,p_prompt=>'Estado:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ESTADO_INSCRIP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CODIGO_ESTADO, NOMBRE_ESTADO ',
'FROM estados_tramite@consulta_ictx ',
'where CODIGO_ESTADO IN (''A'',''R'',''P'')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(194550839064610260)
,p_name=>'DAC_REFRESH_INSCRIP'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P219_NUM_INSCRIP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(194550881767610261)
,p_event_id=>wwv_flow_api.id(194550839064610260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(184182448517332637)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(194550979393610262)
,p_name=>'DAC_REFRESH_ESTADO'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P219_ESTADO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(194551156936610263)
,p_event_id=>wwv_flow_api.id(194550979393610262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(184182448517332637)
);
wwv_flow_api.component_end;
end;
/
