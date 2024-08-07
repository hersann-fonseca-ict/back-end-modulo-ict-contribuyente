prompt --application/pages/page_00200
begin
--   Manifest
--     PAGE: 00200
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
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'200-Reporte Solicitud Inscripcion '
,p_alias=>'200-REPORTE-SOLICITUD-INSCRIPCION'
,p_step_title=>unistr('Solicitud Inscripci\00F3n ')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220715145914'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(161427752059339080)
,p_plug_name=>unistr('Solicitud Inscripci\00F3n ')
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
 p_id=>wwv_flow_api.id(161427868080339081)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(161427752059339080)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(161668113585812357)
,p_name=>unistr('Reporte Solicitud Inscripci\00F3n ')
,p_parent_plug_id=>wwv_flow_api.id(161427752059339080)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_NUM_INSCRIPCION,',
'       ID_NUM_INSCRIPCION NUM_INSCRIP,',
'       NOMBRE_ENTIDAD,',
'       ID_TIPO_IDENTIFICACION,',
'       RAZON_SOCIAL,',
'       PERSONA_FISICA,',
'       CEDULA_JURIDICA,',
'       CEDULA_FISICA,',
'       ID_TIPO_CONTRIBUYENTE,',
'       CODIGO_IATA,',
'       FECHA_INICIO_OPERA,',
'       DIRECCION_ENTIDAD,',
'       ID_PROVINCIA_ENTIDAD,',
'       ID_CANTON_ENTIDAD,',
'       ID_DISTRITO_ENTIDAD,',
'       DIRECCION_NOTIFICA,',
'       ID_PROVINCIA_NOTIFICA,',
'       ID_CANTON_NOTIFICA,',
'       ID_DISTRITO_NOTIFICA,',
'       CEDULA_GERENTE,',
'       NOMBRE_GERENTE,',
'       CORREO_GERENTE,',
'       NOMBRE_REPRE_LEGAL,',
'       CEDULA_REPRE_LEGAL,',
'       CORREO_REPRE_LEGAL,',
'       CODIGO_ESTADO,',
'       FECHA_INSCRIPCION,',
'       OBSERVA_EMPRESA,',
'       OBSERVA_ADM_TRIBUTA,',
'       FECHA_SUSCRITO,',
'       LUGAR_SUSCRITO,',
'       USUARIO_INTERNO,',
'       ID_CHARTER,',
'       ID_REQUISITOS_INS,',
'       ID_MODALIDAD',
'  from SOLICITUD_INSCRIPCION',
'  where ID_NUM_INSCRIPCION = NVL(:P200_NUM_INSCRIP,ID_NUM_INSCRIPCION)',
'  AND CODIGO_ESTADO = NVL(:P200_ESTADO,CODIGO_ESTADO)',
'  and ID_TIPO_CONTRIBUYENTE = NVL(:P200_TIPO_FUENTE,ID_TIPO_CONTRIBUYENTE )',
'  and   ID_TIPO_CONTRIBUYENTE IN (SELECT ID_TIPO_CONTRIBUYENTE FROM TIPO_CONTRIBUYENTE WHERE IND_TIPO_INSCRIP IN (''IR''))',
'  ORDER BY FECHA_INSCRIPCION DESC'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P200_TIPO_FUENTE,P200_ESTADO,P200_NUM_INSCRIP'
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
 p_id=>wwv_flow_api.id(161668517193812352)
