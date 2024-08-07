prompt --application/pages/page_00201
begin
--   Manifest
--     PAGE: 00201
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
 p_id=>201
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'201-Formulario Solicitud Inscripcion'
,p_alias=>'201-FORMULARIO-SOLICITUD-INSCRIPCION'
,p_step_title=>'201-Formulario Solicitud Inscripcion'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//Funcion para redireccionar a la pagina 135 y visualizar el archivo del representante legal',
'function Ir_Archivo_repre_legal(pIdRepre, pNumInscrip,pMostrar) {',
'    var vURL = ''f?p=&APP_ID.:135:&APP_SESSION.::NO:135:P135_ID_REPRESENTA,P135_ID_NUM_INSCRIPCION,P135_MOSTRAR_REGION:'' + pIdRepre + '','' + pNumInscrip+ '','' + pMostrar;',
'    window.open(vURL, "", "width=1000,height=800");',
'}',
'',
'//Funcion para redireccionar a la pagina 135 y visualizar el archivo del apoderado',
'function Ir_Archivo_apoderado(pIdArchi, pIDApo,pNumInscrip,pMostrar) {',
'    var vURL = ''f?p=&APP_ID.:135:&APP_SESSION.::NO:135:P135_ID_ARCHI_APODERA,P135_ID_APODERADO,P135_ID_NUM_INSCRIPCION,P135_MOSTRAR_REGION:'' + pIdArchi + '','' + pIDApo+ '','' + pNumInscrip+ '','' + pMostrar;',
'    window.open(vURL, "", "width=1000,height=800");',
'}',
'',
'//Funcion para redireccionar a la pagina 135 y visualizar los archivo de requisito de inscripcion',
'function Ir_Archivo_requisitos(pIdArchi,pNumInscrip,pMostrar) {',
'    var vURL = ''f?p=&APP_ID.:135:&APP_SESSION.::NO:135:P135_ID_ARCHI_REQUI,P135_ID_NUM_INSCRIPCION,P135_MOSTRAR_REGION:'' + pIdArchi + '','' + pNumInscrip+ '','' + pMostrar;',
'    window.open(vURL, "", "width=1000,height=800");',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230622121949'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161641997814812395)
,p_plug_name=>unistr('Solicitud Inscripci\00F3n')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161428732609339090)
,p_plug_name=>'Tabs'
,p_parent_plug_id=>wwv_flow_api.id(161641997814812395)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_api.id(155153351427979457)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161428514514339088)
,p_plug_name=>unistr('Informaci\00F3n General')
,p_parent_plug_id=>wwv_flow_api.id(161428732609339090)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(183506812478969992)
,p_name=>'Tipo Ventas'
,p_parent_plug_id=>wwv_flow_api.id(161428514514339088)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 390px"'
,p_display_column=>2
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_VENTAS,',
'       ID_NUM_INSCRIPCION,',
'       ID_TIPO_VENTAS',
'  from VENTAS_X_SOLICITUD_INSCRIP',
'  where ID_NUM_INSCRIPCION = :P201_ID_NUM_INSCRIPCION'))
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
 p_id=>wwv_flow_api.id(183605304527922243)
,p_query_column_id=>1
,p_column_alias=>'ID_VENTAS'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183605423992922244)
,p_query_column_id=>2
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183605546645922245)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_VENTAS'
,p_column_display_sequence=>3
,p_column_heading=>'Tipo Ventas'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(161689748935775872)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(229111561433667545)
,p_name=>unistr('Tel\00E9fonos')
,p_parent_plug_id=>wwv_flow_api.id(161428514514339088)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TELEFONO,',
'       ID_TIPO_TELEFONO,',
'       TELEFONO',
'  from TELEFONO_X_SOLICITUD_INSCRIP',
'  where ID_NUM_INSCRIPCION = :P201_ID_NUM_INSCRIPCION'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P201_ID_NUM_INSCRIPCION'
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
 p_id=>wwv_flow_api.id(229111643465667546)
