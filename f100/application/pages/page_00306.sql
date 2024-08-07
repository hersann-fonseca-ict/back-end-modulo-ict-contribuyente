prompt --application/pages/page_00306
begin
--   Manifest
--     PAGE: 00306
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
 p_id=>306
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>unistr('306-Reporte por entidad y c\00F3digo deudor COT')
,p_alias=>unistr('306-REPORTE-POR-ENTIDAD-Y-C\00D3DIGO-DEUDOR-COT')
,p_step_title=>unistr('Reporte por entidad y c\00F3digo deudor ')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230502151412'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(152945859285459431)
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
 p_id=>wwv_flow_api.id(152946879092459441)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(152945859285459431)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(156707638563855676)
,p_name=>unistr('Reporte por entidad y c\00F3digo deudor ')
,p_parent_plug_id=>wwv_flow_api.id(152945859285459431)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select M.ID_CONTRIBUYENTE,',
'       M.ID_DEUDOR,',
'       M.NOMBRE_ENTIDAD,',
'       ID_TIPO_IDENTIFICACION,',
'       DECODE (M.ID_TIPO_IDENTIFICACION,''1'',M.CEDULA_JURIDICA,''2'',M.CEDULA_FISICA)CEDULA,',
'       M.ID_TIPO_CONTRIBUYENTE,',
'       M.DIRECCION_ENTIDAD,',
'       M.ID_PROVINCIA_ENTIDAD,',
'       PKG_INSCRIPCION_REGULAR.OBTIENE_DESC_CANTON (M.ID_PROVINCIA_ENTIDAD)CANTON,',
'       PKG_INSCRIPCION_REGULAR.OBTIENE_DESC_DISTRITO(M.ID_PROVINCIA_ENTIDAD,M.ID_CANTON_ENTIDAD)DISTRITO,',
'       M.CODIGO_ESTADO,',
'       M.FECHA_INSCRIPCION,',
'       M.ID_NUM_INSCRIPCION,',
'       (SELECT CORREO_NOTIFICA FROM CORREO_NOTIFICACIONES WHERE ID_CORREO_NOTIFICA in (SELECT MAX(ID_CORREO_NOTIFICA)FROM CORREO_NOTIFICACIONES WHERE ID_CONTRIBUYENTE = M.ID_CONTRIBUYENTE AND CODIGO_ESTADO = ''AC''))CORREO,',
'       (SELECT TELEFONO FROM TELEFONO_X_MAESTRO_CONTRIBU WHERE ID_TELEFONO IN (SELECT MAX(ID_TELEFONO) FROM TELEFONO_X_MAESTRO_CONTRIBU WHERE ID_CONTRIBUYENTE = M.ID_CONTRIBUYENTE))TELEFONO',
'  from MAESTRO_CONTRIBUYENTE M',
'  where M.ID_TIPO_CONTRIBUYENTE = :P306_TIPO_CONTRIBUYENTE',
' --AND M.NOMBRE_ENTIDAD LIKE :P306_ENTIDAD',
'  AND  M.ID_DEUDOR = NVL(:P306_ID_DEUDOR,ID_DEUDOR)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P306_ENTIDAD,P306_ID_DEUDOR,P306_TIPO_CONTRIBUYENTE'
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
,p_plug_query_exp_filename=>'Reporte por entidad y id deudor'
,p_plug_query_exp_separator=>';'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152945759349459430)
,p_query_column_id=>1
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>1
,p_column_heading=>unistr('N\00B0 Contribuyente')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152945617332459429)
,p_query_column_id=>2
,p_column_alias=>'ID_DEUDOR'
,p_column_display_sequence=>2
,p_column_heading=>unistr('C\00F3digo Tributario')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156708472552855690)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ENTIDAD'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre Entidad'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156708823311855690)
,p_query_column_id=>4
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
 p_id=>wwv_flow_api.id(152945957584459432)
