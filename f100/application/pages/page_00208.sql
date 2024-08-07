prompt --application/pages/page_00208
begin
--   Manifest
--     PAGE: 00208
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
 p_id=>208
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'208-Formulario Maestro Contribuyente'
,p_alias=>'208-FORMULARIO-MAESTRO-CONTRIBUYENTE'
,p_step_title=>'208-Formulario Maestro Contribuyente'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//Funcion para redireccionar a la pagina 135 y visualizar el archivo del apoderado',
'function Ir_Archivo_apoderado(pIdArchi, pIDApo,pIdContrib,pMostrar) {',
'    var vURL = ''f?p=&APP_ID.:135:&APP_SESSION.::NO:135:P135_ID_ARCHI_APODERA,P135_ID_APODERADO,P135_ID_CONTRIBUYENTE,P135_MOSTRAR_REGION:'' + pIdArchi + '','' + pIDApo+ '','' + pIdContrib+ '','' + pMostrar;',
'    window.open(vURL, "", "width=1000,height=800");',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JORGE.ROJAS'
,p_last_upd_yyyymmddhh24miss=>'20230905143803'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(181757502215733222)
,p_plug_name=>unistr('Actualizar Informaci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'MAESTRO_CONTRIBUYENTE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(180201163516132388)
,p_plug_name=>unistr(' Informaci\00F3n General')
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width: 1100px"'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(180201274817132389)
,p_plug_name=>'Domicilio Fiscal'
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width: 1100px"'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>100
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P208_TIPO_INSCRIPCION'
,p_plug_display_when_cond2=>'IR'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(180201363058132390)
,p_plug_name=>unistr('Direcci\00F3n para Notificaciones')
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width: 1100px"'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>110
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P208_TIPO_INSCRIPCION'
,p_plug_display_when_cond2=>'IR'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(180201450362132391)
,p_plug_name=>unistr(' Informaci\00F3n Gerente de la entidad')
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width: 1100px"'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>130
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P208_TIPO_INSCRIPCION'
,p_plug_display_when_cond2=>'IR'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(180201519836132392)
,p_plug_name=>unistr('Informaci\00F3n Representante Legal')
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width: 1100px"'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>140
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(229479374517397660)
,p_name=>unistr('Informaci\00F3n Representante Legal')
,p_parent_plug_id=>wwv_flow_api.id(180201519836132392)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>170
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID_REPRESENTA,',
'       a.ID_CONTRIBUYENTE,',
'       a.NOMBRE_ARCHIVO,',
'       a.NOMBRE_ARCHIVO VER2,',
'       sys.dbms_lob.getlength(A.ARCHIVO_REPRESENTA)VER,',
'       sys.dbms_lob.getlength(A.ARCHIVO_REPRESENTA)DESCARGAR,',
'       a.MIMETYPE,',
'       a.FEC_ACT,',
'       i.NOMBRE_REPRE_LEGAL,',
'       i.CEDULA_REPRE_LEGAL,',
'       i.CORREO_REPRE_LEGAL,',
'       a.CODIGO_ESTADO',
'  from ARCHIVOS_REPRE_LEGAL a, MAESTRO_CONTRIBUYENTE i',
'  where a.ID_CONTRIBUYENTE = i.ID_CONTRIBUYENTE',
'  AND  a.ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P208_ID_CONTRIBUYENTE'
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
 p_id=>wwv_flow_api.id(194605158445056938)
,p_query_column_id=>1
,p_column_alias=>'ID_REPRESENTA'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194550397303610256)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194605898307056938)
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
 p_id=>wwv_flow_api.id(194609167967056940)
