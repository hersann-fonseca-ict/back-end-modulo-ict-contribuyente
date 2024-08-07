prompt --application/pages/page_00245
begin
--   Manifest
--     PAGE: 00245
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
 p_id=>245
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'245-Formulario Declaracion Jurada COT'
,p_alias=>'245-FORMULARIO-DECLARACION-JURADA-COT'
,p_step_title=>'245-Formulario Declaracion Jurada COT'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'//Funcion para redireccionar a la pagina 135 y visualizar los archivo de requisito de inscripcion',
'function Archivo_requisitos(pIdDeclara ,pIdArchi,pMostrar) {',
'    var vURL = ''f?p=&APP_ID.:154:&APP_SESSION.::NO:154:P154_ID_DECLARACION,P154_ID_DOC,P154_MOSTRAR_REGION:'' + pIdDeclara  + '','' +pIdArchi + '','' + pMostrar;',
'    window.open(vURL, "", "width=1000,height=800");',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230512130602'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(290707052878734733)
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
 p_id=>wwv_flow_api.id(290707732797734740)
,p_plug_name=>'Tabs'
,p_parent_plug_id=>wwv_flow_api.id(290707052878734733)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill:t-TabsRegion-mod--large'
,p_plug_template=>wwv_flow_api.id(155153351427979457)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(290707802139734741)
,p_name=>unistr('Revisi\00F3n de Requisitos')
,p_parent_plug_id=>wwv_flow_api.id(290707732797734740)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_REQUI_CTO,',
'       ID_DECLARA_CTO,',
'       NOMBRE_ARCHIVO,',
'       sys.dbms_lob.getlength(ARCHIVO)DESCARGAR,',
'       MIMETYPE,',
'       FEC_ACT,',
'       ID_DOC',
'  from ARCHIVOS_DECLARA_CHARTER_TO',
'  where  ID_DECLARA_CTO = :P245_ID_DECLARA_CTO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P245_ID_DECLARA_CTO'
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
 p_id=>wwv_flow_api.id(152511702577853151)
,p_query_column_id=>1
,p_column_alias=>'ID_REQUI_CTO'
,p_column_display_sequence=>1
,p_column_heading=>'Requisito'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(169262864369395251)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152512151282853151)
,p_query_column_id=>2
,p_column_alias=>'ID_DECLARA_CTO'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152512570538853151)
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
 p_id=>wwv_flow_api.id(152513794284853150)
,p_query_column_id=>4
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>5
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVOS_DECLARA_CHARTER_TO:ARCHIVO:ID_DOC::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152512982654853151)
,p_query_column_id=>5
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152513387807853150)
,p_query_column_id=>6
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>7
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(167974833874571039)
,p_query_column_id=>7
,p_column_alias=>'ID_DOC'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(167974999718571040)
,p_query_column_id=>8
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>4
,p_column_heading=>'Ver'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:Archivo_requisitos(''#ID_DECLARA_CTO#'', ''#ID_DOC#'', ''C'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(166183147675266344)
,p_plug_name=>'Botones'
,p_parent_plug_id=>wwv_flow_api.id(290707802139734741)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(518774412730616208)
,p_name=>'Adjuntar Archivos CCSS, HACIENDA, FODESAF'
,p_parent_plug_id=>wwv_flow_api.id(290707802139734741)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>20
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
'  where ID_NUM_INSCRIP = :P245_ID_DECLARA_CTO',
'  and TIPO_INSCRIP = ''COT'''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P245_ID_DECLARA_CTO'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152515682374853149)
,p_query_column_id=>1
,p_column_alias=>'ID_DOCUMENTO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152516063487853149)
,p_query_column_id=>2
,p_column_alias=>'ID_NUM_INSCRIP'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152516482659853149)
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
 p_id=>wwv_flow_api.id(152516896618853148)
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
 p_id=>wwv_flow_api.id(152518412738853148)
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
 p_id=>wwv_flow_api.id(152517211807853148)