,p_query_column_id=>1
,p_column_alias=>'ID_TELEFONO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(229111749839667547)
,p_query_column_id=>2
,p_column_alias=>'ID_TIPO_TELEFONO'
,p_column_display_sequence=>2
,p_column_heading=>unistr('Tipo Tel\00E9fono')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(182060249592638115)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(229111853771667548)
,p_query_column_id=>3
,p_column_alias=>'TELEFONO'
,p_column_display_sequence=>3
,p_column_heading=>unistr('Tel\00E9fonos')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161428625837339089)
,p_plug_name=>unistr('Domicilio/Direcci\00F3n ')
,p_parent_plug_id=>wwv_flow_api.id(161428732609339090)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161748125928929560)
,p_plug_name=>'Domicilio Fiscal '
,p_parent_plug_id=>wwv_flow_api.id(161428625837339089)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161748194623929561)
,p_plug_name=>unistr('Direcci\00F3n para Notificaciones')
,p_parent_plug_id=>wwv_flow_api.id(161428625837339089)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(162372072707264243)
,p_name=>'Email'
,p_parent_plug_id=>wwv_flow_api.id(161748194623929561)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="height: 205px"'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_NUM_INSCRIPCION,',
'       ID_CORREO_NOTIFICA,',
'       CORREO_NOTIFICA',
'  from CORREO_NOTIFICA_INSCRIP',
'  WHERE ID_NUM_INSCRIPCION = :P201_ID_NUM_INSCRIPCION'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>2
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(162372175407264244)
,p_query_column_id=>1
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(162372242482264245)
,p_query_column_id=>2
,p_column_alias=>'ID_CORREO_NOTIFICA'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(162372323172264246)
,p_query_column_id=>3
,p_column_alias=>'CORREO_NOTIFICA'
,p_column_display_sequence=>3
,p_column_heading=>'Correos para Notificar'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(162372468356264247)
,p_plug_name=>'Direccion '
,p_parent_plug_id=>wwv_flow_api.id(161748194623929561)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_region_attributes=>'style="height: 205px"'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161428874045339091)
,p_plug_name=>'Gerente/Representante Legal'
,p_parent_plug_id=>wwv_flow_api.id(161428732609339090)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(162372488063264248)
,p_plug_name=>unistr('Informaci\00F3n Gerente de la entidad')
,p_parent_plug_id=>wwv_flow_api.id(161428874045339091)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(183995330009754768)
,p_name=>unistr('Informaci\00F3n Representante Legal')
,p_parent_plug_id=>wwv_flow_api.id(161428874045339091)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID_REPRESENTA,',
'       a.ID_NUM_INSCRIPCION,',
'       a.NOMBRE_ARCHIVO,',
'       a.NOMBRE_ARCHIVO VER2,',
'       sys.dbms_lob.getlength(A.ARCHIVO_REPRESENTA)VER,',
'       sys.dbms_lob.getlength(A.ARCHIVO_REPRESENTA)DESCARGAR,',
'       a.MIMETYPE,',
'       a.FEC_ACT,',
'       i.NOMBRE_REPRE_LEGAL,',
'       i.CEDULA_REPRE_LEGAL,',
'       i.CORREO_REPRE_LEGAL',
'  from ARCHI_REPRE_LEGAL_INSCRIP a, SOLICITUD_INSCRIPCION i',
'  where a.ID_NUM_INSCRIPCION = i.ID_NUM_INSCRIPCION',
'  AND  a.ID_NUM_INSCRIPCION = :P201_ID_NUM_INSCRIPCION'))
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
 p_id=>wwv_flow_api.id(183995437516754769)
,p_query_column_id=>1
,p_column_alias=>'ID_REPRESENTA'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183995517137754770)
,p_query_column_id=>2
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183995671624754771)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ARCHIVO'
,p_column_display_sequence=>6
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191103595289479349)
,p_query_column_id=>4
,p_column_alias=>'VER2'
,p_column_display_sequence=>10
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
 p_id=>wwv_flow_api.id(191103721317479350)
,p_query_column_id=>5
,p_column_alias=>'VER'
,p_column_display_sequence=>9
,p_column_heading=>'Ver online'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_REPRE_LEGAL_INSCRIP:ARCHIVO_REPRESENTA:ID_REPRESENTA::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::inline:Ver:'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183996176377754776)
,p_query_column_id=>6
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>12
,p_column_heading=>'Descargar'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_REPRE_LEGAL_INSCRIP:ARCHIVO_REPRESENTA:ID_REPRESENTA::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183995807856754773)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183995952371754774)
,p_query_column_id=>8
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183996219765754777)
,p_query_column_id=>9
,p_column_alias=>'NOMBRE_REPRE_LEGAL'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183996296599754778)
,p_query_column_id=>10
,p_column_alias=>'CEDULA_REPRE_LEGAL'
,p_column_display_sequence=>4
,p_column_heading=>'Cedula '
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(183996433665754779)
,p_query_column_id=>11
,p_column_alias=>'CORREO_REPRE_LEGAL'
,p_column_display_sequence=>5
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191103496628479348)
,p_query_column_id=>12
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>11
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_repre_legal(''#ID_REPRESENTA#'', ''#ID_NUM_INSCRIPCION#'', ''RLIR'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191103247994479345)
,p_plug_name=>'Archivo Representante Legal'
,p_region_name=>'PDF'
,p_parent_plug_id=>wwv_flow_api.id(161428874045339091)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=Mostrar_pdf_Repre_legal_IR:YES::P201_ID_REPRESENTA:&P201_ID_REPRESENTA." width="110%" height="1000">',
'</iframe>',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161428911132339092)
,p_plug_name=>'Observaciones'
,p_parent_plug_id=>wwv_flow_api.id(161428732609339090)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(161746383790929543)
,p_name=>'Impuestos a Declarar / Encargado del Impuesto'
,p_parent_plug_id=>wwv_flow_api.id(161428732609339090)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_NUM_INSCRIPCION,',
'       ID_TIPO_IMPUESTO,',
'       NOMBRE_ENCARGADO_IMP,',
'       CEDULA_ENCARGADO_IMP,',
'       CORREO_ENCARGADO_IMP',
'  from IMPUESTO_X_SOLICITUD_INSCRI',
'  where ID_NUM_INSCRIPCION = :P201_ID_NUM_INSCRIPCION'))
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
 p_id=>wwv_flow_api.id(161746523311929544)
