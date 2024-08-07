prompt --application/pages/page_00231
begin
--   Manifest
--     PAGE: 00231
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
 p_id=>231
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'231-Registro o cambio persona autorizada a firma digital'
,p_alias=>'231-REGISTRO-O-CAMBIO-PERSONA-AUTORIZADA-A-FIRMA-DIGITAL'
,p_step_title=>'Registro o cambio persona autorizada a firma digital'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//Funcion para redireccionar a la pagina 135 y visualizar el archivo del apoderado',
'function Ir_Archivo_apoderado(pIdArchi, pIDApo,pIdContrib,pMostrar) {',
'    var vURL = ''f?p=&APP_ID.:135:&APP_SESSION.::NO:135:P135_ID_ARCHI_APODERA,P135_ID_APODERADO,P135_ID_CONTRIBUYENTE,P135_MOSTRAR_REGION:'' + pIdArchi + '','' + pIDApo+ '','' + pIdContrib+ '','' + pMostrar;',
'    window.open(vURL, "", "width=1000,height=800");',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230706141053'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(192668252860721745)
,p_plug_name=>'Registro o cambio  de apoderados o persona autorizada firma digital'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(185698876218458997)
,p_name=>'Registro a cambio de Apoderados'
,p_parent_plug_id=>wwv_flow_api.id(192668252860721745)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID_APODERADO,',
'       a.ID_CONTRIBUYENTE,',
'       a.ID_TIPO_APODERADO,',
'       a.NOMBRE_APODERADO,',
'       a.CEDULA_APODERADO,',
'       a.CORREO_APODERADO,',
'       a.ID_TIPO_IMPUESTO,',
'       a.INDICA_AUTORIZO,',
'       a.FECHA_INICIO_AUTORIZA,',
'       a.FECHA_FIN_AUTORIZA,',
'       a.CODIGO_ESTADO,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (a.ID_CONTRIBUYENTE)CODIGO_TRIBUTARIO',
'      -- b.ID_ARCHI_APODERA,',
'      -- b.NOMBRE_ARCHIVO,',
'      -- sys.dbms_lob.getlength(b.ARCHIVO_APODERADO)VER,',
'       --sys.dbms_lob.getlength(b.ARCHIVO_APODERADO)DESCARGAR,',
'      -- b.MIMETYPE,',
'       --b.FEC_ACT',
'  from APODERADOS a--, ARCHIVOS_APODERADOS b',
'  where /*a.ID_APODERADO = b.ID_APODERADO',
'  and*/   a.INDICA_AUTORIZO in (''A'')',
'  and   a.CODIGO_ESTADO = ''P''',
'  and   PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (a.ID_CONTRIBUYENTE) = NVL(:P231_ID_CONTRIB,PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (a.ID_CONTRIBUYENTE))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P231_ID_CONTRIB'
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
 p_id=>wwv_flow_api.id(185699189740459006)
,p_query_column_id=>1
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>3
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185699631551459010)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_column_heading=>'Contribuyente'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE_ENTIDAD,ID_CONTRIBUYENTE',
'FROM MAESTRO_CONTRIBUYENTE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185699983133459010)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_APODERADO'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185700453069459010)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_APODERADO'
,p_column_display_sequence=>5
,p_column_heading=>'Nombre Apoderado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185700866614459010)
,p_query_column_id=>5
,p_column_alias=>'CEDULA_APODERADO'
,p_column_display_sequence=>6
,p_column_heading=>'Cedula Apoderado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185701213237459010)
,p_query_column_id=>6
,p_column_alias=>'CORREO_APODERADO'
,p_column_display_sequence=>7
,p_column_heading=>'Correo Apoderado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185701672819459011)
,p_query_column_id=>7
,p_column_alias=>'ID_TIPO_IMPUESTO'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185702013560459011)
,p_query_column_id=>8
,p_column_alias=>'INDICA_AUTORIZO'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185702408304459011)
,p_query_column_id=>9
,p_column_alias=>'FECHA_INICIO_AUTORIZA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185702817882459011)
,p_query_column_id=>10
,p_column_alias=>'FECHA_FIN_AUTORIZA'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185703232212459011)
,p_query_column_id=>11
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>12
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
 p_id=>wwv_flow_api.id(230459127473560185)