,p_query_column_id=>6
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152517651111853148)
,p_query_column_id=>7
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152518025572853148)
,p_query_column_id=>8
,p_column_alias=>'USUARIO_SIT'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(518775485029616218)
,p_plug_name=>'Adjuntar Archivo'
,p_region_name=>'ARCHIVO'
,p_parent_plug_id=>wwv_flow_api.id(518774412730616208)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(155139048344979462)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(291882349658438980)
,p_plug_name=>unistr('Declaraci\00F3n Jurada')
,p_parent_plug_id=>wwv_flow_api.id(290707732797734740)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DECLARA_CHARTER_TERRESTRE_O'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(292431731643741509)
,p_plug_name=>'Comprobante de Pago'
,p_parent_plug_id=>wwv_flow_api.id(290707732797734740)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P245_TIPO_CONTRIBUYENTE'
,p_plug_display_when_cond2=>'8'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(292430942678741501)
,p_name=>'Reporte Comprobante de Pago'
,p_parent_plug_id=>wwv_flow_api.id(292431731643741509)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_COMPROBANTE,',
'       ID_DECLARA_CTO,',
'       NUM_DEPOSITO,',
'       NOMBRE_ENTIDAD,',
'       FECHA_COMPROB,',
'       CODIGO_MONEDA,',
'       MONTO_COMPROB',
'  from COMPROBANTE_PAGO_COT',
' where  ID_DECLARA_CTO = :P245_ID_DECLARA_CTO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P245_ID_DECLARA_CTO'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152506774659853154)
,p_query_column_id=>1
,p_column_alias=>'ID_COMPROBANTE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152507155740853154)
,p_query_column_id=>2
,p_column_alias=>'ID_DECLARA_CTO'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152507589417853154)
,p_query_column_id=>3
,p_column_alias=>'NUM_DEPOSITO'
,p_column_display_sequence=>3
,p_column_heading=>'Numero Deposito'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152507903388853153)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_ENTIDAD'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre Entidad'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(152535845160853093)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152508386132853153)
,p_query_column_id=>5
,p_column_alias=>'FECHA_COMPROB'
,p_column_display_sequence=>5
,p_column_heading=>'Fecha Comprobante'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152508757812853153)
,p_query_column_id=>6
,p_column_alias=>'CODIGO_MONEDA'
,p_column_display_sequence=>6
,p_column_heading=>'Moneda'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(152534385609853094)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152509186287853153)
,p_query_column_id=>7
,p_column_alias=>'MONTO_COMPROB'
,p_column_display_sequence=>7
,p_column_heading=>'Monto Comprobante'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(292431765947741510)
,p_name=>'Archivos Comprobante Pago'
,p_parent_plug_id=>wwv_flow_api.id(292431731643741509)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ARCHIVO,',
'       ID_COMPROBANTE,',
'       NOMBRE_ARCHIVO,',
'       sys.dbms_lob.getlength(ARCHIVO)DESCARGAR,',
'       MIMETYPE,',
'       FEC_ACT',
'  from ARCHIVO_COMPROB_PAGO_COT',
'where ID_COMPROBANTE = :P245_ID_COMPROBANTE_PAGO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P245_ID_COMPROBANTE_PAGO'
,p_query_row_template=>wwv_flow_api.id(155172842909979447)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152504049370853157)
,p_query_column_id=>1
,p_column_alias=>'ID_ARCHIVO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152504419185853156)
,p_query_column_id=>2
,p_column_alias=>'ID_COMPROBANTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152504886499853156)
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
 p_id=>wwv_flow_api.id(152506018977853155)