,p_query_column_id=>1
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161746626020929545)
,p_query_column_id=>2
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
 p_id=>wwv_flow_api.id(161746724112929546)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ENCARGADO_IMP'
,p_column_display_sequence=>3
,p_column_heading=>'Encargado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161746818690929547)
,p_query_column_id=>4
,p_column_alias=>'CEDULA_ENCARGADO_IMP'
,p_column_display_sequence=>4
,p_column_heading=>unistr('C\00E9dula')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161746970310929548)
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
 p_id=>wwv_flow_api.id(162372766278264250)
,p_name=>'Documentos Requeridos'
,p_parent_plug_id=>wwv_flow_api.id(161428732609339090)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
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
'  where ID_NUM_INSCRIPCION = :P201_ID_NUM_INSCRIPCION'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P201_ID_NUM_INSCRIPCION'
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
 p_id=>wwv_flow_api.id(169221475634313457)
,p_query_column_id=>1
,p_column_alias=>'ID_ARCHI_REQUI'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(169221526466313458)
,p_query_column_id=>2
,p_column_alias=>'ID_REQUISITOS_INS'
,p_column_display_sequence=>2
,p_column_heading=>'Requisitos'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(169262864369395251)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(169221638783313459)
,p_query_column_id=>3
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(169221683786313460)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_REQUISITO'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(169222144910313464)
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
 p_id=>wwv_flow_api.id(169222236163313465)
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
 p_id=>wwv_flow_api.id(169221904957313462)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174609566563829071)
