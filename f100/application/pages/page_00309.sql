prompt --application/pages/page_00309
begin
--   Manifest
--     PAGE: 00309
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
 p_id=>309
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'309-Reporte por numero de oficio enviado al RN'
,p_alias=>'309-REPORTE-POR-NUMERO-DE-OFICIO-ENVIADO-AL-RN'
,p_step_title=>'Reporte por numero de oficio RN'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230502105328'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(158829462702968246)
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
 p_id=>wwv_flow_api.id(159254858433796281)
,p_plug_name=>'Reporte por numero de oficio RN'
,p_parent_plug_id=>wwv_flow_api.id(158829462702968246)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_DECLARA_CTO,',
'       NOMBRE_ENTIDAD,',
'       ID_TIPO_IDENTIFICACION,',
'       ID_TIPO_IDENTIFICACION ID_TIPO_IDENTIFICACION2,',
'       CEDULA,',
'       -- ID_PROVINCIA,',
'       -- ID_CANTON,',
'       --ID_DISTRITO,',
'       --DIRECCION_ENTIDAD,',
'       --TELEFONO1,',
'       ---TELEFONO2,',
'       --FECHA,',
'       NUMERO_PLACA,',
'       CONTRATO_ARRENDA,',
'       CONTRATO_ARRENDA CONTRATO_ARRENDA2,',
'       NOMBRE_ARRENDA,',
'       ID_TIPO_IDENTIFICA,',
'       ID_TIPO_IDENTIFICA ID_TIPO_IDENTIFICA2,',
'       CEDULA_ARRE,',
'       --FECHA_INI_EXCUSION,',
'       --FECHA_FIN_EXCUSION,',
'       --DESTINO_VIAJE,',
'       ---TOTAL_PASAJEROS,',
'       MONTO_TOTAL_TRANS,',
'       --IMPUESTO_PAGAR,',
'       --NOMBRE_CHOFER,',
'       --NOMBRE_GUIA,',
'       --CODIGO_ESTADO,',
'      -- CORREO_NOTIFICA1,',
'      -- CORREO_NOTIFICA2,',
'       ID_OFICINA,',
'       ID_OFICINA ID_OFICINA2,',
'       --ID_OFICIO,',
'       --ID_DOCUMENTO,',
'       --USUARIO_SIT,',
'       --ID_TIPO_PUESTO,',
'       CODIGO_MONEDA,',
'       CODIGO_MONEDA CODIGO_MONEDA2,',
'       --CHECK_ACEPTA',
'       PKG_TRAMITE_COT.RETORNA_NUM_OFICIO_RN(ID_DECLARA_CTO,ID_CONTRIBUYENTE)NUM_OFICIO,',
'       PKG_TRAMITE_COT.RETORNA_NUM_COMPROBANTE_PAGO (ID_DECLARA_CTO) NUM_COMPROBANTE,',
'       PKG_TRAMITE_COT.RETORNA_ID_COMPROBANTE_PAGO (ID_DECLARA_CTO) ID_COMPROBANTE,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR (ID_CONTRIBUYENTE)ID_DEUDOR,',
'         DECODE (CONTRATO_ARRENDA,''S'',1242,''N'',1241)ID_REPORTE,',
'         DECODE (CONTRATO_ARRENDA,''S'',1303,''N'',1304)ID_REPORTE_TTR,',
'      DECODE (:P309_TIPO_CONTRIBUYENTE,8,''CARTA'',17) CARTA,',
'      DECODE (:P309_TIPO_CONTRIBUYENTE,17,''Carta RN'') CARTA_RN,',
'      ''Reporte PDF''Reporte_num_oficio',
'  from DECLARA_CHARTER_TERRESTRE_O',
'  Where CODIGO_ESTADO = ''A''',
'  AND   ID_DECLARA_CTO IN (SELECT ID_DECLARA_CTO FROM ARCHIVO_CARTAS_RN_COT WHERE NUM_OFICIO IS NOT NULL)',
'  AND   PKG_MAESTRO_CONTRIBUYENTE.RETORNA_TIPO_CONTRIBUYENTE (ID_CONTRIBUYENTE) = :P309_TIPO_CONTRIBUYENTE'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P309_TIPO_CONTRIBUYENTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Reporte por numero de oficio RN'
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
 p_id=>wwv_flow_api.id(158829871037968250)