,p_query_column_id=>4
,p_column_alias=>'DESCARGAR'
,p_column_display_sequence=>4
,p_column_heading=>'Archivo'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ARCHIVO_COMPROB_PAGO_COT:ARCHIVO:ID_ARCHIVO::MIMETYPE:NOMBRE_ARCHIVO:FEC_ACT::attachment:Descargar:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152505210182853156)
,p_query_column_id=>5
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(152505676797853156)
,p_query_column_id=>6
,p_column_alias=>'FEC_ACT'
,p_column_display_sequence=>6
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(293638429215844805)
,p_plug_name=>'Botones'
,p_parent_plug_id=>wwv_flow_api.id(292431731643741509)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(966770324297303348)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(290707052878734733)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Declaraci\00F3n Jurada</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152511099277853152)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(293638429215844805)
,p_button_name=>'BTN_SIN_CONTRATO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Vista Previa Carta al Registro Nacional'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.::P247_ID_DECLRA,P247_PLACA,P247_NOMBRE_ENTIDAD,P247_ID_TIPO_IDENTIFICACION,P247_CEDULA,P247_CODIGO_MONEDA,P247_MONTO_TOTAL_TRANS,P247_ID_OFICINA,P247_ID_COMPROBANTE_PAGO,P247_ID_REPORTE:&P245_ID_DECLARA_CTO.,&P245_NUMERO_PLACA.,&P245_NOMBRE_ENTIDAD.,&P245_ID_TIPO_IDENTIFICACION.,&P245_CEDULA.,&P245_CODIGO_MONEDA.,&P245_MONTO_TOTAL_TRANS.,&P245_ID_OFICINA.,&P245_ID_COMPROBANTE_PAGO.,1241'
,p_button_condition=>'P245_CONTRATO_ARRENDA'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152519599035853146)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(518775485029616218)
,p_button_name=>'BTN_GUARDAR_ARCHIVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(166183291237266345)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(166183147675266344)
,p_button_name=>'BTN_CON_CONTRATO_TTR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Vista Previa Carta al Registro Nacional'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.::P247_ID_DECLRA,P247_PLACA,P247_NOMBRE_ENTIDAD,P247_ID_TIPO_IDENTIFICACION,P247_CEDULA,P247_CODIGO_MONEDA,P247_MONTO_TOTAL_TRANS,P247_ID_OFICINA,P247_ID_COMPROBANTE_PAGO,P247_ID_REPORTE,P247_CONTRATO,P247_NOM_ARRENDATARIO,P247_TIPO_CED_ARRE,P247_CED_ARRE,P247_ID_DEUDOR:&P245_ID_DECLARA_CTO.,&P245_NUMERO_PLACA.,&P245_NOMBRE_ENTIDAD.,&P245_ID_TIPO_IDENTIFICACION.,&P245_CEDULA.,&P245_CODIGO_MONEDA.,&P245_MONTO_TOTAL_TRANS.,&P245_ID_OFICINA.,&P245_ID_COMPROBANTE_PAGO.,1303,&P245_CONTRATO_ARRENDA.,&P245_NOMBRE_ARRENDA.,&P245_ID_TIPO_IDENTIFICA.,&P245_CEDULA_ARRE.,&P245_ID_DEUDOR.'
,p_button_condition=>'P245_MUESTRA_BOTONES'
,p_button_condition2=>'S'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152509808258853152)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(293638429215844805)
,p_button_name=>'BTN_CON_CONTRATO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Vista Previa Carta al Registro Nacional'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.::P247_ID_DECLRA,P247_PLACA,P247_NOMBRE_ENTIDAD,P247_ID_TIPO_IDENTIFICACION,P247_CEDULA,P247_CODIGO_MONEDA,P247_MONTO_TOTAL_TRANS,P247_ID_OFICINA,P247_ID_COMPROBANTE_PAGO,P247_ID_REPORTE,P247_CONTRATO,P247_NOM_ARRENDATARIO,P247_TIPO_CED_ARRE,P247_CED_ARRE:&P245_ID_DECLARA_CTO.,&P245_NUMERO_PLACA.,&P245_NOMBRE_ENTIDAD.,&P245_ID_TIPO_IDENTIFICACION.,&P245_CEDULA.,&P245_CODIGO_MONEDA.,&P245_MONTO_TOTAL_TRANS.,&P245_ID_OFICINA.,&P245_ID_COMPROBANTE_PAGO.,1242,&P245_CONTRATO_ARRENDA.,&P245_NOMBRE_ARRENDA.,&P245_ID_TIPO_IDENTIFICA.,&P245_CEDULA_ARRE.'
,p_button_condition=>'P245_CONTRATO_ARRENDA'
,p_button_condition2=>'S'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(166183306744266346)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(166183147675266344)
,p_button_name=>'BTN_APROBAR_TTR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P245_VALIDA_ESTADO'
,p_button_condition2=>'S'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(166183422106266347)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(166183147675266344)
,p_button_name=>'BTN_RECHAZAR_TTR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Rechazar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:246:&SESSION.::&DEBUG.::P246_ID_DECLARACION,P246_TIPO_SOLICITUD,P246_TIPO_CORREO:&P245_ID_DECLARA_CTO.,14,R'
,p_button_condition=>'P245_VALIDA_ESTADO'
,p_button_condition2=>'S'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'u-color-39'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152510255626853152)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(293638429215844805)
,p_button_name=>'BTN_APROBAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aprobar'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P245_CODIGO_ESTADO'
,p_button_condition2=>'P'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(166183541253266348)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(166183147675266344)
,p_button_name=>'BTN_SIN_CONTRATO_TTR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Vista Previa Carta al Registro Nacional'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.::P247_ID_DECLRA,P247_PLACA,P247_NOMBRE_ENTIDAD,P247_ID_TIPO_IDENTIFICACION,P247_CEDULA,P247_CODIGO_MONEDA,P247_MONTO_TOTAL_TRANS,P247_ID_OFICINA,P247_ID_COMPROBANTE_PAGO,P247_ID_REPORTE,P247_ID_DEUDOR:&P245_ID_DECLARA_CTO.,&P245_NUMERO_PLACA.,&P245_NOMBRE_ENTIDAD.,&P245_ID_TIPO_IDENTIFICACION.,&P245_CEDULA.,&P245_CODIGO_MONEDA.,&P245_MONTO_TOTAL_TRANS.,&P245_ID_OFICINA.,&P245_ID_COMPROBANTE_PAGO.,1304,&P245_ID_DEUDOR.'
,p_button_condition=>'P245_MUESTRA_BOTONES'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152510637044853152)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(293638429215844805)
,p_button_name=>'BTN_RECHAZAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Rechazar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:246:&SESSION.::&DEBUG.::P246_ID_DECLARACION,P246_TIPO_SOLICITUD,P246_TIPO_CORREO:&P245_ID_DECLARA_CTO.,14,R'
,p_button_condition=>'P245_CODIGO_ESTADO'
,p_button_condition2=>'P'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'u-color-39'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(167975821349571049)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(293638429215844805)
,p_button_name=>'BTN_NOTIF_SECRE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Reenviar notificaci\00F3n a Secretaria')
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P245_CODIGO_ESTADO'
,p_button_condition2=>'A'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152489468711853179)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(291882349658438980)
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
 p_id=>wwv_flow_api.id(152488647035853182)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(291882349658438980)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152489880124853179)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(291882349658438980)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P245_ID_DECLARA_CTO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(152489046174853181)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(291882349658438980)
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
 p_id=>wwv_flow_api.id(152514158340853150)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(518774412730616208)
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
 p_id=>wwv_flow_api.id(152514514490853150)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(518774412730616208)
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
 p_id=>wwv_flow_api.id(152514932926853150)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(518774412730616208)
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
 p_id=>wwv_flow_api.id(152518863290853147)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(518774412730616208)