,p_query_column_id=>4
,p_column_alias=>'VER2'
,p_column_display_sequence=>9
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P201_ID_REPRESENTA'',''#ID_REPRESENTA#'');javascript:openModal(''PDF''); $("#PDF").trigger("apexrefresh");'
,p_column_linktext=>'#VER2#'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194609532333056941)
,p_query_column_id=>5
,p_column_alias=>'VER'
,p_column_display_sequence=>8
,p_column_heading=>'Ver online'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_REPRE_LEGAL_INSCRIP:ARCHIVO_REPRESENTA:ID_REPRESENTA::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::inline:Ver:'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194607549507056939)
,p_query_column_id=>6
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>11
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_REPRE_LEGAL:ARCHIVO_REPRESENTA:ID_REPRESENTA::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194606706945056939)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194607123056056939)
,p_query_column_id=>8
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194606279583056939)
,p_query_column_id=>9
,p_column_alias=>'NOMBRE_REPRE_LEGAL'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194607896989056940)
,p_query_column_id=>10
,p_column_alias=>'CEDULA_REPRE_LEGAL'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194608360177056940)
,p_query_column_id=>11
,p_column_alias=>'CORREO_REPRE_LEGAL'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230455627601560150)
,p_query_column_id=>12
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>13
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194608734951056940)
,p_query_column_id=>13
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_repre_legal(''#ID_REPRESENTA#'', ''#ID_NUM_INSCRIPCION#'', ''RLIR'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(181952253071455443)
,p_plug_name=>unistr('Informaci\00F3n Asistente en Tierra en Costa Rica')
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width: 1100px"'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>170
,p_plug_display_column=>2
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P208_TIPO_INSCRIPCION'
,p_plug_display_when_cond2=>'IVC'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(181952797302455449)
,p_name=>'Tipo de impuestos a declarar'
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 1100px"'
,p_display_column=>2
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TIPO_IMPUESTO,',
'       ID_CONTRIBUYENTE,',
'       NOMBRE_ENCARGADO_IMP,',
'       CEDULA_ENCARGADO_IMP,',
'       CORREO_ENCARGADO_IMP',
'  from IMPUESTO_X_MAESTRO_CONTRIBUYE',
'  where ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE',
'  and   CODIGO_ESTADO = ''AC'''))
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
 p_id=>wwv_flow_api.id(181953309548455454)
,p_query_column_id=>1
,p_column_alias=>'ID_TIPO_IMPUESTO'
,p_column_display_sequence=>2
,p_column_heading=>'Tipo Impuesto'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(161757268632851451)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181952989592455451)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181953462027455455)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ENCARGADO_IMP'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre Encargado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181953493698455456)
,p_query_column_id=>4
,p_column_alias=>'CEDULA_ENCARGADO_IMP'
,p_column_display_sequence=>4
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181953621152455457)
,p_query_column_id=>5
,p_column_alias=>'CORREO_ENCARGADO_IMP'
,p_column_display_sequence=>5
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(181953729010455458)
,p_name=>unistr('Direcci\00F3n Electr\00F3nica')
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>2
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CORREO_NOTIFICA,',
'       ID_CONTRIBUYENTE,',
'       CORREO_NOTIFICA',
'  from CORREO_NOTIFICACIONES',
'  WHERE ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE',
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
 p_id=>wwv_flow_api.id(181954072337455461)
,p_query_column_id=>1
,p_column_alias=>'ID_CORREO_NOTIFICA'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181954113663455462)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181954207310455463)
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
 p_id=>wwv_flow_api.id(159234667938083149)
,p_query_column_id=>4
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>4
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P208_NEW_CORREO'',''#CORREO_NOTIFICA#'');javascript:$s(''P208_ID_CORREO'',''#ID_CORREO_NOTIFICA#'');javascript:openModal(''ID_CORREO''); $("#ID_CORREO").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(159234156711083144)
,p_plug_name=>'Actualizar Correo'
,p_region_name=>'ID_CORREO'
,p_parent_plug_id=>wwv_flow_api.id(181953729010455458)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(155139048344979462)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(181953804575455459)
,p_name=>unistr('Informaci\00F3n Apoderado')
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>150
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 1100px"'
,p_display_column=>2
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
'       PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_ARCHI_APO(a.ID_APODERADO) EXISTE,',
'       case PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_ARCHI_APO (a.ID_APODERADO)',
'           when ''S'' then ''far fa-check-circle''',
'           when ''N'' then ''fa fa-remove''',
'       end as icon_class,       ',
'       case PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_ARCHI_APO (a.ID_APODERADO)',
'           when ''S'' then ''#7AFF33''',
'           when ''N'' then ''#FF5733''',
'       end as color_class,',
'       case PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_ARCHI_APO (a.ID_APODERADO) ',
'           when ''S'' then ''javascript:$s("P208_ID_APODERADO",''||a.ID_APODERADO||'');javascript:openModal("ARCHI_APO"); $("#ARCHI_APO").trigger("apexrefresh");''',
'           when ''N'' then ''#''',
'       end as link',
'  from APODERADOS a',
'  where a.ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE',
'  and   a.ID_TIPO_APODERADO IS NOT NULL'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P208_ID_CONTRIBUYENTE'
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
 p_id=>wwv_flow_api.id(181954333941455464)
