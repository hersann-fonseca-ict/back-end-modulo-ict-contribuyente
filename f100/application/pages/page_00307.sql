prompt --application/pages/page_00307
begin
--   Manifest
--     PAGE: 00307
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
 p_id=>307
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'307-Reporte cuenta por cobrar generadas'
,p_alias=>'307-REPORTE-CUENTA-POR-COBRAR-GENERADAS'
,p_step_title=>'Reporte cuenta por cobrar generadas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230502114851'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(157589261832872529)
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
 p_id=>wwv_flow_api.id(157589389214872530)
,p_plug_name=>'Filtros'
,p_parent_plug_id=>wwv_flow_api.id(157589261832872529)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(157623701205898134)
,p_name=>'Maestro Documento por Cobrar'
,p_parent_plug_id=>wwv_flow_api.id(157589261832872529)
,p_template=>wwv_flow_api.id(155144585020979460)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select id_documento, ',
'       codigo_estado,',
'       id_deudor,  ',
'      -- fecha, ',
'      -- fecha_vence, ',
'       --codigo_moneda,',
'       --tipo_cambio,',
'       --monto_moneda, ',
'       --saldo_moneda, ',
'       id_tipo_documento,',
'       descripcion',
'    -- Nombre Tipo_Documento',
'from documentos_x_cobrar@consulta_ictx',
'where id_documento= NVL(:P307_ID_DOCUMENTO,id_documento)',
'and   id_deudor in (select id_deudor from maestro_contribuyente where ID_TIPO_CONTRIBUYENTE = :P307_TIPO_CONTRIBUYENTE)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P307_ID_DOCUMENTO,P307_TIPO_CONTRIBUYENTE'
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
 p_id=>wwv_flow_api.id(157588584896872522)
,p_query_column_id=>1
,p_column_alias=>'ID_DOCUMENTO'
,p_column_display_sequence=>1
,p_column_heading=>unistr('N\00BA Documento')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(157588652996872523)
,p_query_column_id=>2
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>4
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'SELECT NOMBRE_ESTADO,CODIGO_ESTADO FROM estados_tramite@consulta_ictx'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(157590092936872537)
,p_query_column_id=>3
,p_column_alias=>'ID_DEUDOR'
,p_column_display_sequence=>2
,p_column_heading=>'Deudor'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_DEUDOR||'' - ''||NOMBRE_ENTIDAD,ID_DEUDOR',
'FROM   MAESTRO_CONTRIBUYENTE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(157589167124872528)
,p_query_column_id=>4
,p_column_alias=>'ID_TIPO_DOCUMENTO'
,p_column_display_sequence=>3
,p_column_heading=>'Tipo Documento'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(157659426613026881)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(158826472411968216)
,p_query_column_id=>5
,p_column_alias=>'DESCRIPCION'
,p_column_display_sequence=>5
,p_column_heading=>'Descripcion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(157589858383872535)
,p_query_column_id=>6
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>6
,p_column_heading=>'Ejecutar'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.::P308_ID_DOCUMENTO:#ID_DOCUMENTO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(597741510969770987)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(157589261832872529)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Reporte cuenta por cobrar generadas</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(157635782368898156)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(157623701205898134)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:308'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157589428024872531)
,p_name=>'P307_ID_DOCUMENTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(157589389214872530)
,p_prompt=>unistr('N\00BA Documento:')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(174899672865154104)
,p_name=>'P307_TIPO_CONTRIBUYENTE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(157589389214872530)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