,p_button_name=>'BTN_ADJUNTAR'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Adjuntar Archivo'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:openModal(''ARCHIVO''); $("#ARCHIVO").trigger("apexrefresh");'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(152531730810853118)
,p_branch_name=>'Go To Page 244'
,p_branch_action=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(152510255626853152)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152490293154853178)
,p_name=>'P245_ID_DECLARA_CTO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_source=>'ID_DECLARA_CTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152490645327853172)
,p_name=>'P245_ID_DECLRA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>unistr('N\00BA Tramite')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152491068705853172)
,p_name=>'P245_NUMERO_PLACA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Numero Placa:'
,p_source=>'NUMERO_PLACA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
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
 p_id=>wwv_flow_api.id(152491496712853172)
,p_name=>'P245_FECHA'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Fecha:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152491888480853172)
,p_name=>'P245_NOMBRE_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Nombre Entidad:'
,p_source=>'NOMBRE_ENTIDAD'
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
 p_id=>wwv_flow_api.id(152492254610853172)
,p_name=>'P245_ID_TIPO_IDENTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>unistr('Tipo Identificaci\00F3n:')
,p_source=>'ID_TIPO_IDENTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_IDENTIFICACION'
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
 p_id=>wwv_flow_api.id(152492655013853171)
,p_name=>'P245_CEDULA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Cedula:'
,p_source=>'CEDULA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152493055696853171)
,p_name=>'P245_CONTRATO_ARRENDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Contrato de arrendamiento?'
,p_source=>'CONTRATO_ARRENDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_SI_NO'
,p_lov=>'.'||wwv_flow_api.id(152532602967853113)||'.'
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
 p_id=>wwv_flow_api.id(152493477996853171)
