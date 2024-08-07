prompt --application/pages/page_00243
begin
--   Manifest
--     PAGE: 00243
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
 p_id=>243
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'243-Solicitud Pendiente Chater Ocasional Terrestre'
,p_alias=>'243-SOLICITUD-PENDIENTE-CHATER-OCASIONAL-TERRESTRE'
,p_step_title=>'Solicitud Pendiente COT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230421124139'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(273674782377855529)
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
 p_id=>wwv_flow_api.id(163234459187154248)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(273674782377855529)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(276023794496971333)
,p_name=>'Solicitud Pendiente'
,p_parent_plug_id=>wwv_flow_api.id(273674782377855529)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select M.ID_NUM_INSCRIPCION,',
'       M.NOMBRE_ENTIDAD,',
'       M.ID_TIPO_IDENTIFICACION,',
'DECODE (M.ID_TIPO_IDENTIFICACION,''1'',M.CEDULA_JURIDICA,''2'',M.CEDULA_FISICA)CEDULA,',
'       M.ID_TIPO_CONTRIBUYENTE,',
'       M.ID_PROVINCIA_ENTIDAD,',
'       PKG_INSCRIPCION_REGULAR.OBTIENE_DESC_CANTON (M.ID_PROVINCIA_ENTIDAD)CANTON,',
'       PKG_INSCRIPCION_REGULAR.OBTIENE_DESC_DISTRITO(M.ID_PROVINCIA_ENTIDAD,M.ID_CANTON_ENTIDAD)DISTRITO,',
'       M.CODIGO_ESTADO,',
'       M.FECHA_INSCRIPCION,',
'       (SELECT CORREO_NOTIFICA FROM CORREO_NOTIFICA_INSCRIP WHERE ID_CORREO_NOTIFICA in (SELECT MAX(ID_CORREO_NOTIFICA)FROM CORREO_NOTIFICA_INSCRIP WHERE ID_NUM_INSCRIPCION = M.ID_NUM_INSCRIPCION))CORREO,',
'       (SELECT TELEFONO FROM TELEFONO_X_SOLICITUD_INSCRIP WHERE ID_TELEFONO IN (SELECT MAX(ID_TELEFONO) FROM TELEFONO_X_SOLICITUD_INSCRIP WHERE ID_NUM_INSCRIPCION = M.ID_NUM_INSCRIPCION))TELEFONO',
'  from SOLICITUD_INSCRIPCION M',
'  where ID_TIPO_CONTRIBUYENTE = :P243_TIPO_CONTRIBUYENTE',
'  and   CODIGO_ESTADO = NVL(:P243_CODIGO_ESTADO,''P'')',
'  and   ID_NUM_INSCRIPCION = NVL(:P243_ID_INSCRIPCION,ID_NUM_INSCRIPCION)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P243_ID_NUM_INSCRIPCION,P243_CODIGO_ESTADO,P243_TIPO_CONTRIBUYENTE'
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
 p_id=>wwv_flow_api.id(152069510373036434)
