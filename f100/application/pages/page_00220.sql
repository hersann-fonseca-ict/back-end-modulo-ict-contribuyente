prompt --application/pages/page_00220
begin
--   Manifest
--     PAGE: 00220
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
 p_id=>220
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'220-Formulario Agencias no recaudadoras de impuestos'
,p_alias=>'220-FORMULARIO-AGENCIAS-NO-RECAUDADORAS-DE-IMPUESTOS'
,p_step_title=>'220-Formulario Agencias no recaudadoras de impuestos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//Funcion para redireccionar a la pagina 135 y visualizar el archivo del apoderado',
'function Ir_Archivo_apoderado(pIdArchi, pIDApo,pNumInscrip,pMostrar) {',
'    var vURL = ''f?p=&APP_ID.:135:&APP_SESSION.::NO:135:P135_ID_ARCHI_APODERA,P135_ID_APODERADO,P135_ID_NUM_INSCRIPCION,P135_MOSTRAR_REGION:'' + pIdArchi + '','' + pIDApo+ '','' + pNumInscrip+ '','' + pMostrar;',
'    window.open(vURL, "", "width=1000,height=800");',
'}',
'',
'//Funcion para redireccionar a la pagina 135 y visualizar el archivo del representante legal',
'function Ir_Archivo_repre_legal(pIdRepre, pNumInscrip,pMostrar) {',
'    var vURL = ''f?p=&APP_ID.:135:&APP_SESSION.::NO:135:P135_ID_REPRESENTA,P135_ID_NUM_INSCRIPCION,P135_MOSTRAR_REGION:'' + pIdRepre + '','' + pNumInscrip+ '','' + pMostrar;',
'    window.open(vURL, "", "width=1000,height=800");',
'}',
'',
'//Funcion para redireccionar a la pagina 135 y visualizar los archivo de requisito de inscripcion',
'function Ir_Archivo_requisitos(pIdArchi,pNumInscrip,pMostrar) {',
'    var vURL = ''f?p=&APP_ID.:135:&APP_SESSION.::NO:135:P135_ID_ARCHI_REQUI,P135_ID_NUM_INSCRIPCION,P135_MOSTRAR_REGION:'' + pIdArchi + '','' + pNumInscrip+ '','' + pMostrar;',
'    window.open(vURL, "", "width=1000,height=800");',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230706095409'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(184190683592424262)
,p_plug_name=>'Agencias de  viaje  no recaudadoras de impuestos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(184171626375332606)
,p_plug_name=>'FormularioAgencias de  viaje  no recaudadoras de impuestos'
,p_parent_plug_id=>wwv_flow_api.id(184190683592424262)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'SOLICITUD_INSCRIPCION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(184189996731424255)
,p_name=>'Apoderado Generalisimo'
,p_parent_plug_id=>wwv_flow_api.id(184190683592424262)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID_ARCHI_APODERA,',
'       a.ID_APODERADO,',
'       a.NOMBRE_ARCHIVO,',
'       sys.dbms_lob.getlength(a.ARCHIVO_APODERADO)VER,',
'       sys.dbms_lob.getlength(a.ARCHIVO_APODERADO)DESCARGAR,',
'       a.MIMETYPE,',
'       a.FEC_ACT,',
'       b.NOMBRE_APODERADO,',
'       b.CEDULA_APODERADO,',
'       b.ID_NUM_INSCRIPCION',
'  from ARCHI_APODERA_SOLICITUD A, APODERADOS_SOLICITUD b',
'  where a.ID_APODERADO = b.ID_APODERADO',
'  and   b.ID_NUM_INSCRIPCION = :P220_ID_NUM_INSCRIPCION'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(184190156583424256)
,p_query_column_id=>1
,p_column_alias=>'ID_ARCHI_APODERA'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184190236563424257)
,p_query_column_id=>2
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184190301487424258)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ARCHIVO'
,p_column_display_sequence=>5
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184191719204424272)
,p_query_column_id=>4
,p_column_alias=>'VER'
,p_column_display_sequence=>8
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_APODERA_SOLICITUD:ARCHIVO_APODERADO:ID_ARCHI_APODERA::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::inline:Ver:'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184191827006424273)
,p_query_column_id=>5
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>10
,p_column_heading=>'Descargar'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_APODERA_SOLICITUD:ARCHIVO_APODERADO:ID_ARCHI_APODERA::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184190548159424260)
,p_query_column_id=>6
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184190659733424261)
,p_query_column_id=>7
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184191899214424274)
,p_query_column_id=>8
,p_column_alias=>'NOMBRE_APODERADO'
,p_column_display_sequence=>1
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184192054249424275)
,p_query_column_id=>9
,p_column_alias=>'CEDULA_APODERADO'
,p_column_display_sequence=>2
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191107792666479391)
,p_query_column_id=>10
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191107772293479390)
,p_query_column_id=>11
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>9
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_apoderado(''#ID_ARCHI_APODERA#'', ''#ID_APODERADO#'', ''#ID_NUM_INSCRIPCION#'', ''AIR'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(184192166685424276)
,p_name=>'Representante Legal'
,p_parent_plug_id=>wwv_flow_api.id(184190683592424262)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID_REPRESENTA,',
'       a.ID_NUM_INSCRIPCION,',
'       a.NOMBRE_ARCHIVO,',
'       sys.dbms_lob.getlength(a.ARCHIVO_REPRESENTA)VER,',
'       sys.dbms_lob.getlength(a.ARCHIVO_REPRESENTA)DESCARGAR,',
'       a.MIMETYPE,',
'       a.FEC_ACT,',
'       b.NOMBRE_REPRE_LEGAL,',
'       b.CEDULA_REPRE_LEGAL',
'  from ARCHI_REPRE_LEGAL_INSCRIP a, SOLICITUD_INSCRIPCION b',
'  where a.ID_NUM_INSCRIPCION = b.ID_NUM_INSCRIPCION',
'  and   a.ID_NUM_INSCRIPCION = :P220_ID_NUM_INSCRIPCION'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(184192219392424277)
,p_query_column_id=>1
,p_column_alias=>'ID_REPRESENTA'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184193027805424285)
,p_query_column_id=>2
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184192391049424279)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ARCHIVO'
,p_column_display_sequence=>5
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184192835876424283)
,p_query_column_id=>4
,p_column_alias=>'VER'
,p_column_display_sequence=>8
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_REPRE_LEGAL_INSCRIP:ARCHIVO_REPRESENTA:ID_REPRESENTA::::::inline:Ver:'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184192898243424284)
,p_query_column_id=>5
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>10
,p_column_heading=>'Descargar'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_REPRE_LEGAL_INSCRIP:ARCHIVO_REPRESENTA:ID_REPRESENTA::::::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184192676514424281)
,p_query_column_id=>6
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184192716338424282)
,p_query_column_id=>7
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184193094924424286)
,p_query_column_id=>8
,p_column_alias=>'NOMBRE_REPRE_LEGAL'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184193264305424287)
,p_query_column_id=>9
,p_column_alias=>'CEDULA_REPRE_LEGAL'
,p_column_display_sequence=>4
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191107911458479392)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>9
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_repre_legal(''#ID_REPRESENTA#'', ''#ID_NUM_INSCRIPCION#'', ''RLIR'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(184193285903424288)
,p_name=>'Correos'
,p_parent_plug_id=>wwv_flow_api.id(184190683592424262)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_NUM_INSCRIPCION,',
'       ID_CORREO_NOTIFICA,',
'       CORREO_NOTIFICA',
'  from CORREO_NOTIFICA_INSCRIP',
'  where ID_NUM_INSCRIPCION = :P220_ID_NUM_INSCRIPCION'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(184193428611424289)
,p_query_column_id=>1
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184193553021424290)
,p_query_column_id=>2
,p_column_alias=>'ID_CORREO_NOTIFICA'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184193677323424291)
,p_query_column_id=>3
,p_column_alias=>'CORREO_NOTIFICA'
,p_column_display_sequence=>3
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(184193692012424292)
,p_name=>'Telefonos'
,p_parent_plug_id=>wwv_flow_api.id(184190683592424262)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TELEFONO,',
'       ID_NUM_INSCRIPCION,',
'       ID_TIPO_TELEFONO,',
'       TELEFONO',
'  from TELEFONO_X_SOLICITUD_INSCRIP',
'  where ID_NUM_INSCRIPCION = :P220_ID_NUM_INSCRIPCION'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(184303722188090643)
,p_query_column_id=>1
,p_column_alias=>'ID_TELEFONO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184303858217090644)
,p_query_column_id=>2
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184303919171090645)
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
 p_id=>wwv_flow_api.id(184303992980090646)