,p_name=>'P245_NOMBRE_ARRENDA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Nombre Arrendatario'
,p_source=>'NOMBRE_ARRENDA'
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
 p_id=>wwv_flow_api.id(152493868743853170)
,p_name=>'P245_ID_TIPO_IDENTIFICA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>unistr('Tipo Identificaci\00F3n: ')
,p_source=>'ID_TIPO_IDENTIFICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_IDENTIFICACION'
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
 p_id=>wwv_flow_api.id(152494209883853170)
,p_name=>'P245_CEDULA_ARRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Cedula Arredatario:'
,p_source=>'CEDULA_ARRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152494604376853170)
,p_name=>'P245_FECHA_INI_EXCUSION'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>unistr('Inicio Excusi\00F3n:')
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_INI_EXCUSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P245_TIPO_CONTRIBUYENTE'
,p_display_when2=>'8'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152495081957853170)
,p_name=>'P245_FECHA_FIN_EXCUSION'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>unistr('Fin Excusi\00F3n:')
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_FIN_EXCUSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P245_TIPO_CONTRIBUYENTE'
,p_display_when2=>'8'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152495459673853170)
,p_name=>'P245_DESTINO_VIAJE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Destino Viaje:'
,p_source=>'DESTINO_VIAJE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P245_TIPO_CONTRIBUYENTE'
,p_display_when2=>'8'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152495841096853170)
,p_name=>'P245_ID_TIPO_PUESTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Tipo Puesto:'
,p_source=>'ID_TIPO_PUESTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPOS_PUESTOS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P245_TIPO_CONTRIBUYENTE'
,p_display_when2=>'8'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152496294092853169)
,p_name=>'P245_TOTAL_PASAJEROS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Total Pasajeros:'
,p_source=>'TOTAL_PASAJEROS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P245_TIPO_CONTRIBUYENTE'
,p_display_when2=>'8'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152496690104853169)
,p_name=>'P245_CODIGO_MONEDA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Moneda:'
,p_source=>'CODIGO_MONEDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_MONEDA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(DESCRIPCION), CODIGO_MONEDA',
'from TIPO_MONEDAS@CONSULTA_ICTX'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>'P245_TIPO_CONTRIBUYENTE'
,p_display_when2=>'8'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152497099254853166)
,p_name=>'P245_MONTO_TOTAL_TRANS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Monto Total por Transporte:'
,p_source=>'MONTO_TOTAL_TRANS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P245_TIPO_CONTRIBUYENTE'
,p_display_when2=>'8'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152497446751853165)
,p_name=>'P245_IMPUESTO_PAGAR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Impuesto Pagar:'
,p_source=>'IMPUESTO_PAGAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P245_TIPO_CONTRIBUYENTE'
,p_display_when2=>'8'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152497815204853165)
,p_name=>'P245_NOMBRE_CHOFER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Nombre Chofer:'
,p_source=>'NOMBRE_CHOFER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P245_TIPO_CONTRIBUYENTE'
,p_display_when2=>'8'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152498226563853165)
,p_name=>'P245_NOMBRE_GUIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>unistr('Nombre Gu\00EDa:')
,p_source=>'NOMBRE_GUIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P245_TIPO_CONTRIBUYENTE'
,p_display_when2=>'8'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152498652728853165)
,p_name=>'P245_CORREO_NOTIFICA1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Correo 1:'
,p_source=>'CORREO_NOTIFICA1'
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
 p_id=>wwv_flow_api.id(152499076045853165)
,p_name=>'P245_CORREO_NOTIFICA2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Correo 2:'
,p_source=>'CORREO_NOTIFICA2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152499434709853164)
,p_name=>'P245_TELEFONO1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Telefono1:'
,p_source=>'TELEFONO1'
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
 p_id=>wwv_flow_api.id(152499801017853164)
,p_name=>'P245_TELEFONO2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Telefono2:'
,p_source=>'TELEFONO2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152500263856853164)
,p_name=>'P245_ID_OFICINA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Oficina Regional Registro Nacional:'
,p_source=>'ID_OFICINA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_OFICINA_RN'
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
 p_id=>wwv_flow_api.id(152500631397853163)
