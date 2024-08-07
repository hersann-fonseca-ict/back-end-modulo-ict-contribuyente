prompt --application/pages/page_00453
begin
--   Manifest
--     PAGE: 00453
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
 p_id=>453
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'453-Bitacora Carga Documentos Contrib'
,p_alias=>'453-BITACORA-CARGA-DOCUMENTOS-CONTRIB'
,p_step_title=>unistr('Bit\00E1cora Carga Documentos')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230126150911'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(300232797303595809)
,p_plug_name=>'453-Bitacora Carga Documentos Contrib'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(155144585020979460)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'BITA_DOCTOS_ICT_CONTRIB_SIT'
,p_query_order_by=>'ID_DOCUMENTO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'453-Bitacora Carga Documentos Contrib'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(300232933790595809)
,p_name=>'453-Bitacora Carga Documentos Contrib'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'KIMBERLYN.SOLANO'
,p_internal_uid=>300232933790595809
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152712903170021884)
,p_db_column_name=>'ID_DOCUMENTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Documento'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152713319372021879)
,p_db_column_name=>'NOMBRE_ARCHIVO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Archivo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152713748247021879)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152714184223021879)
,p_db_column_name=>'TIPO_ARCHIVO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Tipo Archivo'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(162833464725586672)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152714517364021879)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('Descripci\00F3n')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152714948229021878)
,p_db_column_name=>'FECHA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152715357736021878)
,p_db_column_name=>'ID_TIPO_OPERACION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>unistr('Tipo Operaci\00F3n')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(180610561703341055)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(152715715653021878)
,p_db_column_name=>'USUARIO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(300236497319593981)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1527161'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_DOCUMENTO:NOMBRE_ARCHIVO:MIMETYPE:TIPO_ARCHIVO:DESCRIPCION:FECHA:ID_TIPO_OPERACION:USUARIO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1884167682894667125)
,p_plug_name=>'Titulo'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Bit\00E1cora Carga Documentos</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
