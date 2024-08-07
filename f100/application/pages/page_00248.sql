prompt --application/pages/page_00248
begin
--   Manifest
--     PAGE: 00248
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
 p_id=>248
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'248-Cartas al Registro Nacional COT'
,p_alias=>'248-CARTAS-AL-REGISTRO-NACIONAL-COT'
,p_step_title=>'Cartas al Registro Nacional COT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230511155601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(294486116341612344)
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
 p_id=>wwv_flow_api.id(166180907475266322)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(294486116341612344)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(294427294121677615)
,p_name=>'Reporte Cartas al RN'
,p_parent_plug_id=>wwv_flow_api.id(294486116341612344)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_DECLARA_CTO,',
'       NOMBRE_ENTIDAD,',
'       ID_TIPO_IDENTIFICACION,',
'       CEDULA,',
'       FECHA,',
'       NUMERO_PLACA,',
'       CONTRATO_ARRENDA,',
'       NOMBRE_ARRENDA,',
'       ID_TIPO_IDENTIFICA,',
'       CEDULA_ARRE,',
'       MONTO_TOTAL_TRANS,',
'       ID_OFICINA,',
'       CODIGO_MONEDA,',
'  DECODE (CONTRATO_ARRENDA,''S'',1242,''N'',1304)ID_REPORTE',
'  from DECLARA_CHARTER_TERRESTRE_O',
'  where CODIGO_ESTADO = ''A''',
'  AND   ID_DECLARA_CTO = NVL(:P248_ID_DECLARA, ID_DECLARA_CTO)',
'  AND   ID_DECLARA_CTO NOT IN (SELECT ID_DECLARA_CTO FROM ARCHIVO_CARTAS_RN_COT)',
'  AND   PKG_MAESTRO_CONTRIBUYENTE.RETORNA_TIPO_CONTRIBUYENTE (ID_CONTRIBUYENTE) = :P248_TIPO_CONTRIBUYENTE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P248_ID_DECLARA,P248_TIPO_CONTRIBUYENTE'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152686457019735491)
,p_query_column_id=>1
,p_column_alias=>'ID_DECLARA_CTO'
,p_column_display_sequence=>1
,p_column_heading=>unistr('N\00BA Tramite')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152686816612735491)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_ENTIDAD'
,p_column_display_sequence=>2
,p_column_heading=>'Nombre Entidad'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152681223500735494)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_IDENTIFICACION'
,p_column_display_sequence=>4
,p_column_heading=>unistr('Tipo Identificaci\00F3n')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(160819142014193368)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152681638567735494)
,p_query_column_id=>4
,p_column_alias=>'CEDULA'
,p_column_display_sequence=>5
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152682071477735494)
,p_query_column_id=>5
,p_column_alias=>'FECHA'
,p_column_display_sequence=>6
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152682449111735493)
,p_query_column_id=>6
,p_column_alias=>'NUMERO_PLACA'
,p_column_display_sequence=>3
,p_column_heading=>unistr('N\00BA Placa')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152682827881735493)
,p_query_column_id=>7
,p_column_alias=>'CONTRATO_ARRENDA'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152683200538735493)
,p_query_column_id=>8
,p_column_alias=>'NOMBRE_ARRENDA'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152683600185735492)
,p_query_column_id=>9
,p_column_alias=>'ID_TIPO_IDENTIFICA'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152684082451735492)
,p_query_column_id=>10
,p_column_alias=>'CEDULA_ARRE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152684420224735492)
,p_query_column_id=>11
,p_column_alias=>'MONTO_TOTAL_TRANS'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152685284329735492)
,p_query_column_id=>12
,p_column_alias=>'ID_OFICINA'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152685667782735491)
,p_query_column_id=>13
,p_column_alias=>'CODIGO_MONEDA'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152686089876735491)
,p_query_column_id=>14
,p_column_alias=>'ID_REPORTE'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152680892957735496)
,p_query_column_id=>15
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>15
,p_column_heading=>'Ver y descargar carta'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.::P247_ID_DECLRA,P247_NOMBRE_ENTIDAD,P247_ID_TIPO_IDENTIFICACION,P247_CEDULA,P247_PLACA,P247_TIPO_CED_ARRE,P247_CED_ARRE,P247_NOM_ARRENDATARIO,P247_CODIGO_MONEDA,P247_ID_OFICINA,P247_ID_REPORTE,P247_MONTO_TOTAL_TRAN'
||'S,P247_CONTRATO:#ID_DECLARA_CTO#,#NOMBRE_ENTIDAD#,#ID_TIPO_IDENTIFICACION#,#CEDULA#,#NUMERO_PLACA#,#ID_TIPO_IDENTIFICA#,#CEDULA_ARRE#,#NOMBRE_ARRENDA#,#CODIGO_MONEDA#,#ID_OFICINA#,#ID_REPORTE#,#MONTO_TOTAL_TRANS#,#CONTRATO_ARRENDA#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152684821559735492)
,p_query_column_id=>16
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>16
,p_column_heading=>'Cargar Carta Firmada'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:249:&SESSION.::&DEBUG.::P249_ID_DECLARA_CTO,P249_ID_OFICINA,P249_TIPO_CONTRIBUYENTE:#ID_DECLARA_CTO#,#ID_OFICINA#,&P248_TIPO_CONTRIBUYENTE.'
,p_column_linktext=>'<img src="#APP_IMAGES#carga.jpg#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(969346652063527530)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(294486116341612344)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Declaraci\00F3n Jurada de Ch\00E1rter Terrestre Transporte Internacional</h3></center>'),
'<center><h3>Cartas al Registro Nacional</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(166181055888266323)
,p_name=>'P248_ID_DECLARA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(166180907475266322)
,p_prompt=>unistr('N\00BA Tramite')
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
 p_id=>wwv_flow_api.id(166183773433266350)
,p_name=>'P248_TIPO_CONTRIBUYENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(166180907475266322)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(166181228945266325)
,p_name=>'DA_CLOSE_DIALOG'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(294427294121677615)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(166181387976266326)
,p_event_id=>wwv_flow_api.id(166181228945266325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(294427294121677615)
);
wwv_flow_api.component_end;
end;
/