,p_query_column_id=>1
,p_column_alias=>'ID_NUM_INSCRIPCION'
,p_column_display_sequence=>1
,p_column_heading=>'Ejecutar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:RP,:P201_ID_NUM_INSCRIPCION:#ID_NUM_INSCRIPCION#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(185234451327199171)
,p_query_column_id=>2
,p_column_alias=>'NUM_INSCRIP'
,p_column_display_sequence=>2
,p_column_heading=>unistr('N\00BA ')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161668905872812350)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ENTIDAD'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre Entidad'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161669347185812350)
,p_query_column_id=>4
,p_column_alias=>'ID_TIPO_IDENTIFICACION'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161669685873812350)
,p_query_column_id=>5
,p_column_alias=>'RAZON_SOCIAL'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161670107199812349)
,p_query_column_id=>6
,p_column_alias=>'PERSONA_FISICA'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161670491812812349)
,p_query_column_id=>7
,p_column_alias=>'CEDULA_JURIDICA'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161670883066812349)
,p_query_column_id=>8
,p_column_alias=>'CEDULA_FISICA'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(165204661282141169)
,p_query_column_id=>9
,p_column_alias=>'ID_TIPO_CONTRIBUYENTE'
,p_column_display_sequence=>9
,p_column_heading=>'Tipo Contribuyente'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(166850819189940657)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161671750311812348)
,p_query_column_id=>10
,p_column_alias=>'CODIGO_IATA'
,p_column_display_sequence=>10
,p_column_heading=>unistr('C\00F3digo Iata')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161672521932812348)
,p_query_column_id=>11
,p_column_alias=>'FECHA_INICIO_OPERA'
,p_column_display_sequence=>11
,p_column_heading=>'Inicio Operaciones '
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161672967924812348)
,p_query_column_id=>12
,p_column_alias=>'DIRECCION_ENTIDAD'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161673279934812347)
,p_query_column_id=>13
,p_column_alias=>'ID_PROVINCIA_ENTIDAD'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161673756946812347)
,p_query_column_id=>14
,p_column_alias=>'ID_CANTON_ENTIDAD'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161674147000812347)
,p_query_column_id=>15
,p_column_alias=>'ID_DISTRITO_ENTIDAD'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161674483068812347)
,p_query_column_id=>16
,p_column_alias=>'DIRECCION_NOTIFICA'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161674968272812347)
,p_query_column_id=>17
,p_column_alias=>'ID_PROVINCIA_NOTIFICA'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161675360762812347)
,p_query_column_id=>18
,p_column_alias=>'ID_CANTON_NOTIFICA'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161675724668812347)
,p_query_column_id=>19
,p_column_alias=>'ID_DISTRITO_NOTIFICA'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161676085824812346)
,p_query_column_id=>20
,p_column_alias=>'CEDULA_GERENTE'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161676567978812346)
,p_query_column_id=>21
,p_column_alias=>'NOMBRE_GERENTE'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161676895106812346)
,p_query_column_id=>22
,p_column_alias=>'CORREO_GERENTE'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161677363762812346)
,p_query_column_id=>23
,p_column_alias=>'NOMBRE_REPRE_LEGAL'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161677757509812346)
,p_query_column_id=>24
,p_column_alias=>'CEDULA_REPRE_LEGAL'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161678096042812346)
,p_query_column_id=>25
,p_column_alias=>'CORREO_REPRE_LEGAL'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161678566224812346)
,p_query_column_id=>26
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>27
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161678968324812345)
,p_query_column_id=>27
,p_column_alias=>'FECHA_INSCRIPCION'
,p_column_display_sequence=>26
,p_column_heading=>unistr('Fecha Inscripci\00F3n')
,p_use_as_row_header=>'N'
,p_column_format=>'DD/MM/YYYY'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161679356756812344)
,p_query_column_id=>28
,p_column_alias=>'OBSERVA_EMPRESA'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161679710150812344)
,p_query_column_id=>29
,p_column_alias=>'OBSERVA_ADM_TRIBUTA'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161680130166812344)
,p_query_column_id=>30
,p_column_alias=>'FECHA_SUSCRITO'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161680491245812344)
,p_query_column_id=>31
,p_column_alias=>'LUGAR_SUSCRITO'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161680898430812344)
,p_query_column_id=>32
,p_column_alias=>'USUARIO_INTERNO'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161427908086339082)
,p_query_column_id=>33
,p_column_alias=>'ID_CHARTER'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161427999507339083)
,p_query_column_id=>34
,p_column_alias=>'ID_REQUISITOS_INS'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(161428086994339084)
,p_query_column_id=>35
,p_column_alias=>'ID_MODALIDAD'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(243087801483381743)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(161427752059339080)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Solicitud Inscripci\00F3n</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(194549802210610250)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(161427868080339081)
,p_button_name=>'BTN_BUSCAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buscar'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>6
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(194550153334610253)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(161427868080339081)
,p_button_name=>'BTN_LIMPIAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Limpiar'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(161682121274812339)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(161668113585812357)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:201'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(161428245172339085)
,p_name=>'P200_TIPO_FUENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(161427868080339081)
,p_prompt=>'Tipo Contribuyente:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_CONTRIBUYENTE_IR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_TIPO_CONTRIBUYENTE, DESCRIPCION',
'FROM TIPO_CONTRIBUYENTE',
'WHERE CODIGO_ESTADO = ''AC''',
'--AND   IND_TIPO_INSCRIP = ''IR'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(194549186324610244)
,p_name=>'P200_ESTADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(161427868080339081)
,p_item_default=>'P'
,p_prompt=>'Estado:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ESTADO_INSCRIP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CODIGO_ESTADO, NOMBRE_ESTADO ',
'FROM estados_tramite@consulta_ictx ',
'where CODIGO_ESTADO IN (''A'',''R'',''P'')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(194549534324610247)
,p_name=>'P200_NUM_INSCRIP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(161427868080339081)
,p_prompt=>unistr('N\00BA Inscripci\00F3n:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(194549936666610251)
,p_name=>'DAC_REFRESH'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(194549802210610250)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(194550014963610252)
,p_event_id=>wwv_flow_api.id(194549936666610251)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(161668113585812357)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(194550244053610254)
,p_name=>'DAC_LIMPIAR'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(194550153334610253)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(194550374883610255)
,p_event_id=>wwv_flow_api.id(194550244053610254)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P200_TIPO_FUENTE,P200_NUM_INSCRIP,P200_ESTADO'
);
wwv_flow_api.component_end;
end;
/