,p_query_column_id=>8
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>9
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191106830694479381)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>7
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_requisitos(''#ID_ARCHI_REQUI#'', ''#ID_NUM_INSCRIPCION#'', ''R'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192271436501822853)
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
 p_id=>wwv_flow_api.id(192271522281822854)
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
 p_id=>wwv_flow_api.id(235552480483488252)
,p_name=>'Adjuntar Archivos CCSS, HACIENDA, FODESAF'
,p_parent_plug_id=>wwv_flow_api.id(162372766278264250)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_DOCUMENTO,',
'       ID_NUM_INSCRIP,',
'       NOM_ENTIDAD,',
'       NOM_ARCHIVO,',
'       sys.dbms_lob.getlength(ARCHIVO)DESCARGAR,',
'       MIMETYPE,',
'       FEC_ACT,',
'       USUARIO_SIT',
'  from ARCHI_COMPRU_REQUI',
'  where ID_NUM_INSCRIP = :P201_ID_NUM_INSCRIPCION'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P201_ID_NUM_INSCRIPCION'
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
 p_id=>wwv_flow_api.id(235552666870488253)
,p_query_column_id=>1
,p_column_alias=>'ID_DOCUMENTO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(235552758266488254)
,p_query_column_id=>2
,p_column_alias=>'ID_NUM_INSCRIP'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(235552792133488255)
,p_query_column_id=>3
,p_column_alias=>'NOM_ENTIDAD'
,p_column_display_sequence=>3
,p_column_heading=>unistr('Descripci\00F3n ')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(235552913338488256)
,p_query_column_id=>4
,p_column_alias=>'NOM_ARCHIVO'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre Archivo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(235553446396488261)
,p_query_column_id=>5
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>5
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_COMPRU_REQUI:ARCHIVO:ID_DOCUMENTO::MIMETYPE:NOM_ARCHIVO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(235553096076488258)
,p_query_column_id=>6
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(235553229594488259)
,p_query_column_id=>7
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(235553312705488260)
,p_query_column_id=>8
,p_column_alias=>'USUARIO_SIT'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(235553552782488262)
,p_plug_name=>'Adjuntar Archivo'
,p_region_name=>'ARCHIVO'
,p_parent_plug_id=>wwv_flow_api.id(235552480483488252)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(155139048344979462)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(162372839299264251)
,p_plug_name=>'Aprobar'
,p_parent_plug_id=>wwv_flow_api.id(161428732609339090)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>110
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P201_CODIGO_ESTADO'
,p_plug_display_when_cond2=>'P'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(168431274132717156)
,p_name=>unistr('Informaci\00F3n Apoderado')
,p_parent_plug_id=>wwv_flow_api.id(161428732609339090)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID_ARCHI_APODERA,',
'       a.ID_APODERADO,',
'       a.NOMBRE_ARCHIVO,',
'       sys.dbms_lob.getlength(a.ARCHIVO_APODERADO)DESCARGAR,',
'       sys.dbms_lob.getlength(a.ARCHIVO_APODERADO)Ver,',
'       a.MIMETYPE,',
'       a.FEC_ACT,',
'       b.NOMBRE_APODERADO,',
'       b.CEDULA_APODERADO,',
'       b.CORREO_APODERADO,',
'       b.ID_TIPO_IMPUESTO,',
'       b.INDICA_AUTORIZO,',
'       b.FECHA_INICIO_AUTORIZA,',
'       b.FECHA_FIN_AUTORIZA,',
'       b.ID_TIPO_APODERADO,',
'       b.ID_NUM_INSCRIPCION',
'  from ARCHI_APODERA_SOLICITUD a, APODERADOS_SOLICITUD b',
'  where a.id_apoderado = b.id_apoderado',
'  and   b.ID_NUM_INSCRIPCION = :P201_ID_NUM_INSCRIPCION',
'  and   b.ID_TIPO_APODERADO IS NOT NULL'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P201_ID_NUM_INSCRIPCION'
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
 p_id=>wwv_flow_api.id(168433273128717176)
,p_query_column_id=>1
,p_column_alias=>'ID_ARCHI_APODERA'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168433370864717177)
,p_query_column_id=>2
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168433470613717178)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ARCHIVO'
,p_column_display_sequence=>9
,p_column_heading=>'Nombre Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168433721381717181)
,p_query_column_id=>4
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>14
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_APODERA_SOLICITUD:ARCHIVO_APODERADO:ID_ARCHI_APODERA::MIMETYPE:NOMBRE_ARCHIVO:::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168434725948717191)
,p_query_column_id=>5
,p_column_alias=>'VER'
,p_column_display_sequence=>12
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_APODERA_SOLICITUD:ARCHIVO_APODERADO:ID_ARCHI_APODERA::MIMETYPE:NOMBRE_ARCHIVO:::inline:Ver:'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168432516798717169)
,p_query_column_id=>6
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168433580949717180)
,p_query_column_id=>7
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168433902625717183)
,p_query_column_id=>8
,p_column_alias=>'NOMBRE_APODERADO'
,p_column_display_sequence=>2
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168434035471717184)
,p_query_column_id=>9
,p_column_alias=>'CEDULA_APODERADO'
,p_column_display_sequence=>3
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168434168349717185)
,p_query_column_id=>10
,p_column_alias=>'CORREO_APODERADO'
,p_column_display_sequence=>4
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168434260351717186)
,p_query_column_id=>11
,p_column_alias=>'ID_TIPO_IMPUESTO'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168434373101717187)
,p_query_column_id=>12
,p_column_alias=>'INDICA_AUTORIZO'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168434405257717188)
,p_query_column_id=>13
,p_column_alias=>'FECHA_INICIO_AUTORIZA'
,p_column_display_sequence=>8
,p_column_heading=>'Fecha Inicio Autoriza'
,p_use_as_row_header=>'N'
,p_column_format=>'dd/mm/yyyy'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168434577465717189)
,p_query_column_id=>14
,p_column_alias=>'FECHA_FIN_AUTORIZA'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168434655309717190)
,p_query_column_id=>15
,p_column_alias=>'ID_TIPO_APODERADO'
,p_column_display_sequence=>5
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
 p_id=>wwv_flow_api.id(191106625657479379)
,p_query_column_id=>16
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191106565566479378)
,p_query_column_id=>17
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>13
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_apoderado(''#ID_ARCHI_APODERA#'', ''#ID_APODERADO#'', ''#ID_NUM_INSCRIPCION#'', ''AIR'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(168564048847455692)
,p_plug_name=>unistr('Autorizaci\00F3n Uso Firma Digital / Apoderado')
,p_parent_plug_id=>wwv_flow_api.id(161428732609339090)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(168600965616340161)
,p_name=>unistr('Autorizaci\00F3n Uso Firma Digital / Apoderado')
,p_parent_plug_id=>wwv_flow_api.id(168564048847455692)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>1
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_APODERADO,',
'       ID_NUM_INSCRIPCION,',
'       ID_TIPO_APODERADO,',
'       NOMBRE_APODERADO,',
'       CEDULA_APODERADO,',
'       CORREO_APODERADO,',
'       --ID_TIPO_IMPUESTO,',
'       INDICA_AUTORIZO,',
'       FECHA_INICIO_AUTORIZA,',
'       FECHA_FIN_AUTORIZA',
'  from APODERADOS_SOLICITUD',
'  where ID_NUM_INSCRIPCION = :P201_ID_NUM_INSCRIPCION',
'  AND   ID_TIPO_APODERADO IS NULL',
'  AND   INDICA_AUTORIZO = ''F'''))
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
 p_id=>wwv_flow_api.id(168602884657340181)
,p_query_column_id=>1
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168602994028340182)
,p_query_column_id=>2
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168603133045340183)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_APODERADO'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168603209877340184)
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
 p_id=>wwv_flow_api.id(168603329405340185)
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
 p_id=>wwv_flow_api.id(168603420572340186)
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
 p_id=>wwv_flow_api.id(168603635017340188)