,p_query_column_id=>12
,p_column_alias=>'CODIGO_TRIBUTARIO'
,p_column_display_sequence=>1
,p_column_heading=>'Codigo Tributario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185236476139199191)
,p_query_column_id=>13
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>15
,p_column_heading=>'Aprobar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P231_ID_CONTRIBUYENTE'',''#ID_CONTRIBUYENTE#'');javascript:$s(''P231_APODERADO'',''#NOMBRE_APODERADO#'');javascript:$s(''P231_ID_APO'',''#ID_APODERADO#'');javascript:openModal(''ID_APO''); $("#ID_APO").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185732219948161544)
,p_query_column_id=>14
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>14
,p_column_heading=>'Rechazar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.::P230_ID_CONTRIBUYENTE,P230_ID_TIPO_SOLICITUD,P230_PAGINA,P230_ID_APODERADO,P230_TIPO_CORREO:#ID_CONTRIBUYENTE#,9,231,#ID_APODERADO#,R'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191370846897796145)
,p_query_column_id=>15
,p_column_alias=>'DERIVED$03'
,p_column_display_sequence=>13
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P231_ID_APODERADO'',''#ID_APODERADO#'');javascript:openModal(''ARCHI_APO''); $("#ARCHI_APO").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(185235886563199186)
,p_plug_name=>'Aprobar Solicitud'
,p_region_name=>'ID_APO'
,p_parent_plug_id=>wwv_flow_api.id(185698876218458997)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(155139048344979462)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(311758193757981864)
,p_name=>'Archivos Apoderados'
,p_region_name=>'ARCHI_APO'
,p_parent_plug_id=>wwv_flow_api.id(185698876218458997)
,p_template=>wwv_flow_api.id(155139048344979462)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>1
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.ID_APODERADO,',
'       b.ID_ARCHI_APODERA,',
'       b.NOMBRE_ARCHIVO,',
'       sys.dbms_lob.getlength(b.ARCHIVO_APODERADO)VER,',
'       sys.dbms_lob.getlength(b.ARCHIVO_APODERADO)DESCARGAR,',
'       b.MIMETYPE',
'  from ARCHIVOS_APODERADOS b',
'  WHERE b.ID_APODERADO = :P231_ID_APODERADO',
'  '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P231_ID_APODERADO'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(229824366456483477)
,p_query_column_id=>1
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(229824767237483472)
,p_query_column_id=>2
,p_column_alias=>'ID_ARCHI_APODERA'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(229825162906483472)
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
 p_id=>wwv_flow_api.id(229826362844483471)