,p_name=>'P245_CODIGO_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Estado'
,p_source=>'CODIGO_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ESTADO_TRAMITE'
,p_lov=>'SELECT CODIGO_ESTADO, NOMBRE_ESTADO FROM estados_tramite@consulta_ictx where CODIGO_ESTADO IN (''AC'',''IA'',''A'',''R'',''P'',''RG'')'
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
 p_id=>wwv_flow_api.id(152501040962853163)
,p_name=>'P245_USUARIO_SIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Usuario:'
,p_source=>'USUARIO_SIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152501455644853163)
,p_name=>'P245_FIRMA'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_default=>unistr('Declaro bajo fe de juramento y en conocimiento de lo que dispone el art\00EDculo 40 del Reglamento de Procedimiento Tributario, que la informaci\00F3n consignada en la presente declaraci\00F3n de impuestos es veraz y correcta.')
,p_prompt=>'Firma'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152501833390853161)
,p_name=>'P245_CHECK_ACEPTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Acepta?'
,p_source=>'CHECK_ACEPTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_SI_NO'
,p_lov=>'.'||wwv_flow_api.id(152532602967853113)||'.'
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
 p_id=>wwv_flow_api.id(152503393020853158)
,p_name=>'P245_ID_COMPROBANTE_PAGO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(292431731643741509)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152519915105853145)
,p_name=>'P245_NOM_ENTIDAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(518775485029616218)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(152520320304853145)
,p_name=>'P245_ARCHIVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(518775485029616218)
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
 p_id=>wwv_flow_api.id(160745250346540645)
