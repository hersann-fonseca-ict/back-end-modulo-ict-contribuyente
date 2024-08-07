prompt --application/pages/page_00118
begin
--   Manifest
--     PAGE: 00118
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
 p_id=>118
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'118-Mantenimiento Tipo Contribuyente'
,p_alias=>'118-MANTENIMIENTO-TIPO-CONTRIBUYENTE'
,p_step_title=>'Tipo Contribuyente'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230403162407'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(169224888743313492)
,p_plug_name=>'Tipo Contribuyente'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(172093339765977305)
,p_name=>'Reporte Tipo Contribuyente'
,p_parent_plug_id=>wwv_flow_api.id(169224888743313492)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TIPO_CONTRIBUYENTE,',
'       DESCRIPCION,',
'       CODIGO_ESTADO,',
'       IND_TIPO_INSCRIP',
'  from TIPO_CONTRIBUYENTE',
'  where ID_TIPO_CONTRIBUYENTE = NVL(:P118_TIPO_CONTRIBUYENTE, ID_TIPO_CONTRIBUYENTE)',
'  AND   IND_TIPO_INSCRIP      = NVL(:P118_IND_TIPO_INSCRIP,IND_TIPO_INSCRIP)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P118_TIPO_CONTRIBUYENTE,P118_IND_TIPO_INSCRIP'
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
 p_id=>wwv_flow_api.id(172093683426977301)
,p_query_column_id=>1
,p_column_alias=>'ID_TIPO_CONTRIBUYENTE'
,p_column_display_sequence=>1
,p_column_link=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:RP:P119_ID_TIPO_CONTRIBUYENTE:\#ID_TIPO_CONTRIBUYENTE#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172094119493977298)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>2
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(172388524577192545)
,p_query_column_id=>3
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>4
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(177079450140290072)
,p_query_column_id=>4
,p_column_alias=>'IND_TIPO_INSCRIP'
,p_column_display_sequence=>3
,p_column_heading=>unistr('Tipo Inscripci\00F3n')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>unistr('STATIC:Inscripci\00F3n Regular;IR,Inscripci\00F3n No Contribuyentes;NC,Inscripci\00F3n Vuelos Charter;IVC,Inscripci\00F3n Vuelos Charter Ocasional;ITCO,Hotel;H,Puesto Fronterizo;PF,Agencia de  viajes no recaudadora de impuestos;ANRI,Todos;T,Inscripci\00F3n Tr\00E1mite Terre')
||unistr('stre Regular;ITTR,Ch\00E1rter Ocasional Terrestre;COT')
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(230616758994483071)
,p_query_column_id=>5
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>5
,p_column_heading=>'Agregar Impuesto'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.::P143_ID_TIPO_CONTRIB:#ID_TIPO_CONTRIBUYENTE#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(172388369225192543)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(169224888743313492)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(674918817077862352)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(169224888743313492)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Tipo Contribuyente</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(172095302941977292)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(172388369225192543)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:119:P119_CODIGO_ESTADO:AC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(172388421655192544)
,p_name=>'P118_TIPO_CONTRIBUYENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(172388369225192543)
,p_prompt=>'Tipo Contribuyente:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION,ID_TIPO_CONTRIBUYENTE',
'FROM TIPO_CONTRIBUYENTE',
'WHERE CODIGO_ESTADO = ''AC''',
'AND IND_TIPO_INSCRIP = :P118_IND_TIPO_INSCRIP'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P118_IND_TIPO_INSCRIP'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(177079369169290071)
,p_name=>'P118_IND_TIPO_INSCRIP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(172388369225192543)
,p_prompt=>unistr('Tipo Inscripci\00F3n: ')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Inscripci\00F3n Regular;IR,Inscripci\00F3n Vuelos ch\00E1rter;IVC,Inscripci\00F3n Tr\00E1mite Ch\00E1rter Ocasional Terrestre;ITCO,Registro No Contribuyentes;NC,Hoteles;H,Agencia de Viajes No Recaudadora de Impuestos;ANRI,Inscripci\00F3n Tr\00E1mite Terrestre Regular;ITTR')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.component_end;
end;
/