,p_query_column_id=>1
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181954461573455465)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181954521994455466)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_APODERADO'
,p_column_display_sequence=>3
,p_column_heading=>'Tipo Apoderado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(161480289353184503)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181954613686455467)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_APODERADO'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181954762056455468)
,p_query_column_id=>5
,p_column_alias=>'CEDULA_APODERADO'
,p_column_display_sequence=>5
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181954817541455469)
,p_query_column_id=>6
,p_column_alias=>'CORREO_APODERADO'
,p_column_display_sequence=>6
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181954941201455470)
,p_query_column_id=>7
,p_column_alias=>'ID_TIPO_IMPUESTO'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181955029610455471)
,p_query_column_id=>8
,p_column_alias=>'INDICA_AUTORIZO'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181955117373455472)
,p_query_column_id=>9
,p_column_alias=>'FECHA_INICIO_AUTORIZA'
,p_column_display_sequence=>9
,p_column_heading=>unistr('Inicio Autorizaci\00F3n ')
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181955233304455473)
,p_query_column_id=>10
,p_column_alias=>'FECHA_FIN_AUTORIZA'
,p_column_display_sequence=>10
,p_column_heading=>'Fecha Fin Autoriza'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194241050103119787)
,p_query_column_id=>11
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>11
,p_column_heading=>'Codigo Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232289836192347757)
,p_query_column_id=>12
,p_column_alias=>'EXISTE'
,p_column_display_sequence=>12
,p_column_heading=>'Existe'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="fa #ICON_CLASS#" style="color: #COLOR_CLASS#;">',
'    <spam class="visuallyhidden">#EXISTE#</spam>',
'</span>'))
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232289938748347758)
,p_query_column_id=>13
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232289995746347759)
,p_query_column_id=>14
,p_column_alias=>'COLOR_CLASS'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232290165371347760)
,p_query_column_id=>15
,p_column_alias=>'LINK'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(232290205651347761)
,p_query_column_id=>16
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>13
,p_column_heading=>'Archivos'
,p_use_as_row_header=>'N'
,p_column_link=>'#LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(181953920901455460)
,p_name=>unistr('Autorizaci\00F3n Uso Firma Digital en declaraciones juradas')
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>160
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 1100px"'
,p_display_column=>2
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
'      -- a.ID_TIPO_IMPUESTO,',
'       a.INDICA_AUTORIZO,',
'       a.FECHA_INICIO_AUTORIZA,',
'       a.FECHA_FIN_AUTORIZA,',
'       a.CODIGO_ESTADO,',
'       PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_ARCHI_APO(a.ID_APODERADO) EXISTE,',
'       case PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_ARCHI_APO (a.ID_APODERADO)',
'           when ''S'' then ''far fa-check-circle''',
'           when ''N'' then ''fa fa-remove''',
'       end as icon_class,       ',
'       case PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_ARCHI_APO (a.ID_APODERADO)',
'           when ''S'' then ''#7AFF33''',
'           when ''N'' then ''#FF5733''',
'       end as color_class,',
'       case PKG_MAESTRO_CONTRIBUYENTE.VALIDA_EXISTE_ARCHI_APO (a.ID_APODERADO) ',
'           when ''S'' then ''javascript:$s("P208_ID_APODERADO",''||a.ID_APODERADO||'');javascript:openModal("ARCHI_APO"); $("#ARCHI_APO").trigger("apexrefresh");''',
'           when ''N'' then ''#''',
'       end as link',
'  from APODERADOS a',
'  where a.ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE',
'  and   a.ID_TIPO_APODERADO IS NULL',
'  order by a.INDICA_AUTORIZO'))
,p_display_when_condition=>'P208_TIPO_INSCRIPCION'
,p_display_when_cond2=>'IR'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P208_ID_CONTRIBUYENTE'
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
 p_id=>wwv_flow_api.id(181955287533455474)