,p_query_column_id=>4
,p_column_alias=>'VER'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_APODERA_SOLICITUD:ARCHIVO_APODERADO:ID_ARCHI_APODERA::MIMETYPE:NOMBRE_ARCHIVO:::inline:Ver:'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(229825553721483471)
,p_query_column_id=>5
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_APODERADOS:ARCHIVO_APODERADO:ID_ARCHI_APODERA::MIMETYPE:NOMBRE_ARCHIVO:::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(229825940822483471)
,p_query_column_id=>6
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(229826707152483470)
,p_query_column_id=>7
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>7
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_apoderado(''#ID_ARCHI_APODERA#'', ''#ID_APODERADO#'', ''&P201_ID_NUM_INSCRIPCION.'', ''AIR'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(192668365317721746)
,p_plug_name=>'Filtro'
,p_parent_plug_id=>wwv_flow_api.id(192668252860721745)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(230459182941560186)
,p_name=>'Registro o cambio Apoderado Firma Digital'
,p_parent_plug_id=>wwv_flow_api.id(192668252860721745)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID_APODERADO,',
'       a.ID_CONTRIBUYENTE,',
'       a.ID_TIPO_APODERADO,',
'       a.NOMBRE_APODERADO,',
'       a.CEDULA_APODERADO,',
'       a.CORREO_APODERADO,',
'       a.ID_TIPO_IMPUESTO,',
'       a.INDICA_AUTORIZO,',
'       a.FECHA_INICIO_AUTORIZA,',
'       a.FECHA_FIN_AUTORIZA,',
'       a.CODIGO_ESTADO,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (a.ID_CONTRIBUYENTE)CODIGO_TRIBUTARIO',
'      -- b.ID_ARCHI_APODERA,',
'      -- b.NOMBRE_ARCHIVO,',
'      -- sys.dbms_lob.getlength(b.ARCHIVO_APODERADO)VER,',
'       --sys.dbms_lob.getlength(b.ARCHIVO_APODERADO)DESCARGAR,',
'      -- b.MIMETYPE,',
'       --b.FEC_ACT',
'  from APODERADOS a--, ARCHIVOS_APODERADOS b',
'  where /*a.ID_APODERADO = b.ID_APODERADO',
'  and*/   a.INDICA_AUTORIZO in (''F'')',
'  and   a.CODIGO_ESTADO = ''P''',
'  and   PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (a.ID_CONTRIBUYENTE) = NVL(:P231_ID_CONTRIB,PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (a.ID_CONTRIBUYENTE))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P231_ID_CONTRIB'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230459401871560188)
,p_query_column_id=>1
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>2
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230459566565560189)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>4
,p_column_heading=>'Contribuyente'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE_ENTIDAD,ID_CONTRIBUYENTE',
'FROM MAESTRO_CONTRIBUYENTE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230459593861560190)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_APODERADO'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230459701877560191)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_APODERADO'
,p_column_display_sequence=>6
,p_column_heading=>'Nombre Apoderado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230459864514560192)
,p_query_column_id=>5
,p_column_alias=>'CEDULA_APODERADO'
,p_column_display_sequence=>7
,p_column_heading=>'Cedula Apoderado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230613937037483043)
,p_query_column_id=>6
,p_column_alias=>'CORREO_APODERADO'
,p_column_display_sequence=>8
,p_column_heading=>'Correo Apoderado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230614063357483044)
,p_query_column_id=>7
,p_column_alias=>'ID_TIPO_IMPUESTO'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230614112977483045)
,p_query_column_id=>8
,p_column_alias=>'INDICA_AUTORIZO'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230614240574483046)
,p_query_column_id=>9
,p_column_alias=>'FECHA_INICIO_AUTORIZA'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230614309822483047)
,p_query_column_id=>10
,p_column_alias=>'FECHA_FIN_AUTORIZA'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230614451378483048)
,p_query_column_id=>11
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>14
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
 p_id=>wwv_flow_api.id(230614759724483051)