,p_max_row_count=>'1000000'
,p_search_button_label=>'Buscar'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV'
,p_download_filename=>'Reporte numero oficio RN'
,p_csv_output_separator=>';'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>158829871037968250
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160740866065540601)
,p_db_column_name=>'ID_DECLARA_CTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA Tramite')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160745160463540644)
,p_db_column_name=>'ID_DEUDOR'
,p_display_order=>20
,p_column_identifier=>'X'
,p_column_label=>unistr('C\00F3digo Tributario')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160742111592540614)
,p_db_column_name=>'NUM_OFICIO'
,p_display_order=>30
,p_column_identifier=>'N'
,p_column_label=>unistr('N\00BA Oficio')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160740977576540602)
,p_db_column_name=>'NOMBRE_ENTIDAD'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Entidad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160741083932540603)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>unistr('Tipo Identificaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(160819142014193368)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160741187600540604)
,p_db_column_name=>'CEDULA'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Cedula'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160741270534540605)
,p_db_column_name=>'NUMERO_PLACA'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>unistr('N\00BA Placa')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160741391315540606)
,p_db_column_name=>'CONTRATO_ARRENDA'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Tiene Contrato?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(152532602967853113)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160741447896540607)
,p_db_column_name=>'NOMBRE_ARRENDA'
,p_display_order=>90
,p_column_identifier=>'G'
,p_column_label=>'Nombre Arrendatario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160741536012540608)
,p_db_column_name=>'ID_TIPO_IDENTIFICA'
,p_display_order=>100
,p_column_identifier=>'H'
,p_column_label=>unistr('Tipo Identificaci\00F3n Arrendatario')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(160819142014193368)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160741690412540609)
,p_db_column_name=>'CEDULA_ARRE'
,p_display_order=>110
,p_column_identifier=>'I'
,p_column_label=>'Cedula Arredatario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160742052003540613)
,p_db_column_name=>'CODIGO_MONEDA'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Moneda'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(152534385609853094)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P309_TIPO_CONTRIBUYENTE'
,p_display_condition2=>'8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160741735318540610)
,p_db_column_name=>'MONTO_TOTAL_TRANS'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Monto Total Transferencia'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P309_TIPO_CONTRIBUYENTE'
,p_display_condition2=>'8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160741875619540611)
,p_db_column_name=>'ID_OFICINA'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'Oficina'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(152535255122853094)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160742456769540617)
,p_db_column_name=>'ID_COMPROBANTE'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Id Comprobante'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160742239512540615)
,p_db_column_name=>'NUM_COMPROBANTE'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>unistr('N\00B0 Comprobante')
,p_column_link=>'javascript:$s(''P309_ID_DECLARA_CTO'',''#ID_DECLARA_CTO#'');javascript:$s(''P309_ID_COMPROBANTE_PAGO'',''#ID_COMPROBANTE#'');javascript:openModal(''ID_COMPROB''); $("#ID_COMPROB").trigger("apexrefresh");'
,p_column_linktext=>'#NUM_COMPROBANTE#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P309_TIPO_CONTRIBUYENTE'
,p_display_condition2=>'8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160744553573540638)
,p_db_column_name=>'ID_REPORTE'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Id Reporte'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160744433653540637)
,p_db_column_name=>'CARTA'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Carta'
,p_column_link=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.::P247_ID_DECLRA,P247_NOMBRE_ENTIDAD,P247_ID_TIPO_IDENTIFICACION,P247_CEDULA,P247_PLACA,P247_TIPO_CED_ARRE,P247_CED_ARRE,P247_NOM_ARRENDATARIO,P247_CODIGO_MONEDA,P247_ID_OFICINA,P247_ID_REPORTE,P247_MONTO_TOTAL_TRAN'
||'S,P247_CONTRATO:#ID_DECLARA_CTO#,#NOMBRE_ENTIDAD#,#ID_TIPO_IDENTIFICACION2#,#CEDULA#,#NUMERO_PLACA#,#ID_TIPO_IDENTIFICA2#,#CEDULA_ARRE#,#NOMBRE_ARRENDA#,#CODIGO_MONEDA2#,#ID_OFICINA2#,#ID_REPORTE#,#MONTO_TOTAL_TRANS#,#CONTRATO_ARRENDA2#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_rpt_show_filter_lov=>'N'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P309_TIPO_CONTRIBUYENTE'
,p_display_condition2=>'8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160744613598540639)
,p_db_column_name=>'ID_TIPO_IDENTIFICACION2'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Id Tipo Identificacion2'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160744765407540640)
,p_db_column_name=>'CONTRATO_ARRENDA2'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Contrato Arrenda2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160744809310540641)
,p_db_column_name=>'ID_TIPO_IDENTIFICA2'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Id Tipo Identifica2'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160744927708540642)
,p_db_column_name=>'ID_OFICINA2'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Id Oficina2'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160745092415540643)
,p_db_column_name=>'CODIGO_MONEDA2'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Codigo Moneda2'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(167972496200571015)
,p_db_column_name=>'CARTA_RN'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Carta RN'
,p_column_link=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.::P247_ID_DECLRA,P247_NOMBRE_ENTIDAD,P247_ID_TIPO_IDENTIFICACION,P247_CEDULA,P247_PLACA,P247_TIPO_CED_ARRE,P247_CED_ARRE,P247_NOM_ARRENDATARIO,P247_CODIGO_MONEDA,P247_ID_OFICINA,P247_ID_REPORTE,P247_MONTO_TOTAL_TRAN'
||'S,P247_CONTRATO,P247_ID_DEUDOR:#ID_DECLARA_CTO#,#NOMBRE_ENTIDAD#,#ID_TIPO_IDENTIFICACION2#,#CEDULA#,#NUMERO_PLACA#,#ID_TIPO_IDENTIFICA2#,#CEDULA_ARRE#,#NOMBRE_ARRENDA#,#CODIGO_MONEDA2#,#ID_OFICINA2#,#ID_REPORTE_TTR#,#MONTO_TOTAL_TRANS#,#CONTRATO_ARRE'
||'NDA2#,#ID_DEUDOR#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P309_TIPO_CONTRIBUYENTE'
,p_display_condition2=>'17'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(167972503793571016)
,p_db_column_name=>'ID_REPORTE_TTR'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Id Reporte Ttr'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(174899545577154103)
,p_db_column_name=>'REPORTE_NUM_OFICIO'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>unistr('Reporte N\00B0 Oficio')
,p_column_link=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.::P247_ID_REPORTE,P247_ID_DECLRA:1262,#ID_DECLARA_CTO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(160755085156541021)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1607551'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ID_DECLARA_CTO:ID_DEUDOR:NUM_OFICIO:NOMBRE_ENTIDAD:ID_TIPO_IDENTIFICACION:CEDULA:NUMERO_PLACA:CONTRATO_ARRENDA:NOMBRE_ARRENDA:ID_TIPO_IDENTIFICA:CEDULA_ARRE:CODIGO_MONEDA:MONTO_TOTAL_TRANS:ID_OFICINA:NUM_COMPROBANTE:CARTA::CARTA_RN:ID_REPORTE_TTR:REP'
||'ORTE_NUM_OFICIO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(453477286856504144)
,p_plug_name=>'Comprobante de Pago'
,p_region_name=>'ID_COMPROB'
,p_parent_plug_id=>wwv_flow_api.id(158829462702968246)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_api.id(155139048344979462)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(453476497891504136)
,p_name=>'Datos'
,p_parent_plug_id=>wwv_flow_api.id(453477286856504144)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_COMPROBANTE,',
'       ID_DECLARA_CTO,',
'       NUM_DEPOSITO,',
'       NOMBRE_ENTIDAD,',
'       FECHA_COMPROB,',
'       CODIGO_MONEDA,',
'       MONTO_COMPROB',
'  from COMPROBANTE_PAGO_COT',
' where  ID_DECLARA_CTO =:P309_ID_DECLARA_CTO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P309_ID_DECLARA_CTO'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161049131232762664)
,p_query_column_id=>1
,p_column_alias=>'ID_COMPROBANTE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161049595635762664)
,p_query_column_id=>2
,p_column_alias=>'ID_DECLARA_CTO'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161049995344762665)
,p_query_column_id=>3
,p_column_alias=>'NUM_DEPOSITO'
,p_column_display_sequence=>3
,p_column_heading=>'Numero Deposito'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161050338254762665)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_ENTIDAD'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre Entidad'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(152535845160853093)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161050733353762665)
,p_query_column_id=>5
,p_column_alias=>'FECHA_COMPROB'
,p_column_display_sequence=>5
,p_column_heading=>'Fecha Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161051126192762665)
,p_query_column_id=>6
,p_column_alias=>'CODIGO_MONEDA'
,p_column_display_sequence=>6
,p_column_heading=>'Moneda'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(152534385609853094)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161051591198762665)
,p_query_column_id=>7
,p_column_alias=>'MONTO_COMPROB'
,p_column_display_sequence=>7
,p_column_heading=>'Monto Comprobante'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(453477321160504145)
,p_name=>'Archivos'
,p_parent_plug_id=>wwv_flow_api.id(453477286856504144)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ARCHIVO,',
'       ID_COMPROBANTE,',
'       NOMBRE_ARCHIVO,',
'       sys.dbms_lob.getlength(ARCHIVO)DESCARGAR,',
'       MIMETYPE,',
'       FEC_ACT',
'  from ARCHIVO_COMPROB_PAGO_COT',
'where ID_COMPROBANTE = :P309_ID_COMPROBANTE_PAGO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P309_ID_COMPROBANTE_PAGO'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161046425469762662)
,p_query_column_id=>1
,p_column_alias=>'ID_ARCHIVO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161046884990762663)
,p_query_column_id=>2
,p_column_alias=>'ID_COMPROBANTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161047258623762663)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ARCHIVO'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161048404018762664)
,p_query_column_id=>4
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>4
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVO_COMPROB_PAGO_COT:ARCHIVO:ID_ARCHIVO::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161047671493762663)
,p_query_column_id=>5
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161048071301762663)
,p_query_column_id=>6
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>6
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(914717875509320688)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(158829462702968246)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Reporte por numero de oficio al Registro Nacional</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(160743049089540623)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(914717875509320688)
,p_button_name=>'BTN_PDF'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar PDF'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.::P247_ID_REPORTE:1262'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(160742374650540616)
,p_name=>'P309_ID_DECLARA_CTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(453477286856504144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161045825929762655)
,p_name=>'P309_ID_COMPROBANTE_PAGO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(453477286856504144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(167972344809571014)
,p_name=>'P309_TIPO_CONTRIBUYENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(914717875509320688)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(160742508654540618)
,p_name=>'DAC_REFRESH_REPORT_COMPROB'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P309_ID_DECLARA_CTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(160742644147540619)
,p_event_id=>wwv_flow_api.id(160742508654540618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(453476497891504136)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(160742704788540620)
,p_name=>'DAC_REFRESH_ARCHI_COMPROB'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P309_ID_COMPROBANTE_PAGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(160742893284540621)
,p_event_id=>wwv_flow_api.id(160742704788540620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(453477321160504145)
);
wwv_flow_api.component_end;
end;
/
