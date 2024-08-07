prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
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
 p_id=>100
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'100-Mantenimiento Requisitos'
,p_alias=>'100-MANTENIMIENTO-REQUISITOS'
,p_step_title=>'Tipo Requisitos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230126163010'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(155831367312662686)
,p_plug_name=>unistr('Requisitos Inscripci\00F3n / Des - inscripci\00F3n')
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
 p_id=>wwv_flow_api.id(155831221276662685)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(155831367312662686)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(156244988589380237)
,p_name=>'Requisitos Inscription / Des- inscription '
,p_parent_plug_id=>wwv_flow_api.id(155831367312662686)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_REQUISITOS_INS,',
'       ID_TIPO_CONTRIBUYENTE,',
'       TIPO_REQUISTO,',
'       NOMBRE_REQUISITO,',
'       IND_ARCHIVO,',
'       CODIGO_ESTADO',
'  from TIPO_REQUISITOS',
'  where ID_TIPO_CONTRIBUYENTE = NVL(:P100_TIPO_FUENTE,ID_TIPO_CONTRIBUYENTE)',
'  and TIPO_REQUISTO = NVL(:P100_TIPO_REQUISTO,TIPO_REQUISTO)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P100_TIPO_FUENTE,P100_TIPO_REQUISTO'
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
 p_id=>wwv_flow_api.id(156245408742380232)
,p_query_column_id=>1
,p_column_alias=>'ID_REQUISITOS_INS'
,p_column_display_sequence=>1
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:RP:P101_ID_REQUISITOS_INS:\#ID_REQUISITOS_INS#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(165204700420141170)
,p_query_column_id=>2
,p_column_alias=>'ID_TIPO_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_column_heading=>'Tipo Contribuyente'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(166850819189940657)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156246233188380230)
,p_query_column_id=>3
,p_column_alias=>'TIPO_REQUISTO'
,p_column_display_sequence=>3
,p_column_heading=>'Tipo Requisto'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:Inscripcion ;I,Des-inscription ;D,Otros Requisitos;O'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(156246651251380229)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_REQUISITO'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre Requisito'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(174608276104829058)
,p_query_column_id=>5
,p_column_alias=>'IND_ARCHIVO'
,p_column_display_sequence=>5
,p_column_heading=>'Requiere Archivo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC:Si adjunta archivo;S,No adjunta archivo;N,Consulta;C'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(192549562148429951)
,p_query_column_id=>6
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>6
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(164723649596609236)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(351018216945618745)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(155831367312662686)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h3>Requisitos Inscripci\00F3n / Des - inscripci\00F3n</h3></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(156247985877380228)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(155831221276662685)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:101:P101_TIPO_FUENTE,P101_CODIGO_ESTADO:&P100_TIPO_FUENTE.,AC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(155831114573662684)
,p_name=>'P100_TIPO_FUENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(155831221276662685)
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
,p_field_template=>wwv_flow_api.id(155207447716979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(155831386475662687)
,p_name=>'P100_TIPO_REQUISTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(155831221276662685)
,p_prompt=>'Tipo Requisito:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Inscripcion ;I,Des-incripcion ;D,Otros Requisitos;O'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207447716979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(156247075083380229)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(156244988589380237)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(156247515363380228)
,p_event_id=>wwv_flow_api.id(156247075083380229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(156244988589380237)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(148047202191686145)
,p_name=>'Create Report - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(155831221276662685)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(148047335460686146)
,p_event_id=>wwv_flow_api.id(148047202191686145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(156244988589380237)
);
wwv_flow_api.component_end;
end;
/