,p_name=>'P245_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>'Id Contribuyente'
,p_source=>'ID_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(166183047301266343)
,p_name=>'P245_TIPO_CONTRIBUYENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(966770324297303348)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(167972135967571012)
,p_name=>'P245_ID_DEUDOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_prompt=>unistr('C\00F3digo Tributario')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(167974728410571038)
,p_name=>'P245_NUM_TRAMITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(291882349658438980)
,p_item_source_plug_id=>wwv_flow_api.id(291882349658438980)
,p_source=>'NUM_TRAMITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174902052185154128)
,p_name=>'P245_MUESTRA_BOTONES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(290707802139734741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174902115739154129)
,p_name=>'P245_VALIDA_ESTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(290707802139734741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(152530291541853121)
,p_name=>'DAC_CONTRTO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P245_CONTRATO_ARRENDA'
,p_condition_element=>'P245_CONTRATO_ARRENDA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152530717818853119)
,p_event_id=>wwv_flow_api.id(152530291541853121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P245_NOMBRE_ARRENDA,P245_ID_TIPO_IDENTIFICA,P245_CEDULA_ARRE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(152531229171853118)
,p_event_id=>wwv_flow_api.id(152530291541853121)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P245_NOMBRE_ARRENDA,P245_ID_TIPO_IDENTIFICA,P245_CEDULA_ARRE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152502665863853159)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(291882349658438980)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 245-Formulario Declaracion Jurada COT'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152529447500853122)
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
'IF :P245_ARCHIVO IS NOT NULL THEN',
'    SELECT BLOB_CONTENT, MIME_TYPE, FILENAME INTO vArchivo,vMimetype, vFilename FROM APEX_APPLICATION_TEMP_FILES WHERE NAME = :P245_ARCHIVO;',
'     PKG_INSCRIPCION_REGULAR.P_INSERT_ARCHI_COMPRU_INSCRIP (:P245_ID_DECLARA_CTO,',
'                                                            :P245_NOM_ENTIDAD,',
'                                                            vFilename,',
'                                                            vArchivo,',
'                                                            vMimetype,',
'                                                            :APP_USER,',
'                                                            ''COT'',',
'                                                            v_mensaje_retorno,',
'                                                            v_retorno_boolean);',
'END IF;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(152519599035853146)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152502294659853161)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(291882349658438980)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 245-Formulario Declaracion Jurada COT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152529067097853123)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vSecuencia VARCHAR2 (10) := ''DO-03-'';',
'    vSecuencia_TTR VARCHAR2 (10) := ''FSP-'';',
'    vIdComprobante NUMBER;',
'    ',
'    CURSOR C_COMPROBANT IS',
'    SELECT ID_COMPROBANTE',
'    FROM   COMPROBANTE_PAGO_COT',
'    WHERE ID_DECLARA_CTO = :P245_ID_DECLARA_CTO;',
'BEGIN',
'    :P245_ID_DECLRA := :P245_NUM_TRAMITE; ',
'',
'    OPEN  C_COMPROBANT;',
'    FETCH C_COMPROBANT INTO vIdComprobante;',
'    CLOSE  C_COMPROBANT;',
'    ',
'    :P245_ID_COMPROBANTE_PAGO := vIdComprobante;',
'    ',
'    :P245_ID_DEUDOR:= PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (:P245_ID_CONTRIBUYENTE);',
'    ',
'    :P245_MUESTRA_BOTONES := NULL;',
'    IF :P245_TIPO_CONTRIBUYENTE = 4 AND :P245_CONTRATO_ARRENDA = ''S'' THEN',
'        :P245_MUESTRA_BOTONES := ''S'';',
'    END IF;',
'    IF :P245_TIPO_CONTRIBUYENTE = 4 AND :P245_CONTRATO_ARRENDA = ''N'' THEN',
'        :P245_MUESTRA_BOTONES := ''N'';',
'    END IF;',
'    ',
'    IF :P245_TIPO_CONTRIBUYENTE = 4 AND :P245_CODIGO_ESTADO = ''P'' THEN',
'        :P245_VALIDA_ESTADO := ''S'';',
'    ELSE',
'        :P245_VALIDA_ESTADO := ''N'';',
'    END IF;',
'    ',
'',
'END;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(152529834677853122)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_APROB_DECLARACION_COT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vCorreoSecre VARCHAR2(50);',
'vIdDocumento NUMBER;',
'vAno VARCHAR2(4);',
'vId_Deudor NUMBER;',
'vCodRetorno VARCHAR2(2);',
'vMensaje VARCHAR2(1000);',
'vRetorno NUMBER := 1;',
'  vDocumento NUMBER;',
'BEGIN',
'    vCodRetorno := ''1'';',
'--Obtenemos el codigo tributario',
'vId_Deudor := PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (:P245_ID_CONTRIBUYENTE);',
'',
'--vAno := EXTRACT(YEAR FROM sysdate);',
'UPDATE DECLARA_CHARTER_TERRESTRE_O SET CODIGO_ESTADO = ''A'',USR_APRUEBA = :APP_USER WHERE ID_DECLARA_CTO = :P245_ID_DECLARA_CTO;',
'--Envio correo secretaria',
'vCorreoSecre := PKG_TRAMITE_COT.OBTIENE_CORREO_SECRETARIA;',
'',
'    IF vCorreoSecre IS NOT NULL THEN',
'        --SELECT MAX(ID_CARTA) INTO vIdDocumento FROM ARCHIVO_CARTAS_RN_COT;',
'        --vIdDocumento := vIdDocumento +1;',
'        PKG_ENVIO_CORREO.ENVIO_CORREO (vCorreoSecre,',
'                               ''Carta al Registro Nacional pendiente de firma digital'',',
'                               ''Carta pendiente de descarga para firma digital, y subir a la plataforma para su notificacion'');',
'    ELSE',
'    RAISE_APPLICATION_ERROR(-200000,''El usuario al que intenta enviar el correo, se encuentra inactivo o configurado para no recibir correos, por favor verifique.'');',
'    END IF;',
'    ',
'    PKG_TRAMITE_COT.P_GENERA_DXC_5A_COT (:P245_ID_DECLARA_CTO,',
'                                     1,--Impuesto',
'                                     vId_Deudor,',
'                                     vDocumento,--id documento',
'                                     :APP_USER,',
'                                     1,',
'                                     vCodRetorno,--v_param_Codigo_Retorno, ',
'                                     vMensaje,',
'                                     vRetorno);',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(152510255626853152)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(166183644215266349)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_APROB_DECLARACION_TTR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vCorreoSecre VARCHAR2(50);',
'vIdDocumento NUMBER;',
'vAno VARCHAR2(4);',
'vId_Deudor NUMBER;',
'vCodRetorno VARCHAR2(2);',
'vMensaje VARCHAR2(1000);',
'vRetorno NUMBER := 1;',
'  vDocumento NUMBER;',
'BEGIN',
'    vCodRetorno := ''1'';',
'--Obtenemos el codigo tributario',
'vId_Deudor := PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (:P245_ID_CONTRIBUYENTE);',
'',
'--vAno := EXTRACT(YEAR FROM sysdate);',
'UPDATE DECLARA_CHARTER_TERRESTRE_O SET CODIGO_ESTADO = ''A'',USR_APRUEBA = :APP_USER WHERE ID_DECLARA_CTO = :P245_ID_DECLARA_CTO;',
'--Envio correo secretaria',
'vCorreoSecre := PKG_TRAMITE_COT.OBTIENE_CORREO_SECRETARIA;',
'',
'    IF vCorreoSecre IS NOT NULL THEN',
'        --SELECT MAX(ID_CARTA) INTO vIdDocumento FROM ARCHIVO_CARTAS_RN_COT;',
'        --vIdDocumento := vIdDocumento +1;',
'        PKG_ENVIO_CORREO.ENVIO_CORREO (vCorreoSecre,',
'                               ''Carta al Registro Nacional pendiente de firma digital'',',
'                               ''Carta pendiente de descarga para firma digital, y subir a la plataforma para su notificacion'');',
'    ELSE',
'    RAISE_APPLICATION_ERROR(-200000,''El usuario al que intenta enviar el correo, se encuentra inactivo o configurado para no recibir correos, por favor verifique.'');',
'    END IF;',
'    ',
'    /*PKG_TRAMITE_COT.P_GENERA_DXC_5A_COT (:P245_ID_DECLARA_CTO,',
'                                     1,--Impuesto',
'                                     vId_Deudor,',
'                                     vDocumento,--id documento',
'                                     :APP_USER,',
'                                     1,',
'                                     vCodRetorno,--v_param_Codigo_Retorno, ',
'                                     vMensaje,',
'                                     vRetorno);*/',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(166183306744266346)
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
 p_id=>wwv_flow_api.id(167975932540571050)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_REENVIA_SECRE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vCorreoSecre VARCHAR2(50);',