,p_query_column_id=>4
,p_column_alias=>'TELEFONO'
,p_column_display_sequence=>4
,p_column_heading=>'Telefono'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(184304130272090647)
,p_name=>unistr('Personer\00EDa Jur\00EDdica')
,p_parent_plug_id=>wwv_flow_api.id(184190683592424262)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
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
'  where ID_NUM_INSCRIPCION = :P220_ID_NUM_INSCRIPCION'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_api.id(184304213112090648)
,p_query_column_id=>1
,p_column_alias=>'ID_ARCHI_REQUI'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184304295907090649)
,p_query_column_id=>2
,p_column_alias=>'ID_REQUISITOS_INS'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184304470015090650)
,p_query_column_id=>3
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184304541053090651)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_REQUISITO'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre Requisito'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184304956042090655)
,p_query_column_id=>5
,p_column_alias=>'VER'
,p_column_display_sequence=>7
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_REQUI_INSCRIP:ARCHIVO:ID_ARCHI_REQUI::MIMETYPE:NOMBRE_REQUISITO:FEC_ACT::inline:Ver:'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184305017743090656)
,p_query_column_id=>6
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>9
,p_column_heading=>'Descargar'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_REQUI_INSCRIP:ARCHIVO:ID_ARCHI_REQUI::MIMETYPE:NOMBRE_REQUISITO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184304754113090653)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(184304842418090654)
,p_query_column_id=>8
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191370598082796143)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>8
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_requisitos(''#ID_ARCHI_REQUI#'', ''#ID_NUM_INSCRIPCION#'', ''R'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184180265611332632)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(184171626375332606)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184179028238332628)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(184190683592424262)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:219:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184305161883090657)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(184190683592424262)
,p_button_name=>'APROBAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P220_CODIGO_ESTADO'
,p_button_condition2=>'P'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184305235017090658)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(184190683592424262)
,p_button_name=>'RECHAZAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Rechazar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:229:&SESSION.::&DEBUG.::P229_ID_INSCRIPCION,P229_ID_TIPO_SOLICITUD,P229_TIPO_CORREO:&P220_ID_NUM_INSCRIPCION.,5,R'
,p_button_condition=>'P220_CODIGO_ESTADO'
,p_button_condition2=>'P'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'u-color-39'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184180616839332632)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(184171626375332606)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184179819730332631)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(184171626375332606)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(184180915277332632)
,p_branch_action=>'f?p=&APP_ID.:219:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184172001638332611)
,p_name=>'P220_ID_NUM_INSCRIPCION'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(184171626375332606)
,p_item_source_plug_id=>wwv_flow_api.id(184171626375332606)
,p_source=>'ID_NUM_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184172419652332618)
,p_name=>'P220_NOMBRE_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(184171626375332606)
,p_item_source_plug_id=>wwv_flow_api.id(184171626375332606)
,p_prompt=>'Nombre Agencia:'
,p_source=>'NOMBRE_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184172818569332624)
,p_name=>'P220_ID_TIPO_IDENTIFICACION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(184171626375332606)
,p_item_source_plug_id=>wwv_flow_api.id(184171626375332606)
,p_prompt=>unistr('Tipo Identificaci\00F3n:')
,p_source=>'ID_TIPO_IDENTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_IDENTIFICACION'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184173179738332625)
,p_name=>'P220_RAZON_SOCIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(184171626375332606)
,p_item_source_plug_id=>wwv_flow_api.id(184171626375332606)
,p_prompt=>unistr('Raz\00F3n Social:')
,p_source=>'RAZON_SOCIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>55
,p_cMaxlength=>80
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184173674000332625)
,p_name=>'P220_CEDULA_JURIDICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(184171626375332606)
,p_item_source_plug_id=>wwv_flow_api.id(184171626375332606)
,p_prompt=>'Documento de identidad:'
,p_source=>'CEDULA_JURIDICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184174046987332625)
,p_name=>'P220_ID_TIPO_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(184171626375332606)
,p_item_source_plug_id=>wwv_flow_api.id(184171626375332606)
,p_prompt=>'Tipo Contribuyente:'
,p_source=>'ID_TIPO_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_CONTRIBUYENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_TIPO_CONTRIBUYENTE, DESCRIPCION',
'FROM TIPO_CONTRIBUYENTE',
'WHERE CODIGO_ESTADO = ''AC'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184174394232332625)
,p_name=>'P220_CODIGO_IATA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(184171626375332606)
,p_item_source_plug_id=>wwv_flow_api.id(184171626375332606)
,p_prompt=>unistr('C\00F3digo IATA:')
,p_source=>'CODIGO_IATA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184174827902332625)
,p_name=>'P220_DIRECCION_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(184171626375332606)
,p_item_source_plug_id=>wwv_flow_api.id(184171626375332606)
,p_prompt=>unistr('Direcci\00F3n Entidad:')
,p_source=>'DIRECCION_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184175643440332626)
,p_name=>'P220_ENCARGADO_RESPONSABLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(184171626375332606)
,p_item_source_plug_id=>wwv_flow_api.id(184171626375332606)
,p_prompt=>'Encargado Reporte Semestral:'
,p_source=>'ENCARGADO_RESPONSABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>55
,p_cMaxlength=>80
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(194551275348610264)
,p_name=>'P220_CODIGO_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(184171626375332606)
,p_item_source_plug_id=>wwv_flow_api.id(184171626375332606)
,p_source=>'CODIGO_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184181807129332634)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(184171626375332606)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 220-Formulario Agencias no recaudadoras de impuestos'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184181437794332633)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(184171626375332606)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 220-Formulario Agencias no recaudadoras de impuestos'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184189374434424248)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vNomApoderado VARCHAR2(80);',
'',
'    /*CURSOR C_APODERADO IS',
'    SELECT NOMBRE_APODERADO',
'    FROM   APODERADOS_SOLICITUD',
'    WHERE  ID_NUM_INSCRIPCION = :P220_ID_NUM_INSCRIPCION;*/',
'BEGIN',
'   /* OPEN  C_APODERADO;',
'    FETCH C_APODERADO INTO vNomApoderado;',
'    CLOSE C_APODERADO;*/',
'    null;',
'',
'--:P220_APODERADO := vNomApoderado;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184305376439090659)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_APROBAR_REGISTRO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vId_Contribuyente NUMBER;',
'vCedula NUMBER;',
'vMensaje_Retorno VARCHAR2(255);',
'vRetorno BOOLEAN;',
'BEGIN',
'--RAISE_APPLICATION_ERROR(-20000, ''HOLA'');',
'PKG_INSCRIPCION_REGULAR.P_APROBAR_SOLI_INSCRIPCION (:P220_ID_NUM_INSCRIPCION,',
'                            vId_Contribuyente,',
'                            vCedula,',
'                            NULL,',
'                            NULL,',
'                            :APP_USER,',
'                            5,',
'                            ''A'',',
'                            16,',
'                            vMensaje_Retorno,',
'                            vRetorno);',
'                                                      ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184305161883090657)
);
null;
wwv_flow_api.component_end;
end;
/