,p_query_column_id=>7
,p_column_alias=>'INDICA_AUTORIZO'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168603704739340189)
,p_query_column_id=>8
,p_column_alias=>'FECHA_INICIO_AUTORIZA'
,p_column_display_sequence=>8
,p_column_heading=>'Inicio Autoriza'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168603877092340190)
,p_query_column_id=>9
,p_column_alias=>'FECHA_FIN_AUTORIZA'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(259732803634611384)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Impuestos'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.::P241_ID_APODERADO:#ID_APODERADO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(168643510273259462)
,p_name=>unistr('Autorizaci\00F3n a Terceros')
,p_parent_plug_id=>wwv_flow_api.id(168564048847455692)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_column=>1
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID_APODERADO,',
'       a.ID_NUM_INSCRIPCION,',
'       a.ID_TIPO_APODERADO,',
'       a.NOMBRE_APODERADO,',
'       a.CEDULA_APODERADO,',
'       a.CORREO_APODERADO,',
'      -- a.ID_TIPO_IMPUESTO,',
'       a.INDICA_AUTORIZO,',
'       a.FECHA_INICIO_AUTORIZA,',
'       a.FECHA_FIN_AUTORIZA',
'  from APODERADOS_SOLICITUD a',
'  where a.ID_NUM_INSCRIPCION = :P201_ID_NUM_INSCRIPCION',
'  and   a.ID_TIPO_APODERADO IS NULL',
'  and   a.INDICA_AUTORIZO = ''T'''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P201_ID_NUM_INSCRIPCION'
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
 p_id=>wwv_flow_api.id(168644533004259472)
,p_query_column_id=>1
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168643668247259463)
,p_query_column_id=>2
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168643717049259464)
,p_query_column_id=>3
,p_column_alias=>'ID_TIPO_APODERADO'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168643833364259465)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_APODERADO'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168643882653259466)
,p_query_column_id=>5
,p_column_alias=>'CEDULA_APODERADO'
,p_column_display_sequence=>4
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168644020251259467)
,p_query_column_id=>6
,p_column_alias=>'CORREO_APODERADO'
,p_column_display_sequence=>5
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168644218989259469)
,p_query_column_id=>7
,p_column_alias=>'INDICA_AUTORIZO'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168644321263259470)
,p_query_column_id=>8
,p_column_alias=>'FECHA_INICIO_AUTORIZA'
,p_column_display_sequence=>7
,p_column_heading=>'Inicio Autoriza'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(168644443082259471)
,p_query_column_id=>9
,p_column_alias=>'FECHA_FIN_AUTORIZA'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(191106753748479380)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_apoderado(''#ID_ARCHI_APODERA#'', ''#ID_APODERADO#'', ''#ID_NUM_INSCRIPCION#'', ''AIR'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192271360373822852)
,p_query_column_id=>11
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>12
,p_column_heading=>'Archivos'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P201_ID_APODERADO'',''#ID_APODERADO#'');javascript:openModal(''ARCHI_APO''); $("#ARCHI_APO").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(259733072207611386)
,p_query_column_id=>12
,p_column_alias=>'DERIVED$03'
,p_column_display_sequence=>11
,p_column_heading=>'Impuestos'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.::P241_ID_APODERADO:#ID_APODERADO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(186818602964999584)
,p_name=>unistr('Autorizaci\00F3n a Terceros Archivos')
,p_region_name=>'ARCHI_APO'
,p_parent_plug_id=>wwv_flow_api.id(168564048847455692)
,p_template=>wwv_flow_api.id(155139048344979462)
,p_display_sequence=>30
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
'  from ARCHI_APODERA_SOLICITUD b',
'  WHERE b.ID_APODERADO = :P201_ID_APODERADO',
'  '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P201_ID_APODERADO'
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
 p_id=>wwv_flow_api.id(192270481000822844)
,p_query_column_id=>1
,p_column_alias=>'ID_APODERADO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192270637525822845)
,p_query_column_id=>2
,p_column_alias=>'ID_ARCHI_APODERA'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192270715984822846)
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
 p_id=>wwv_flow_api.id(192271060107822849)
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
 p_id=>wwv_flow_api.id(192270862644822847)