,p_query_column_id=>12
,p_column_alias=>'CODIGO_TRIBUTARIO'
,p_column_display_sequence=>3
,p_column_heading=>'Codigo Tributario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230614656706483050)
,p_query_column_id=>13
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>17
,p_column_heading=>'Aprobar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P231_ID_CONTRIBUYENTE'',''#ID_CONTRIBUYENTE#'');javascript:$s(''P231_APODERADO'',''#NOMBRE_APODERADO#'');javascript:$s(''P231_ID_APO'',''#ID_APODERADO#'');javascript:openModal(''ID_APO''); $("#ID_APO").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230614535149483049)
,p_query_column_id=>14
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>16
,p_column_heading=>'Rechazar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.::P230_ID_CONTRIBUYENTE,P230_ID_TIPO_SOLICITUD,P230_PAGINA,P230_ID_APODERADO,P230_TIPO_CORREO:#ID_CONTRIBUYENTE#,10,231,#ID_APODERADO#,R'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230459359002560187)
,p_query_column_id=>15
,p_column_alias=>'DERIVED$03'
,p_column_display_sequence=>15
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P231_ID_APODERADO'',''#ID_APODERADO#'');javascript:openModal(''ARCHI_APO''); $("#ARCHI_APO").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(261048183960988248)
,p_query_column_id=>16
,p_column_alias=>'DERIVED$04'
,p_column_display_sequence=>13
,p_column_heading=>'Impuestos'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:242:&SESSION.::&DEBUG.::P242_ID_APODERADO:#ID_APODERADO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(230614796479483052)
,p_name=>'Registro o cambio Apoderado Terceros'
,p_parent_plug_id=>wwv_flow_api.id(192668252860721745)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID_APODERADO,',
'       a.ID_CONTRIBUYENTE,',
'       a.ID_TIPO_APODERADO,',
'       a.NOMBRE_APODERADO,',
'       a.CEDULA_APODERADO,',
'       a.CORREO_APODERADO,',
'       a.ID_TIPO_IMPUESTO,',
'       a.INDICA_AUTORIZO,',
'       a.FECHA_INICIO_AUTORIZA,',
'       a.FECHA_FIN_AUTORIZA,',
'       a.CODIGO_ESTADO,',
'       PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (a.ID_CONTRIBUYENTE)CODIGO_TRIBUTARIO',
'      -- b.ID_ARCHI_APODERA,',
'      -- b.NOMBRE_ARCHIVO,',
'      -- sys.dbms_lob.getlength(b.ARCHIVO_APODERADO)VER,',
'       --sys.dbms_lob.getlength(b.ARCHIVO_APODERADO)DESCARGAR,',
'      -- b.MIMETYPE,',
'       --b.FEC_ACT',
'  from APODERADOS a--, ARCHIVOS_APODERADOS b',
'  where /*a.ID_APODERADO = b.ID_APODERADO',
'  and*/   a.INDICA_AUTORIZO in (''T'')',
'  and   a.CODIGO_ESTADO = ''P''',
'  and   PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (a.ID_CONTRIBUYENTE) = NVL(:P231_ID_CONTRIB,PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (a.ID_CONTRIBUYENTE))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P231_ID_CONTRIB'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230614989640483054)
,p_query_column_id=>1
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>2
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230615175442483055)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>4
,p_column_heading=>'Contribuyente'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE_ENTIDAD,ID_CONTRIBUYENTE',
'FROM MAESTRO_CONTRIBUYENTE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230615190584483056)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_APODERADO'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230615370483483057)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_APODERADO'
,p_column_display_sequence=>6
,p_column_heading=>'Nombre Apoderado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230615437649483058)
,p_query_column_id=>5
,p_column_alias=>'CEDULA_APODERADO'
,p_column_display_sequence=>7
,p_column_heading=>'Cedula Apoderado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230615496050483059)
,p_query_column_id=>6
,p_column_alias=>'CORREO_APODERADO'
,p_column_display_sequence=>8
,p_column_heading=>'Correo Apoderado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230615585394483060)
,p_query_column_id=>7
,p_column_alias=>'ID_TIPO_IMPUESTO'
,p_column_display_sequence=>9
,p_column_heading=>'Tipo Impuesto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(161757268632851451)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230615733860483061)
,p_query_column_id=>8
,p_column_alias=>'INDICA_AUTORIZO'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230615859265483062)
,p_query_column_id=>9
,p_column_alias=>'FECHA_INICIO_AUTORIZA'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230615896138483063)
,p_query_column_id=>10
,p_column_alias=>'FECHA_FIN_AUTORIZA'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230616061729483064)
,p_query_column_id=>11
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>13
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
 p_id=>wwv_flow_api.id(230616366182483067)