,p_query_column_id=>1
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181955430304455475)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181955507701455476)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_APODERADO'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181955666130455477)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_APODERADO'
,p_column_display_sequence=>5
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181955754523455478)
,p_query_column_id=>5
,p_column_alias=>'CEDULA_APODERADO'
,p_column_display_sequence=>6
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181955789541455479)
,p_query_column_id=>6
,p_column_alias=>'CORREO_APODERADO'
,p_column_display_sequence=>7
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181955993405455481)
,p_query_column_id=>7
,p_column_alias=>'INDICA_AUTORIZO'
,p_column_display_sequence=>4
,p_column_heading=>'Tipo Apoderado'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:Apoderado;A,Aut. Firma Digital;F,Aut. Terceras personas;T'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181956149781455482)
,p_query_column_id=>8
,p_column_alias=>'FECHA_INICIO_AUTORIZA'
,p_column_display_sequence=>8
,p_column_heading=>'Inicio Autoriza'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181956212143455483)
,p_query_column_id=>9
,p_column_alias=>'FECHA_FIN_AUTORIZA'
,p_column_display_sequence=>9
,p_column_heading=>'Fecha Fin Autoriza'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(194241110728119788)
,p_query_column_id=>10
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>10
,p_column_heading=>'Codigo Estado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192670729526721770)
,p_query_column_id=>11
,p_column_alias=>'EXISTE'
,p_column_display_sequence=>13
,p_column_heading=>'Tiene archivo'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="fa #ICON_CLASS#" style="color: #COLOR_CLASS#;">',
'    <spam class="visuallyhidden">#EXISTE#</spam>',
'</span>'))
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192670437865721767)
,p_query_column_id=>12
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192670521281721768)
,p_query_column_id=>13
,p_column_alias=>'COLOR_CLASS'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192670642439721769)
,p_query_column_id=>14
,p_column_alias=>'LINK'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192670308990721766)
,p_query_column_id=>15
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>14
,p_column_heading=>'Archivos'
,p_use_as_row_header=>'N'
,p_column_link=>'#LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(259733424372611390)
,p_query_column_id=>16
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>12
,p_column_heading=>'Impuestos'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:242:&SESSION.::&DEBUG.::P242_ID_APODERADO:#ID_APODERADO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(181956377379455484)
,p_name=>unistr('Tel\00E9fonos ')
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
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
'  where ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181956459716455485)
,p_query_column_id=>1
,p_column_alias=>'ID_TELEFONO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181956510138455486)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(181956618015455487)
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
 p_id=>wwv_flow_api.id(181956757473455488)
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
 p_id=>wwv_flow_api.id(183605666523922246)
,p_name=>'Tipo Ventas'
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 1100px"'
,p_display_column=>2
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_VENTAS,',
'       ID_CONTRIBUYENTE,',
'       ID_TIPO_VENTAS',
'  from VENTAS_X_MAESTRO_CONTRIBU',
'  where ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE'))
,p_display_when_condition=>'P208_TIPO_INSCRIPCION'
,p_display_when_cond2=>'IR'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
 p_id=>wwv_flow_api.id(183605949867922249)
,p_query_column_id=>1
,p_column_alias=>'ID_VENTAS'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183606640173922256)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183605736615922247)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_VENTAS'
,p_column_display_sequence=>1
,p_column_heading=>'Tipo Ventas'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(161689748935775872)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(231054956964912378)
,p_name=>unistr('Autorizaci\00F3n a Terceros Archivos')
,p_region_name=>'ARCHI_APO'
,p_parent_plug_id=>wwv_flow_api.id(181757502215733222)
,p_template=>wwv_flow_api.id(155139048344979462)
,p_display_sequence=>150
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
'       --sys.dbms_lob.getlength(b.ARCHIVO_APODERADO)VER,',
'       --sys.dbms_lob.getlength(b.ARCHIVO_APODERADO)DESCARGAR,',
'       sys.dbms_lob.getlength(b.ARCHIVO_APODERADO)DESCARGAR,',
'       b.MIMETYPE',
'  from ARCHIVOS_APODERADOS b',
'  WHERE b.ID_APODERADO = :P208_ID_APODERADO',
'  '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P208_ID_APODERADO'
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
 p_id=>wwv_flow_api.id(193357400407326845)