,p_query_column_id=>1
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>1
,p_column_heading=>unistr('N\00BA')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152069938643036431)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_ENTIDAD'
,p_column_display_sequence=>2
,p_column_heading=>'Nombre Entidad'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152943307565459406)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_IDENTIFICACION'
,p_column_display_sequence=>3
,p_column_heading=>'Tipo Identificacion'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(160819142014193368)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152943424319459407)
,p_query_column_id=>4
,p_column_alias=>'CEDULA'
,p_column_display_sequence=>4
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152070304626036431)
,p_query_column_id=>5
,p_column_alias=>'ID_TIPO_CONTRIBUYENTE'
,p_column_display_sequence=>5
,p_column_heading=>'Tipo Contribuyente'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(181879233338093932)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152943557265459408)
,p_query_column_id=>6
,p_column_alias=>'ID_PROVINCIA_ENTIDAD'
,p_column_display_sequence=>6
,p_column_heading=>'Provincia'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'SELECT DESCRIPCION, ID FROM PROVINCIAS@consulta_ictx'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152943640925459409)
,p_query_column_id=>7
,p_column_alias=>'CANTON'
,p_column_display_sequence=>7
,p_column_heading=>'Canton'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152943776480459410)
,p_query_column_id=>8
,p_column_alias=>'DISTRITO'
,p_column_display_sequence=>8
,p_column_heading=>'Distrito'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152071102457036430)
,p_query_column_id=>9
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>10
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152070779210036430)
,p_query_column_id=>10
,p_column_alias=>'FECHA_INSCRIPCION'
,p_column_display_sequence=>9
,p_column_heading=>unistr('Fecha Inscripci\00F3n')
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(167973753422571028)
,p_query_column_id=>11
,p_column_alias=>'CORREO'
,p_column_display_sequence=>11
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(167973868846571029)
,p_query_column_id=>12
,p_column_alias=>'TELEFONO'
,p_column_display_sequence=>12
,p_column_heading=>'Telefono'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152071906490036428)
,p_query_column_id=>13
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>14
,p_column_heading=>'Aprobar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P243_ID_NUM_INSCRIPCION'',''#ID_NUM_INSCRIPCION#'');javascript:$s(''P243_NOM_ENTIDAD'',''#NOMBRE_ENTIDAD#'');javascript:openModal(''APR''); $("#APR").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152071542648036428)
,p_query_column_id=>14
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>15
,p_column_heading=>'Rechazar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:229:&SESSION.::&DEBUG.::P229_ID_INSCRIPCION,P229_ID_TIPO_SOLICITUD,P229_TIPO_CORREO,P229_PAGINA:#ID_NUM_INSCRIPCION#,14,R,243'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(167973958872571030)
,p_query_column_id=>15
,p_column_alias=>'DERIVED$03'
,p_column_display_sequence=>13
,p_column_heading=>'Documentos'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P243_ID_NUM_INSCRIPCION'',''#ID_NUM_INSCRIPCION#'');javascript:openModal(''ID_DOC''); $("#ID_DOC").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(687460421413449458)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(273674782377855529)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Solicitud de usuario y contrase\00F1a</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(312344874987009305)
,p_plug_name=>'Aprobar Solicitud'
,p_region_name=>'APR'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(155139048344979462)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(492807200985360462)
,p_name=>'Documentos '
,p_region_name=>'ID_DOC'
,p_template=>wwv_flow_api.id(155139048344979462)
,p_display_sequence=>50
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
'  where ID_NUM_INSCRIPCION = :P243_ID_NUM_INSCRIPCION'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P243_ID_NUM_INSCRIPCION'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(173607083276507177)
,p_query_column_id=>1
,p_column_alias=>'ID_ARCHI_REQUI'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(173607451339507178)
,p_query_column_id=>2
,p_column_alias=>'ID_REQUISITOS_INS'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(173607826332507179)
,p_query_column_id=>3
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(173608293443507179)
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
 p_id=>wwv_flow_api.id(173608616722507179)
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
 p_id=>wwv_flow_api.id(173609003235507179)
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
 p_id=>wwv_flow_api.id(173609462754507180)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(173609844088507180)
,p_query_column_id=>8
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(173610234352507183)
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
 p_id=>wwv_flow_api.id(173610623393507183)
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
 p_id=>wwv_flow_api.id(173611077982507183)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(166179015902266303)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(163234459187154248)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(166178968244266302)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(163234459187154248)
,p_button_name=>'BTN_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152072945378036427)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(312344874987009305)
,p_button_name=>'BTN_APROBAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152073366547036425)
,p_name=>'P243_ID_NUM_INSCRIPCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(312344874987009305)
,p_prompt=>unistr('N\00B0 Solicitud')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152073775032036421)
,p_name=>'P243_NOM_ENTIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(312344874987009305)
,p_prompt=>'Nombre Entidad'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(163234585434154249)
,p_name=>'P243_ID_INSCRIPCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(163234459187154248)
,p_prompt=>unistr('N\00B0 Solicitud:')
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
 p_id=>wwv_flow_api.id(163234652474154250)
,p_name=>'P243_CODIGO_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(163234459187154248)
,p_prompt=>'Estado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ESTADO_TRAMITE'
,p_lov=>'SELECT CODIGO_ESTADO, NOMBRE_ESTADO FROM estados_tramite@consulta_ictx where CODIGO_ESTADO IN (''AC'',''IA'',''A'',''R'',''P'',''RG'')'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(166182118797266334)
,p_name=>'P243_TIPO_CONTRIBUYENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(163234459187154248)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(166179112448266304)
,p_name=>'DAC_BUSCAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(166179015902266303)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(166179297815266305)
,p_event_id=>wwv_flow_api.id(166179112448266304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(276023794496971333)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(166179391752266306)
,p_name=>'DAC_LIMPIAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(166178968244266302)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(166179564407266308)
,p_event_id=>wwv_flow_api.id(166179391752266306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P243_ID_NUM_INSCRIPCION,P243_CODIGO_ESTADO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(166179434624266307)
,p_event_id=>wwv_flow_api.id(166179391752266306)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(276023794496971333)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152074123132036403)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_APROBAR_SOL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vId_Contribuyente NUMBER;',
'vCedula NUMBER;',
'vMensaje_Retorno VARCHAR2(255);',
'vRetorno BOOLEAN;',
'BEGIN',
'PKG_INSCRIPCION_REGULAR.P_APROBAR_SOLI_INSCRIPCION (:P243_ID_NUM_INSCRIPCION,',
'                                                    vId_Contribuyente,',
'                                                    vCedula,',
'                                                    NULL,',
'                                                    NULL,',
'                                                    :APP_USER,',
'                                                    14,',
'                                                    ''A'',',
'                                                    8,',
'                                                    vMensaje_Retorno,',
'                                                    vRetorno);',
'COMMIT;                            ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