,p_query_column_id=>12
,p_column_alias=>'CODIGO_TRIBUTARIO'
,p_column_display_sequence=>3
,p_column_heading=>'Codigo Tributario'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230616195788483066)
,p_query_column_id=>13
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>17
,p_column_heading=>'Aprobar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P231_ID_CONTRIBUYENTE'',''#ID_CONTRIBUYENTE#'');javascript:$s(''P231_APODERADO'',''#NOMBRE_APODERADO#'');javascript:$s(''P231_ID_APO'',''#ID_APODERADO#'');javascript:openModal(''ID_APO''); $("#ID_APO").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230616145454483065)
,p_query_column_id=>14
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>16
,p_column_heading=>'Rechazar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.::P230_ID_CONTRIBUYENTE,P230_ID_TIPO_SOLICITUD,P230_PAGINA,P230_ID_APODERADO,P230_TIPO_CORREO:#ID_CONTRIBUYENTE#,11,231,#ID_APODERADO#,R'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230614940752483053)
,p_query_column_id=>15
,p_column_alias=>'DERIVED$03'
,p_column_display_sequence=>15
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P231_ID_APODERADO'',''#ID_APODERADO#'');javascript:openModal(''ARCHI_APO''); $("#ARCHI_APO").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(261048347777988249)
,p_query_column_id=>16
,p_column_alias=>'DERIVED$04'
,p_column_display_sequence=>14
,p_column_heading=>'Impuestos'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:242:&SESSION.::&DEBUG.::P242_ID_APODERADO:#ID_APODERADO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(349614242417686229)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(192668252860721745)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Registro o cambio  de apoderados</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(192668725775721750)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(192668365317721746)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(185236317552199190)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(185235886563199186)
,p_button_name=>'BTN_APROBAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185236065476199187)
,p_name=>'P231_ID_CONTRIBUYENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(185235886563199186)
,p_prompt=>'Contribuyente'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE_ENTIDAD,ID_CONTRIBUYENTE',
'FROM MAESTRO_CONTRIBUYENTE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185236114821199188)
,p_name=>'P231_APODERADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(185235886563199186)
,p_prompt=>'Apoderado'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>5801312104779619
,p_default_application_id=>100
,p_default_id_offset=>149120778489414042
,p_default_owner=>'DESA_SIT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185732126991161543)
,p_name=>'P231_ID_APO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(185235886563199186)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(192668380609721747)
,p_name=>'P231_ID_CONTRIB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(192668365317721746)
,p_prompt=>unistr('C\00F3digo Tributario:')
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
 p_id=>wwv_flow_api.id(229114125884667571)
,p_name=>'P231_ID_APODERADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(311758193757981864)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(185236490523199192)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_APR_SOLICITUD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vTipoApoderado VARCHAR2(2);',
'vTipoSolicitud NUMBER;',
'',
'    CURSOR C_TIPO_APODERADO IS',
'    SELECT INDICA_AUTORIZO',
'    FROM APODERADOS',
'    WHERE ID_APODERADO = :P231_ID_APO;',
'BEGIN',
'UPDATE APODERADOS SET CODIGO_ESTADO = ''AC'',FECHA_INICIO_AUTORIZA = SYSDATE,USUARIO_SIT = :APP_USER WHERE ID_APODERADO = :P231_ID_APO AND ID_CONTRIBUYENTE = :P231_ID_CONTRIBUYENTE;',
'COMMIT;',
'',
'--Busca,os el tipo de apoderado para poder enviar la notificacion correcta.',
'    OPEN    C_TIPO_APODERADO;',
'    FETCH   C_TIPO_APODERADO INTO vTipoApoderado;',
'    CLOSE   C_TIPO_APODERADO;',
'    ',
'    IF vTipoApoderado = ''A'' THEN',
'        vTipoSolicitud := 9;',
'    ELSIF vTipoApoderado = ''F'' THEN',
'        vTipoSolicitud := 10;',
'    ELSIF vTipoApoderado = ''T'' THEN',
'        vTipoSolicitud := 11;',
'    END IF;',
'--Envio correo notificacion',
'PKG_ENVIO_NOTIF_ICT_CONTRIB.NOTIFICA_CONTRIBUYENTES (:P231_ID_CONTRIBUYENTE, NULL,vTipoSolicitud,''A'',''E'',0);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(185236317552199190)
);
wwv_flow_api.component_end;
end;
/