,p_query_column_id=>1
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(193357862714326846)
,p_query_column_id=>2
,p_column_alias=>'ID_ARCHI_APODERA'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(193358194232326846)
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
 p_id=>wwv_flow_api.id(159236053978083163)
,p_query_column_id=>4
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>6
,p_column_heading=>'Descargar'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_APODERADOS:ARCHIVO_APODERADO:ID_ARCHI_APODERA::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(193359034977326848)
,p_query_column_id=>5
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(193359831340326849)
,p_query_column_id=>6
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>5
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_apoderado(''#ID_ARCHI_APODERA#'', ''#ID_APODERADO#'', ''&P201_ID_NUM_INSCRIPCION.'', ''AIR'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(181817001717733275)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(181757502215733222)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P208_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(181815859503733270)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(181757502215733222)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(181817467512733275)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(181757502215733222)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P208_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(181816648413733274)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(181757502215733222)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Eliminar'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(159234504362083148)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(159234156711083144)
,p_button_name=>'BTN_GUARDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(181817729091733275)
,p_branch_action=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(159234256105083145)
,p_name=>'P208_ID_CORREO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(159234156711083144)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(159234326711083146)
,p_name=>'P208_NEW_CORREO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(159234156711083144)
,p_prompt=>'Correo:'
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
 p_id=>wwv_flow_api.id(159235859973083161)
,p_name=>'P208_DIRECCION_ENTIDAD_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('Direcci\00F3n:')
,p_source=>'DIRECCION_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_display_when=>'P208_TIPO_INSCRIPCION'
,p_display_when2=>'ANRI'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181757969063733227)
,p_name=>'P208_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_source=>'ID_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181758331958733233)
,p_name=>'P208_NOMBRE_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Nombre Entidad:'
,p_source=>'NOMBRE_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181758688902733237)
,p_name=>'P208_ID_TIPO_IDENTIFICACION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('Tipo Identificaci\00F3n:')
,p_source=>'ID_TIPO_IDENTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_IDENTIFICACION'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181759106857733237)
,p_name=>'P208_RAZON_SOCIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('Raz\00F3n Social:')
,p_source=>'RAZON_SOCIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>80
,p_colspan=>5
,p_display_when=>'P208_ID_TIPO_IDENTIFICACION'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181759577687733238)
,p_name=>'P208_PERSONA_FISICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('Persona F\00EDsica:')
,p_source=>'PERSONA_FISICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_colspan=>5
,p_display_when=>'P208_ID_TIPO_IDENTIFICACION'
,p_display_when2=>'2'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181759947645733238)
,p_name=>'P208_CEDULA_JURIDICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Documento de identidad:'
,p_source=>'CEDULA_JURIDICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P208_CEDULA_JURIDICA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181760328436733240)
,p_name=>'P208_CEDULA_FISICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Documento de identidad:'
,p_source=>'CEDULA_FISICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P208_CEDULA_FISICA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181760778111733240)
,p_name=>'P208_ID_TIPO_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Tipo Contribuyente:'
,p_source=>'ID_TIPO_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_CONTRIBUYENTE_IR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_TIPO_CONTRIBUYENTE, DESCRIPCION',
'FROM TIPO_CONTRIBUYENTE',
'WHERE CODIGO_ESTADO = ''AC''',
'--AND   IND_TIPO_INSCRIP = ''IR'''))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181761139918733240)
,p_name=>'P208_CODIGO_IATA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('C\00F3digo IATA:')
,p_source=>'CODIGO_IATA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>23
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_display_when=>'P208_MUESTRA_IATA'
,p_display_when2=>'S'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181761919405733240)
,p_name=>'P208_FECHA_INICIO_OPERA'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Inicio Operaciones:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_INICIO_OPERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181762356149733240)
,p_name=>'P208_DIRECCION_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(180201274817132389)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('Direcci\00F3n:')
,p_source=>'DIRECCION_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181762714955733242)
,p_name=>'P208_ID_PROVINCIA_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(180201274817132389)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Provincia:'
,p_source=>'ID_PROVINCIA_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM PROVINCIAS@consulta_ictx'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181763143526733242)
,p_name=>'P208_ID_CANTON_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(180201274817132389)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('Cant\00F3n:')
,p_source=>'ID_CANTON_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM CANTONES@consulta_ictx WHERE PROV_ID = :P208_ID_PROVINCIA_ENTIDAD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181763479287733242)
,p_name=>'P208_ID_DISTRITO_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(180201274817132389)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Distrito:'
,p_source=>'ID_DISTRITO_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ID ',
'FROM DISTRITOS@consulta_ictx ',
'WHERE PROV_ID = :P208_ID_PROVINCIA_ENTIDAD',
'AND CANTON_ID = :P208_ID_CANTON_ENTIDAD'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181763956936733242)
,p_name=>'P208_DIRECCION_NOTIFICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(180201363058132390)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('Direcci\00F3n:')
,p_source=>'DIRECCION_NOTIFICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>800
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181764350474733242)
,p_name=>'P208_ID_PROVINCIA_NOTIFICA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(180201363058132390)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Provincia:'
,p_source=>'ID_PROVINCIA_NOTIFICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM PROVINCIAS@consulta_ictx'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181764717523733243)
,p_name=>'P208_ID_CANTON_NOTIFICA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(180201363058132390)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('Cant\00F3n:')
,p_source=>'ID_CANTON_NOTIFICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM CANTONES@consulta_ictx WHERE PROV_ID = :P208_ID_PROVINCIA_NOTIFICA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181765107728733243)
,p_name=>'P208_ID_DISTRITO_NOTIFICA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(180201363058132390)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Distrito:'
,p_source=>'ID_DISTRITO_NOTIFICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ID ',
'FROM DISTRITOS@consulta_ictx ',
'WHERE PROV_ID = :P208_ID_PROVINCIA_NOTIFICA',
'AND CANTON_ID = :P208_ID_CANTON_NOTIFICA'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181765507776733244)
,p_name=>'P208_CEDULA_GERENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(180201450362132391)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Cedula:'
,p_source=>'CEDULA_GERENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181765972214733244)
,p_name=>'P208_NOMBRE_GERENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(180201450362132391)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Nombre:'
,p_source=>'NOMBRE_GERENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181766315162733244)
,p_name=>'P208_CORREO_GERENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(180201450362132391)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Correo:'
,p_source=>'CORREO_GERENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(181766688573733244)
,p_name=>'P208_NOMBRE_REPRE_LEGAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(180201519836132392)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Nombre:'
,p_source=>'NOMBRE_REPRE_LEGAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181767131419733245)
,p_name=>'P208_CEDULA_REPRE_LEGAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(180201519836132392)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Cedula:'
,p_source=>'CEDULA_REPRE_LEGAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181767545665733245)
,p_name=>'P208_CORREO_REPRE_LEGAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(180201519836132392)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Correo:'
,p_source=>'CORREO_REPRE_LEGAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(181767897353733245)
,p_name=>'P208_CODIGO_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Estado:'
,p_source=>'CODIGO_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT  NOMBRE_ESTADO,CODIGO_ESTADO FROM estados_tramite@consulta_ictx where CODIGO_ESTADO IN (''AC'',''IA'')'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181768294355733245)
,p_name=>'P208_FECHA_INSCRIPCION'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('Fecha Inscripci\00F3n:')
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181768704903733245)
,p_name=>'P208_FECHA_CESE_OPERA'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Cese Operaciones:'
,p_source=>'FECHA_CESE_OPERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_display_when=>'P208_CODIGO_ESTADO'
,p_display_when2=>'IA'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181769121357733246)
,p_name=>'P208_FECHA_INICIO_VENTAS'
,p_source_data_type=>'DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(181757502215733222)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_source=>'FECHA_INICIO_VENTAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181769537790733246)
,p_name=>'P208_OBSERVA_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(181757502215733222)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_source=>'OBSERVA_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181769973137733246)
,p_name=>'P208_OBSERVA_ADM_TRIBUTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(181757502215733222)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_source=>'OBSERVA_ADM_TRIBUTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(181770300050733246)
,p_name=>'P208_ID_MODALIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Modalidad:'
,p_source=>'ID_MODALIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_MODALIDAD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_display_when=>'P208_TIPO_INSCRIPCION'
,p_display_when2=>'IR'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181770759528733246)
,p_name=>'P208_CODIGO_FUENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(181757502215733222)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_source=>'CODIGO_FUENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181772297964733248)
,p_name=>'P208_FECHA_SUSCRITO'
,p_source_data_type=>'DATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(181757502215733222)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_source=>'FECHA_SUSCRITO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181772719846733248)
,p_name=>'P208_LUGAR_SUSCRITO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(181757502215733222)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_source=>'LUGAR_SUSCRITO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181779106265733251)
,p_name=>'P208_ID_NUM_INSCRIPCION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(181757502215733222)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_source=>'ID_NUM_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181779479612733251)
,p_name=>'P208_NOM_ASISTENTE_CHARTER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(181952253071455443)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Nombre:'
,p_source=>'NOM_ASISTENTE_CHARTER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181779972780733251)
,p_name=>'P208_CEDULA_ASISTENTE_CHARTER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(181952253071455443)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Cedula:'
,p_source=>'CEDULA_ASISTENTE_CHARTER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181780331090733251)
,p_name=>'P208_CORREO_ASISTENTE_CHARTER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(181952253071455443)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>'Correo:'
,p_source=>'CORREO_ASISTENTE_CHARTER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
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
 p_id=>wwv_flow_api.id(181952393317455445)