'vIdDocumento NUMBER;',
'vAno VARCHAR2(4);',
'vId_Deudor NUMBER;',
'vCodRetorno VARCHAR2(2);',
'vMensaje VARCHAR2(1000);',
'vRetorno NUMBER := 1;',
'  vDocumento NUMBER;',
'BEGIN',
'    vCodRetorno := ''1'';',
'--Obtenemos el codigo tributario',
'vId_Deudor := PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_DEUDOR_CONTRIB (:P245_ID_CONTRIBUYENTE);',
'',
'--vAno := EXTRACT(YEAR FROM sysdate);',
'--UPDATE DECLARA_CHARTER_TERRESTRE_O SET CODIGO_ESTADO = ''A'' WHERE ID_DECLARA_CTO = :P245_ID_DECLARA_CTO;',
'--Envio correo secretaria',
'vCorreoSecre := PKG_TRAMITE_COT.OBTIENE_CORREO_SECRETARIA;',
'',
'    IF vCorreoSecre IS NOT NULL THEN',
'        --SELECT MAX(ID_CARTA) INTO vIdDocumento FROM ARCHIVO_CARTAS_RN_COT;',
'        --vIdDocumento := vIdDocumento +1;',
'        PKG_ENVIO_CORREO.ENVIO_CORREO (vCorreoSecre,',
unistr('                               ''Tr\00E1mite n\00FAmero: ''||:P245_NUM_TRAMITE||'', Pendiente de Firma'','),
unistr('                               ''Carta al Registro Nacional, pendiente de descarga para firma digital, y subir a la plataforma para su notificaci\00F3n'');'),
'    ELSE',
'    RAISE_APPLICATION_ERROR(-200000,''El usuario al que intenta enviar el correo, se encuentra inactivo o configurado para no recibir correos, por favor verifique.'');',
'    END IF;',
'    ',
'    /*PKG_TRAMITE_COT.P_GENERA_DXC_5A_COT (:P245_ID_DECLARA_CTO,',
'                                     1,--Impuesto',
'                                     vId_Deudor,',
'                                     vDocumento,--id documento',
'                                     :APP_USER,',
'                                     1,',
'                                     vCodRetorno,--v_param_Codigo_Retorno, ',
'                                     vMensaje,',
'                                     vRetorno);*/',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(167975821349571049)
);
null;
wwv_flow_api.component_end;
end;
/
