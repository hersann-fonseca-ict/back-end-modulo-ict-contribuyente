prompt --application/pages/page_00313
begin
--   Manifest
--     PAGE: 00313
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
 p_id=>313
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'313-Reporte Puesto Fronterizo'
,p_alias=>'313-REPORTE-PUESTO-FRONTERIZO'
,p_step_title=>'Reporte Puesto Fronterizo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230320122033'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(163231838059154222)
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
 p_id=>wwv_flow_api.id(163231933345154223)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(163231838059154222)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(164221593726710833)
,p_name=>'Reporte Puesto Fronterizo'
,p_parent_plug_id=>wwv_flow_api.id(163231838059154222)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_DECLARA_CTO,',
'       NOMBRE_ENTIDAD,',
'       --ID_TIPO_IDENTIFICACION,',
'       --CEDULA,',
'       --ID_PROVINCIA,',
'       --ID_CANTON,',
'       --ID_DISTRITO,',
'       --DIRECCION_ENTIDAD,',
'       --TELEFONO1,',
'       --TELEFONO2,',
'       --FECHA,',
'       --NUMERO_PLACA,',
'      -- CONTRATO_ARRENDA,',
'      -- NOMBRE_ARRENDA,',
'       --ID_TIPO_IDENTIFICA,',
'       --CEDULA_ARRE,',
'       --FECHA_INI_EXCUSION,',
'       --FECHA_FIN_EXCUSION,',
'       --DESTINO_VIAJE,',
'       TOTAL_PASAJEROS,',
'       MONTO_TOTAL_TRANS,',
'       IMPUESTO_PAGAR,',
'       --NOMBRE_CHOFER,',
'       --NOMBRE_GUIA,',
'       CODIGO_ESTADO,',
'       --CORREO_NOTIFICA1,',
'       --CORREO_NOTIFICA2,',
'       --ID_OFICINA,',
'       --ID_OFICIO,',
'       --ID_DOCUMENTO,',
'       --USUARIO_SIT,',
'       ID_TIPO_PUESTO,',
'       --CODIGO_MONEDA,',
'       --CHECK_ACEPTA,',
'       ID_CONTRIBUYENTE,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE)ID_DEUDOR',
'  from DECLARA_CHARTER_TERRESTRE_O',
'  where PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE) = NVL(:P313_ID_DEUDOR,PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (ID_CONTRIBUYENTE))',
'  and   ID_TIPO_PUESTO = NVL(:P313_ID_PUESTO, ID_TIPO_PUESTO)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P313_ID_DEUDOR'
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
,p_plug_query_exp_separator=>';'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164221932052710842)
,p_query_column_id=>1
,p_column_alias=>'ID_DECLARA_CTO'
,p_column_display_sequence=>3
,p_column_heading=>unistr('N\00BA Tramite')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164222391966710844)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_ENTIDAD'
,p_column_display_sequence=>4
,p_column_heading=>'Entidad'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163232147801154225)
,p_query_column_id=>3
,p_column_alias=>'TOTAL_PASAJEROS'
,p_column_display_sequence=>5
,p_column_heading=>'Total Pasajeros'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164229940179710849)
,p_query_column_id=>4
,p_column_alias=>'MONTO_TOTAL_TRANS'
,p_column_display_sequence=>6
,p_column_heading=>'Monto Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164230332781710849)
,p_query_column_id=>5
,p_column_alias=>'IMPUESTO_PAGAR'
,p_column_display_sequence=>7
,p_column_heading=>'Impuesto Pagar'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164231577756710850)
,p_query_column_id=>6
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>8
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164234304123710851)
,p_query_column_id=>7
,p_column_alias=>'ID_TIPO_PUESTO'
,p_column_display_sequence=>9
,p_column_heading=>'Tipo Puesto Fronterizo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(189376881463535123)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(164235518550710851)
,p_query_column_id=>8
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>1
,p_column_heading=>'Id Contribuyente'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163231769797154221)
,p_query_column_id=>9
,p_column_alias=>'ID_DEUDOR'
,p_column_display_sequence=>2
,p_column_heading=>unistr('C\00F3digo Tributario')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1318218431275328210)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(163231838059154222)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Reporte Puesto Fronterizo y Estado de Cuenta</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(163232065512154224)
,p_name=>'P313_ID_DEUDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(163231933345154223)
,p_prompt=>unistr('C\00F3digo Tributario ')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(163232202811154226)
,p_name=>'P313_ID_PUESTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(163231933345154223)
,p_prompt=>'Puesto Fronterizo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPOS_PUESTOS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.component_end;
end;
/