,p_query_column_id=>5
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>4
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHI_APODERA_SOLICITUD:ARCHIVO_APODERADO:ID_ARCHI_APODERA::MIMETYPE:NOMBRE_ARCHIVO:::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192270913659822848)
,p_query_column_id=>6
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192271117513822850)
,p_query_column_id=>7
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>7
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Ir_Archivo_apoderado(''#ID_ARCHI_APODERA#'', ''#ID_APODERADO#'', ''&P201_ID_NUM_INSCRIPCION.'', ''AIR'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(162372888915264252)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(162372839299264251)
,p_button_name=>'BTN_GUARDAR_A'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(235553694314488264)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(235553552782488262)
,p_button_name=>'BTN_GUARDAR_ARCHIVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(174609675729829072)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(162372839299264251)
,p_button_name=>'BTN_GUARDAR_R'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Rechazar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:229:&SESSION.::&DEBUG.:229:P229_ID_INSCRIPCION,P229_ID_TIPO_SOLICITUD,P229_TIPO_CORREO,P229_PAGINA:&P201_ID_NUM_INSCRIPCION.,3,R,200'
,p_button_css_classes=>'u-color-39'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(161665880699812363)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(161641997814812395)
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
 p_id=>wwv_flow_api.id(161666308859812363)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(161641997814812395)
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
 p_id=>wwv_flow_api.id(161665555777812363)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(161641997814812395)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(161664695552812369)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(161428514514339088)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(192553304796429989)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(162372766278264250)
,p_button_name=>'BTN_CCSS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Acceso CCSS'
,p_button_position=>'TOP'
,p_button_redirect_url=>'https://sfa.ccss.sa.cr/moroso/'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(192553462210429990)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(162372766278264250)
,p_button_name=>'BTN_HACIENDA'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Acceso Hacienda'
,p_button_position=>'TOP'
,p_button_redirect_url=>'https://atv.hacienda.go.cr/ATV/frmConsultaSituTributaria.aspx'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(195722945629445567)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(162372766278264250)
,p_button_name=>'BTN_LOSESAT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Acceso Fodesaf'
,p_button_position=>'TOP'
,p_button_redirect_url=>'http://fodesaf.go.cr/gestion_de_cobros/Consulta_patronos_morosos.html'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(235553929394488266)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(235552480483488252)
,p_button_name=>'BTN_ADJUNTAR'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adjuntar Archivo'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:openModal(''ARCHIVO''); $("#ARCHIVO").trigger("apexrefresh");'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(161666644850812363)
,p_branch_name=>'Go To Page 200'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(162372888915264252)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(235554265173488269)
,p_branch_name=>'Go To Page 201'
,p_branch_action=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.::P201_ID_NUM_INSCRIPCION:&P201_ID_NUM_INSCRIPCION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(235553694314488264)
,p_branch_sequence=>11
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161642404632812392)
,p_name=>'P201_ID_NUM_INSCRIPCION'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_source=>'ID_NUM_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161642741468812387)
,p_name=>'P201_NOMBRE_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>'Nombre Entidad:'
,p_source=>'NOMBRE_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161643089031812383)
,p_name=>'P201_ID_TIPO_IDENTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>unistr('Tipo Identificaci\00F3n:')
,p_source=>'ID_TIPO_IDENTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_IDENTIFICACION'
,p_cHeight=>1
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161643495956812383)
,p_name=>'P201_RAZON_SOCIAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>unistr('Raz\00F3n Social:')
,p_source=>'RAZON_SOCIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_tag_attributes=>'disabled=disabled'
,p_display_when=>'P201_ID_TIPO_IDENTIFICACION'
,p_display_when2=>'1'
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
 p_id=>wwv_flow_api.id(161643911353812383)
,p_name=>'P201_PERSONA_FISICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>unistr('Persona F\00EDsica:')
,p_source=>'PERSONA_FISICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>20
,p_tag_attributes=>'disabled=disabled'
,p_display_when=>'P201_ID_TIPO_IDENTIFICACION'
,p_display_when2=>'2'
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
 p_id=>wwv_flow_api.id(161644327132812383)
,p_name=>'P201_CEDULA_JURIDICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>'Documento de identidad:'
,p_source=>'CEDULA_JURIDICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'disabled=disabled'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_display_when=>'P201_ID_TIPO_IDENTIFICACION'
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
 p_id=>wwv_flow_api.id(161644690622812383)
,p_name=>'P201_CEDULA_FISICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>'Documento de identidad:'
,p_source=>'CEDULA_FISICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'disabled=disabled'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_display_when=>'P201_ID_TIPO_IDENTIFICACION'
,p_display_when2=>'2'
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
 p_id=>wwv_flow_api.id(161645122626812382)
,p_name=>'P201_TIPO_FUENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
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
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161645494642812382)
,p_name=>'P201_CODIGO_IATA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>unistr('C\00F3digo IATA:')
,p_source=>'CODIGO_IATA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_tag_attributes=>'disabled=disabled'
,p_display_when=>'P201_MOSTRAR_IATA'
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
 p_id=>wwv_flow_api.id(161646286575812382)