,p_query_column_id=>5
,p_column_alias=>'CEDULA'
,p_column_display_sequence=>5
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156710876955855690)
,p_query_column_id=>6
,p_column_alias=>'ID_TIPO_CONTRIBUYENTE'
,p_column_display_sequence=>6
,p_column_heading=>'Tipo Contribuyente'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(181879233338093932)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156712044052855691)
,p_query_column_id=>7
,p_column_alias=>'DIRECCION_ENTIDAD'
,p_column_display_sequence=>10
,p_column_heading=>unistr('Direcci\00F3n')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156712402269855691)
,p_query_column_id=>8
,p_column_alias=>'ID_PROVINCIA_ENTIDAD'
,p_column_display_sequence=>7
,p_column_heading=>'Provincia '
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'SELECT DESCRIPCION, ID FROM PROVINCIAS@consulta_ictx'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152946037031459433)
,p_query_column_id=>9
,p_column_alias=>'CANTON'
,p_column_display_sequence=>8
,p_column_heading=>'Canton'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152946113983459434)
,p_query_column_id=>10
,p_column_alias=>'DISTRITO'
,p_column_display_sequence=>9
,p_column_heading=>'Distrito'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156717618120855695)
,p_query_column_id=>11
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>13
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(164723649596609236)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156718035390855695)
,p_query_column_id=>12
,p_column_alias=>'FECHA_INSCRIPCION'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152946785670459440)
,p_query_column_id=>13
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(160743249838540625)
,p_query_column_id=>14
,p_column_alias=>'CORREO'
,p_column_display_sequence=>11
,p_column_heading=>'Ultimo Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(160743303331540626)
,p_query_column_id=>15
,p_column_alias=>'TELEFONO'
,p_column_display_sequence=>12
,p_column_heading=>unistr('Ultimo Tel\00E9fono')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152946381668459436)
,p_query_column_id=>16
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>15
,p_column_heading=>'Telefonos'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P306_ID_CONTRIBUYENTE'',''#ID_CONTRIBUYENTE#'');javascript:openModal(''ID_TEL''); $("#ID_TEL").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152946483748459437)
,p_query_column_id=>17
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>16
,p_column_heading=>'Correos'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P306_ID_CONTRIBUYENTE'',''#ID_CONTRIBUYENTE#'');javascript:openModal(''ID_CORREO''); $("#ID_CORREO").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152946544465459438)
,p_query_column_id=>18
,p_column_alias=>'DERIVED$03'
,p_column_display_sequence=>17
,p_column_heading=>'Documentos'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P306_ID_NUM_INSCRIPCION'',''#ID_NUM_INSCRIPCION#'');javascript:openModal(''ID_DOC''); $("#ID_DOC").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(163229822203154202)
,p_query_column_id=>19
,p_column_alias=>'DERIVED$04'
,p_column_display_sequence=>19
,p_column_heading=>'Declaraciones Jurada'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:311:&SESSION.::&DEBUG.::P311_ID_CONTRIBUYENTE,P311_TIPO_CONTRIBUYENTE:#ID_CONTRIBUYENTE#,&P306_TIPO_CONTRIBUYENTE.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(440080585041710160)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(152945859285459431)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Reporte por entidad y id deudor</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(319200442354853297)
,p_name=>'Documentos '
,p_region_name=>'ID_DOC'
,p_template=>wwv_flow_api.id(155139048344979462)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ARCHI_REQUI,',
'       ID_REQUISITOS_INS,',
'       ID_NUM_INSCRIPCION,',
'       NOMBRE_REQUISITO,',
'       sys.dbms_lob.getlength(ARCHIVO)VER,',
'       sys.dbms_lob.getlength(ARCHIVO)DESCARGAR,',
'       MIMETYPE,',
'       FEC_ACT',
'  from ARCHIVOS_REQUI_INSCRIP',
'  where ID_NUM_INSCRIPCION = :P306_ID_NUM_INSCRIPCION'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P306_ID_NUM_INSCRIPCION'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156827903063589047)
,p_query_column_id=>1
,p_column_alias=>'ID_ARCHI_REQUI'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156828344945589048)
,p_query_column_id=>2
,p_column_alias=>'ID_REQUISITOS_INS'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156828798394589048)
,p_query_column_id=>3
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156829106759589048)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_REQUISITO'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156829584242589048)
,p_query_column_id=>5
,p_column_alias=>'VER'
,p_column_display_sequence=>6
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_REQUI_INSCRIP:ARCHIVO:ID_ARCHI_REQUI::MIMETYPE:NOMBRE_REQUISITO:::inline:Ver:'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156829970647589049)
,p_query_column_id=>6
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_REQUI_INSCRIP:ARCHIVO:ID_ARCHI_REQUI::MIMETYPE:NOMBRE_REQUISITO:::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156830391551589049)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156830749437589050)
,p_query_column_id=>8
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156831155665589050)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>7
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_requisitos(''#ID_ARCHI_REQUI#'', ''#ID_NUM_INSCRIPCION#'', ''R'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156831528714589050)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>10
,p_column_heading=>'Acceso CCSS'
,p_use_as_row_header=>'N'
,p_column_link=>'https://sfa.ccss.sa.cr/moroso/'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156831926804589050)
,p_query_column_id=>11
,p_column_alias=>'DERIVED$03'
,p_column_display_sequence=>11
,p_column_heading=>'Acceso Hacienda'
,p_use_as_row_header=>'N'
,p_column_link=>'https://www.hacienda.go.cr/ATV/frmConsultaSituTributaria.aspx'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(338775705058843893)
,p_name=>'Correos'
,p_region_name=>'ID_CORREO'
,p_template=>wwv_flow_api.id(155139048344979462)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>2
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CORREO_NOTIFICA,',
'       ID_CONTRIBUYENTE,',
'       CORREO_NOTIFICA,',
'       CODIGO_ESTADO ',
'  from CORREO_NOTIFICACIONES',
'  WHERE ID_CONTRIBUYENTE = :P306_ID_CONTRIBUYENTE',
'  AND   CODIGO_ESTADO = ''AC'''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156822257572388436)
,p_query_column_id=>1
,p_column_alias=>'ID_CORREO_NOTIFICA'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156822661468388436)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156823072246388436)
,p_query_column_id=>3
,p_column_alias=>'CORREO_NOTIFICA'
,p_column_display_sequence=>3
,p_column_heading=>'Correos'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(160743431763540627)
,p_query_column_id=>4
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>4
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(164723649596609236)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(338776436280841239)
,p_name=>unistr('Tel\00E9fonos ')
,p_region_name=>'ID_TEL'
,p_template=>wwv_flow_api.id(155139048344979462)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 1100px"'
,p_display_column=>2
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TELEFONO,',
'       ID_CONTRIBUYENTE,',
'       ID_TIPO_TELEFONO,',
'       TELEFONO',
'  from TELEFONO_X_MAESTRO_CONTRIBU',
'  where ID_CONTRIBUYENTE = :P306_ID_CONTRIBUYENTE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P306_ID_CONTRIBUYENTE'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156820344592385762)
,p_query_column_id=>1
,p_column_alias=>'ID_TELEFONO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156820775599385762)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156821117606385762)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_TELEFONO'
,p_column_display_sequence=>3
,p_column_heading=>unistr('Tipo Tel\00E9fono')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(182060249592638115)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156821508408385762)
,p_query_column_id=>4
,p_column_alias=>'TELEFONO'
,p_column_display_sequence=>4
,p_column_heading=>'Telefono'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(160743705959540630)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(152946879092459441)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(160744003769540633)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(152946879092459441)
,p_button_name=>'BTN_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar Filtros'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152946289131459435)
,p_name=>'P306_ID_CONTRIBUYENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(156707638563855676)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152946658330459439)
,p_name=>'P306_ID_NUM_INSCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(156707638563855676)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152946993902459442)
,p_name=>'P306_ENTIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(152946879092459441)
,p_prompt=>'Entidad:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152947057876459443)
,p_name=>'P306_ID_DEUDOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(152946879092459441)
,p_prompt=>'Id Deudor:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(167972763959571018)
,p_name=>'P306_TIPO_CONTRIBUYENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(152946879092459441)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(160743560510540628)
,p_name=>'DAC_TRAE_NOMBRE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P306_ID_DEUDOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(160743639985540629)
,p_event_id=>wwv_flow_api.id(160743560510540628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P306_ENTIDAD := PKG_MAESTRO_CONTRIBUYENTE.F_RETORNA_NOM_CONTRI(:P306_ID_DEUDOR);',
'END;'))
,p_attribute_02=>'P306_ID_DEUDOR'
,p_attribute_03=>'P306_ENTIDAD'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(160743832495540631)
,p_name=>'DAC_REFRESH_REGION'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(160743705959540630)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(160743941358540632)
,p_event_id=>wwv_flow_api.id(160743832495540631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(156707638563855676)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(160744171284540634)
,p_name=>'DAC_LIMPIA_FRILTROS'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(160744003769540633)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(160744210786540635)
,p_event_id=>wwv_flow_api.id(160744171284540634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P306_ENTIDAD,P306_ID_DEUDOR'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(160744377106540636)
,p_event_id=>wwv_flow_api.id(160744171284540634)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(156707638563855676)
);
wwv_flow_api.component_end;
end;
/
