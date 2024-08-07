prompt --application/pages/page_00312
begin
--   Manifest
--     PAGE: 00312
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
 p_id=>312
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'312-Reporte Notificaciones enviadas a RN'
,p_alias=>'312-REPORTE-NOTIFICACIONES-ENVIADAS-A-RN'
,p_step_title=>'Notificaciones enviadas a RN'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230414154001'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(163230153730154205)
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
 p_id=>wwv_flow_api.id(163230894131154212)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(163230153730154205)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(163386247582714851)
,p_name=>'Reporte notificaciones al RN'
,p_parent_plug_id=>wwv_flow_api.id(163230153730154205)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CARTA,',
'       ID_DECLARA_CTO,',
'       NOMBRE_ARCHIVO,',
'       sys.dbms_lob.getlength(ARCHIVO)DESCARGAR,',
'       MIMETYPE,',
'       FEC_ACT,  ',
'       NUM_OFICIO,',
'       ID_OFICINA,',
'       PKG_TRAMITE_COT.RETORNA_ID_CONTRIB_DECLARACION (ID_DECLARA_CTO)ID_CONTRIBUYENTE,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (PKG_TRAMITE_COT.RETORNA_ID_CONTRIB_DECLARACION (ID_DECLARA_CTO))ID_DEUDOR,',
'       PKG_MAESTRO_CONTRIBUYENTE.F_RETORNA_NOM_CONTRI(PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (PKG_TRAMITE_COT.RETORNA_ID_CONTRIB_DECLARACION (ID_DECLARA_CTO)))NOM_ADM,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_TIPO_CONTRIBUYENTE (PKG_TRAMITE_COT.RETORNA_ID_CONTRIB_DECLARACION (ID_DECLARA_CTO))TIPO_CONTRIBUYENTE',
'  from ARCHIVO_CARTAS_RN_COT',
'  where PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (PKG_TRAMITE_COT.RETORNA_ID_CONTRIB_DECLARACION (ID_DECLARA_CTO)) = NVL(:P312_ID_DEUDOR,PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (PKG_TRAMITE_COT.RETORNA_ID_CONTRIB_DECLARACION (I'
||'D_DECLARA_CTO)))',
'  and   NUM_OFICIO = NVL(:P312_NUM_OFICIO, NUM_OFICIO)',
'  AND   PKG_MAESTRO_CONTRIBUYENTE.RETORNA_TIPO_CONTRIBUYENTE (PKG_TRAMITE_COT.RETORNA_ID_CONTRIB_DECLARACION (ID_DECLARA_CTO)) = :P312_TIPO_CONTRIBUYENTE',
'  --and TO_DATE(FEC_ACT,''DD/MM/YY'') BETWEEN TO_DATE(:P312_FECHA,''DD/MM/YY'') AND TO_DATE(:P312_FECHA,''DD/MM/YY'') ',
'  '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P312_ID_DEUDOR,P312_NUM_OFICIO,P312_FECHA,P312_TIPO_CONTRIBUYENTE'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Descargar Excel'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_exp_filename=>'Notificaciones Efectuadas al Registro Nacional'
,p_plug_query_exp_separator=>';'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163386659418714865)
,p_query_column_id=>1
,p_column_alias=>'ID_CARTA'
,p_column_display_sequence=>1
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163386928594714867)
,p_query_column_id=>2
,p_column_alias=>'ID_DECLARA_CTO'
,p_column_display_sequence=>5
,p_column_heading=>unistr('N\00BA Tramite')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163387365185714867)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ARCHIVO'
,p_column_display_sequence=>8
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163230285535154206)
,p_query_column_id=>4
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>10
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVO_CARTAS_RN_COT:ARCHIVO:ID_CARTA::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::attachment:Descargar:'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163388132849714867)
,p_query_column_id=>5
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163230478744154208)
,p_query_column_id=>6
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>9
,p_column_heading=>unistr('Fecha envi\00F3')
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163388907906714868)
,p_query_column_id=>7
,p_column_alias=>'NUM_OFICIO'
,p_column_display_sequence=>6
,p_column_heading=>unistr('N\00BA Oficio')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163389373869714868)
,p_query_column_id=>8
,p_column_alias=>'ID_OFICINA'
,p_column_display_sequence=>7
,p_column_heading=>'Oficina'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(152535255122853094)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163230677134154210)
,p_query_column_id=>9
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_column_heading=>'Id Contribuyente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163230591824154209)
,p_query_column_id=>10
,p_column_alias=>'ID_DEUDOR'
,p_column_display_sequence=>3
,p_column_heading=>unistr('C\00F3digo Tributario')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163230724015154211)
,p_query_column_id=>11
,p_column_alias=>'NOM_ADM'
,p_column_display_sequence=>4
,p_column_heading=>'Entidad'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(167973368068571024)
,p_query_column_id=>12
,p_column_alias=>'TIPO_CONTRIBUYENTE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1153932847066714845)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(163230153730154205)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Notificaciones Efectuadas al Registro Nacional</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(163231211378154216)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(163230894131154212)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(163231329138154217)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(163230894131154212)
,p_button_name=>'BTN_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(163230976860154213)
,p_name=>'P312_NUM_OFICIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(163230894131154212)
,p_prompt=>unistr('N\00B0 Oficio')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(163231009144154214)
,p_name=>'P312_FECHA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(163230894131154212)
,p_prompt=>'Fecha'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(163231117812154215)
,p_name=>'P312_ID_DEUDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(163230894131154212)
,p_prompt=>unistr('C\00F3digo Tributario')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(167973447464571025)
,p_name=>'P312_TIPO_CONTRIBUYENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(163230894131154212)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(163231467702154218)
,p_name=>'DAC_LIMPIAR_FILTROS'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(163231329138154217)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(163231590489154219)
,p_event_id=>wwv_flow_api.id(163231467702154218)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P312_ID_DEUDOR,P312_NUM_OFICIO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(163231604934154220)
,p_event_id=>wwv_flow_api.id(163231467702154218)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(163386247582714851)
);
wwv_flow_api.component_end;
end;
/