,p_name=>'P201_FECHA_INICIO_OPERA'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>'Inicio Operaciones:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_INICIO_OPERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161646681929812382)
,p_name=>'P201_DIRECCION_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(161748125928929560)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>unistr('Direcci\00F3n:')
,p_source=>'DIRECCION_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>175
,p_cMaxlength=>1000
,p_cHeight=>1
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161647166489812381)
,p_name=>'P201_ID_PROVINCIA_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(161748125928929560)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>'Provincia:'
,p_source=>'ID_PROVINCIA_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM PROVINCIAS@consulta_ictx'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161647570911812381)
,p_name=>'P201_ID_CANTON_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(161748125928929560)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>unistr('Cant\00F3n:')
,p_source=>'ID_CANTON_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM CANTONES@consulta_ictx WHERE PROV_ID = :P201_ID_PROVINCIA_ENTIDAD'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P201_ID_PROVINCIA_ENTIDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'disabled=disabled'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161647881921812381)
,p_name=>'P201_ID_DISTRITO_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(161748125928929560)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>'Distrito:'
,p_source=>'ID_DISTRITO_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ID ',
'FROM DISTRITOS@consulta_ictx ',
'WHERE PROV_ID = :P201_ID_PROVINCIA_ENTIDAD ',
'AND CANTON_ID = :P201_ID_CANTON_ENTIDAD'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P201_ID_PROVINCIA_ENTIDAD,P201_ID_CANTON_ENTIDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'disabled=disabled'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161648352828812380)
,p_name=>'P201_DIRECCION_NOTIFICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(162372468356264247)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>unistr('Direcci\00F3n:')
,p_source=>'DIRECCION_NOTIFICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>175
,p_cMaxlength=>800
,p_cHeight=>1
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161648770527812379)
,p_name=>'P201_ID_PROVINCIA_NOTIFICA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(162372468356264247)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>'Provincia:'
,p_source=>'ID_PROVINCIA_NOTIFICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM PROVINCIAS@consulta_ictx'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161649099445812379)
,p_name=>'P201_ID_CANTON_NOTIFICA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(162372468356264247)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>unistr('Cant\00F3n:')
,p_source=>'ID_CANTON_NOTIFICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM CANTONES@consulta_ictx WHERE PROV_ID = :P201_ID_PROVINCIA_NOTIFICA'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P201_ID_PROVINCIA_NOTIFICA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'disabled=disabled'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161649495874812379)
,p_name=>'P201_ID_DISTRITO_NOTIFICA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(162372468356264247)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>'Distrito:'
,p_source=>'ID_DISTRITO_NOTIFICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ID ',
'FROM DISTRITOS@consulta_ictx ',
'WHERE PROV_ID = :P201_ID_PROVINCIA_NOTIFICA ',
'AND CANTON_ID = :P201_ID_CANTON_NOTIFICA'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P201_ID_PROVINCIA_NOTIFICA,P201_ID_CANTON_NOTIFICA'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'disabled=disabled'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161649894773812379)
,p_name=>'P201_CEDULA_GERENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(162372488063264248)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>'Cedula Gerente:'
,p_source=>'CEDULA_GERENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_tag_attributes=>'disabled=disabled'
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
 p_id=>wwv_flow_api.id(161650307477812379)
,p_name=>'P201_NOMBRE_GERENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(162372488063264248)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>'Nombre Gerente:'
,p_source=>'NOMBRE_GERENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161650758440812378)
,p_name=>'P201_CORREO_GERENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(162372488063264248)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>'Correo Gerente:'
,p_source=>'CORREO_GERENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_tag_attributes=>'disabled=disabled'
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
 p_id=>wwv_flow_api.id(161652363016812378)
,p_name=>'P201_CODIGO_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(162372839299264251)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_source=>'CODIGO_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161652694852812377)
,p_name=>'P201_FECHA_INSCRIPCION'
,p_source_data_type=>'DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>unistr('Fecha Inscripci\00F3n:')
,p_format_mask=>'dd/mm/yyyy'
,p_source=>'FECHA_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'disabled=disabled'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161653123690812377)
,p_name=>'P201_OBSERVA_EMPRESA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(161428911132339092)
,p_item_source_plug_id=>wwv_flow_api.id(161641997814812395)
,p_prompt=>' Observaciones del Administrado:'
,p_source=>'OBSERVA_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>800
,p_cHeight=>4
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161653557693812377)
,p_name=>'P201_OBSERVA_ADM_TRIBUTA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(162372839299264251)
,p_prompt=>unistr(' Observaciones Administraci\00F3n Tributaria:')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>800
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161653923729812377)
,p_name=>'P201_FECHA_SUSCRITO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(162372839299264251)
,p_prompt=>'Fecha Suscrito:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161654330884812377)
,p_name=>'P201_LUGAR_SUSCRITO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(162372839299264251)
,p_item_default=>unistr('''San Jos\00E9''')
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Lugar Suscrito:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161654689482812376)
,p_name=>'P201_USUARIO_INTERNO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(162372839299264251)
,p_item_default=>':APP_USER'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Usuario Interno:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>8
,p_tag_attributes=>'disabled=disabled'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174775383231225260)
,p_name=>'P201_ID_MODALIDAD'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(162372839299264251)
,p_prompt=>unistr('Modalidad (Tipo Declaraci\00F3n):')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_MODALIDAD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207623345979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(191103981996479353)
,p_name=>'P201_ID_REPRESENTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(191103247994479345)
,p_item_default=>'60'
,p_prompt=>'New'
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
 p_id=>wwv_flow_api.id(192271256089822851)