,p_name=>'P208_TIPO_INSCRIPCION'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(181757502215733222)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181956800604455489)
,p_name=>'P208_CONTRIBUYENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_prompt=>'Id Contribuyente:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185733667418161558)
,p_name=>'P208_PERIODO_INI_INACTIVO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_prompt=>unistr('Inicio Inactivaci\00F3n: ')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_display_when=>'P208_CODIGO_ESTADO'
,p_display_when2=>'IA'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(185733722597161559)
,p_name=>'P208_PERIODO_FIN_INACTIVO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_prompt=>unistr('Fin Inactivaci\00F3n: ')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P208_CODIGO_ESTADO'
,p_display_when2=>'IA'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(186184936961917276)
,p_name=>'P208_ESTADOS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187768894176375163)
,p_name=>'P208_USUARIO_SIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_item_default=>':APP_USER'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Usuario:'
,p_source=>'USUARIO_SIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(189452845224619031)
,p_name=>'P208_ENCARGADO_RESPONSABLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('Encargado Declaraci\00F3n Informativa :')
,p_source=>'RESPONSABLE_TRIBUTARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(193360266161326852)
,p_name=>'P208_ID_APODERADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(231054956964912378)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232291494226347774)
,p_name=>'P208_MUESTRA_IATA'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232291718223347776)
,p_name=>'P208_ID_DEUDOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(180201163516132388)
,p_item_source_plug_id=>wwv_flow_api.id(181757502215733222)
,p_prompt=>unistr('C\00F3digo Tributario:')
,p_source=>'ID_DEUDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(187042945135456558)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ACT/INAC_CONTRIB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMensaje_Retorno VARCHAR2(200);',
'vRetorno boolean;',
'vCedula VARCHAR2(20);',
'BEGIN',
'IF :P208_CODIGO_ESTADO <> ''AC'' THEN',
'        --Se inactiva el usuario ',
'    UPDATE USUARIOS_EXTERNOS SET CODIGO_ESTADO = ''IA'' WHERE ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE;',
'    --El estado del contribuyente se cambia Inactivo',
'    --UPDATE MAESTRO_CONTRIBUYENTE SET CODIGO_ESTADO = ''IA'' WHERE ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE;',
'     --Se inserta el periodo de inactivacion ',
'    PKG_MAESTRO_CONTRIBUYENTE.INSERTA_PERIODO_INACTIVACION (:P208_ID_CONTRIBUYENTE,:APP_USER,''I'');',
'    --Inactivar en maestro_deudores',
'    UPDATE MAESTRO_DEUDORES@CONSULTA_ICTX SET CODIGO_ESTADO = ''AI'' WHERE ID_DEUDOR = :P208_ID_DEUDOR;',
'END IF;',
'IF  :P208_CODIGO_ESTADO <> ''IA'' THEN',
'    --El estado del contribuyente se cambia a activo',
'    --UPDATE MAESTRO_CONTRIBUYENTE SET CODIGO_ESTADO = ''AC'' WHERE ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE;',
'    --Se activa el usuario ',
'    UPDATE USUARIOS_EXTERNOS SET CODIGO_ESTADO = ''AC'' WHERE ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE;',
unistr('    --Se genera una contrase\00F1a temporal y se envia un correo con esa contrase\00F1a temporal'),
'        IF :P208_CEDULA_JURIDICA IS NOT NULL THEN',
'            vCedula := :P208_CEDULA_JURIDICA;',
'        ELSIF :P208_CEDULA_FISICA IS NOT NULL THEN',
'        vCedula := :P208_CEDULA_FISICA;',
'        END IF;',
'    PKG_ENVIO_NOTIF_ICT_CONTRIB.NOTIF_ACTIVACION_USR (vCedula,8,''A'',:APP_USER,vMensaje_Retorno,vRetorno);',
'    --Se inserta el periodo de inactivacion ',
'    PKG_MAESTRO_CONTRIBUYENTE.INSERTA_PERIODO_INACTIVACION (:P208_ID_CONTRIBUYENTE,:APP_USER,''A'');',
'    --Activar en maestro_deudores',
'    UPDATE MAESTRO_DEUDORES@CONSULTA_ICTX SET CODIGO_ESTADO = ''AC'' WHERE ID_DEUDOR = :P208_ID_DEUDOR;',
'',
'END IF;',
'    COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(181817001717733275)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(181818634439733279)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(181757502215733222)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 208-Formulario Maestro Contribuyente'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(181818199426733277)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(181757502215733222)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 208-Formulario Maestro Contribuyente'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(181952732036455448)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vTipoIncrip VARCHAR2(4);',
'vInicioInactivacion DATE;',
'vFinInactivacion DATE;',
'',
'    CURSOR C_TIP_INSCRIP IS',
'    SELECT IND_TIPO_INSCRIP',
'    FROM   TIPO_CONTRIBUYENTE',
'    WHERE  ID_TIPO_CONTRIBUYENTE = :P208_ID_TIPO_CONTRIBUYENTE;',
'    ',
'    CURSOR C_PER_INAC_CONTRIB IS',
'    SELECT PERIODO_INI_INACTIVO,PERIODO_FIN_INACTIVO',
'    FROM   PERIODOS_INACTIVO_CONTRI',
'    WHERE  ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE;',
'BEGIN',
'    OPEN  C_TIP_INSCRIP;',
'    FETCH C_TIP_INSCRIP INTO vTipoIncrip;',
'    CLOSE C_TIP_INSCRIP;',
'    ',
'    OPEN  C_PER_INAC_CONTRIB;',
'    FETCH C_PER_INAC_CONTRIB INTO vInicioInactivacion,vFinInactivacion;',
'    CLOSE C_PER_INAC_CONTRIB;',
'    ',
'    :P208_CONTRIBUYENTE    := :P208_ID_CONTRIBUYENTE;',
'    :P208_TIPO_INSCRIPCION := vTipoIncrip;',
'    ',
'    IF :P208_CODIGO_ESTADO = ''IA'' THEN',
'    :P208_PERIODO_INI_INACTIVO := vInicioInactivacion;',
'    :P208_PERIODO_FIN_INACTIVO := vFinInactivacion;',
'   END IF;',
'    --IF :P208_TIPO_INSCRIPCION = ''IR'' THEN',
'    :P208_ESTADOS := :P208_CODIGO_ESTADO;',
'   -- END IF;',
'    :P208_USUARIO_SIT := :APP_USER;',
'    ',
'IF :P208_ID_TIPO_CONTRIBUYENTE IN (4,5,8,17) THEN',
'    :P208_MUESTRA_IATA := ''N'';',
'    ELSE',
'    :P208_MUESTRA_IATA := ''S'';',
'END IF;',
'    ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(159234735529083150)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ACT_CORREO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'UPDATE CORREO_NOTIFICACIONES SET CORREO_NOTIFICA = :P208_NEW_CORREO,USUARIO_SIT = :APP_USER WHERE ID_CORREO_NOTIFICA = :P208_ID_CORREO AND ID_CONTRIBUYENTE = :P208_ID_CONTRIBUYENTE;',
'COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(159234504362083148)
);
wwv_flow_api.component_end;
end;
/