,p_name=>'P201_ID_APODERADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(186818602964999584)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232291428069347773)
,p_name=>'P201_MOSTRAR_IATA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(161428514514339088)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(235553649356488263)
,p_name=>'P201_ARCHIVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(235553552782488262)
,p_prompt=>'Archivo:'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(235554133849488268)
,p_name=>'P201_NOM_ENTIDAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(235553552782488262)
,p_prompt=>unistr('Descripci\00F3n: ')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(174778420023225290)
,p_name=>'DAC_BOTONES'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_ID_MODALIDAD'
,p_condition_element=>'P201_ID_MODALIDAD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(174778532572225291)
,p_event_id=>wwv_flow_api.id(174778420023225290)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(162372888915264252)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(176507784205044943)
,p_event_id=>wwv_flow_api.id(174778420023225290)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(162372888915264252)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(191103320598479346)
,p_name=>'DAC_PDFVIEWER'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'PDFViewer'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(191103454215479347)
,p_event_id=>wwv_flow_api.id(191103320598479346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let id = this.data.id; ',
'async function getData(){ ',
'let afetch = await fetch(`http://20.0.0.110:9898/apex/desa_sit/pdf/pdfs/`+id);   ',
'let blob = await afetch.blob(); ',
'let blobUrl = URL.createObjectURL(blob); ',
'let pdfContainer = document.getElementById(''pdfViewer''); ',
'pdfContainer.getElementsByTagName(''iframe'')[0].src = blobUrl;} ',
'getData();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(191104569589479358)
,p_name=>'New'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(191104613959479359)
,p_event_id=>wwv_flow_api.id(191104569589479358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(191103247994479345)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(234056057933275653)
,p_name=>'DAC_UPPER_OBSERV'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_OBSERVA_ADM_TRIBUTA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(234056119390275654)
,p_event_id=>wwv_flow_api.id(234056057933275653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P201_OBSERVA_ADM_TRIBUTA").val($("#P201_OBSERVA_ADM_TRIBUTA").val().toUpperCase());'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(161667504162812359)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(161641997814812395)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 201-Formulario Solicitud Inscripcion'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(174610321158829079)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_MIGRA_INCRIP_MC_A'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vId_Contribuyente NUMBER;',
'vCedula NUMBER;',
'vMensaje_Retorno VARCHAR2(255);',
'vRetorno BOOLEAN;',
'BEGIN',
'--RAISE_APPLICATION_ERROR(-20000, :P201_ID_NUM_INSCRIPCION);',
'PKG_INSCRIPCION_REGULAR.P_APROBAR_SOLI_INSCRIPCION (:P201_ID_NUM_INSCRIPCION,',
'                                                    vId_Contribuyente,',
'                                                    vCedula,',
'                                                    :P201_OBSERVA_ADM_TRIBUTA,',
'                                                    :P201_ID_MODALIDAD,',
'                                                    :APP_USER,',
'                                                    3,',
'                                                    ''A'',',
'                                                     0,',
'                                                    vMensaje_Retorno,',
'                                                    vRetorno);',
'COMMIT;                            ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(162372888915264252)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(235554074255488267)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ARCHIVOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_retorno_boolean   boolean;',
'v_mensaje_retorno   varchar2(2000);',
'vArchivo BLOB;',
'vMimetype VARCHAR2(255);',
'vFilename VARCHAR2(255);',
'BEGIN',
'IF :P201_ARCHIVO IS NOT NULL THEN',
'    SELECT BLOB_CONTENT, MIME_TYPE, FILENAME INTO vArchivo,vMimetype, vFilename FROM APEX_APPLICATION_TEMP_FILES WHERE NAME = :P201_ARCHIVO;',
'     PKG_INSCRIPCION_REGULAR.P_INSERT_ARCHI_COMPRU_INSCRIP (:P201_ID_NUM_INSCRIPCION,',
'                                                            :P201_NOM_ENTIDAD,',
'                                                            vFilename,',
'                                                            vArchivo,',
'                                                            vMimetype,',
'                                                            :APP_USER,',
'                                                            ''IR'',',
'                                                            v_mensaje_retorno,',
'                                                            v_retorno_boolean);',
'END IF;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(235553694314488264)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(161667082713812360)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(161641997814812395)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 201-Formulario Solicitud Inscripcion'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(232291315700347772)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vFecha DATE;',
'BEGIN',
'IF :P201_TIPO_FUENTE IN (4,5) THEN',
'    :P201_MOSTRAR_IATA := ''N'';',
'    ELSE',
'    :P201_MOSTRAR_IATA := ''S'';',
'END IF;',
'',
'--vFecha := TO_DATE (SYSDATE, ''DD/MM/YYYY'');',
'--:P201_FECHA_SUSCRITO :=vFecha;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
