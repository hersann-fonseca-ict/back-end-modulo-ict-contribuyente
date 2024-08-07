prompt --application/pages/page_00308
begin
--   Manifest
--     PAGE: 00308
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
 p_id=>308
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'308-Formulario cuenta por cobrar generadas'
,p_alias=>'308-FORMULARIO-CUENTA-POR-COBRAR-GENERADAS'
,p_step_title=>'Formulario cuenta por cobrar generadas'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230220152351'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(157589929243872536)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(157590470056872541)
,p_name=>unistr('Afectaci\00F3n Contable')
,p_parent_plug_id=>wwv_flow_api.id(157589929243872536)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select id_cuenta, ',
'   --  nombre_cuenta, ',
'       id_num_asiento,',
'       id_periodo,',
'       id_pago_aj,',
'       id_num_asiento_aj,',
'       id_periodo_aj,',
'       debito,',
'       credito   ',
'from afectacion_conta_doctos_cxc@consulta_ictx',
'where ID_DOCUMENTO = :P308_ID_DOCUMENTO',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P308_ID_DOCUMENTO'
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
 p_id=>wwv_flow_api.id(157590540465872542)
,p_query_column_id=>1
,p_column_alias=>'ID_CUENTA'
,p_column_display_sequence=>1
,p_column_heading=>'Id Cuenta'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(157590617601872543)
,p_query_column_id=>2
,p_column_alias=>'ID_NUM_ASIENTO'
,p_column_display_sequence=>2
,p_column_heading=>unistr('N\00B0 Asiento')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(157590780582872544)
,p_query_column_id=>3
,p_column_alias=>'ID_PERIODO'
,p_column_display_sequence=>3
,p_column_heading=>'Periodo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(157590851220872545)
,p_query_column_id=>4
,p_column_alias=>'ID_PAGO_AJ'
,p_column_display_sequence=>4
,p_column_heading=>'Pago-AJ'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(157590967837872546)
,p_query_column_id=>5
,p_column_alias=>'ID_NUM_ASIENTO_AJ'
,p_column_display_sequence=>5
,p_column_heading=>'AD-AJ'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(157591089671872547)
,p_query_column_id=>6
,p_column_alias=>'ID_PERIODO_AJ'
,p_column_display_sequence=>6
,p_column_heading=>'P-AJ'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(157591194855872548)
,p_query_column_id=>7
,p_column_alias=>'DEBITO'
,p_column_display_sequence=>7
,p_column_heading=>'Debito'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(157591230999872549)
,p_query_column_id=>8
,p_column_alias=>'CREDITO'
,p_column_display_sequence=>8
,p_column_heading=>'Credito'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(157591367497872550)
,p_name=>'Movimientos del documento por cobrar'
,p_parent_plug_id=>wwv_flow_api.id(157589929243872536)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select fecha,',
'       Desc_movi,',
'       quincena,',
'       id_planilla,',
'       usuario,	',
'       id_pago,',
'       id_tipo_movimiento,',
'   --  nom_tipo,',
'       debe,',
'       haber,',
'       (debe-haber)movimiento 	',
'from movimientos_deudores@consulta_ictx   ',
'where ID_DOCUMENTO = :P308_ID_DOCUMENTO'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P308_ID_DOCUMENTO'
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
 p_id=>wwv_flow_api.id(158824929996968201)
,p_query_column_id=>1
,p_column_alias=>'FECHA'
,p_column_display_sequence=>1
,p_column_heading=>'Fecha'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(158825054043968202)
,p_query_column_id=>2
,p_column_alias=>'DESC_MOVI'
,p_column_display_sequence=>2
,p_column_heading=>unistr('Descripci\00F3n ')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(158825169485968203)
,p_query_column_id=>3
,p_column_alias=>'QUINCENA'
,p_column_display_sequence=>3
,p_column_heading=>'Quincena'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(158825272821968204)
,p_query_column_id=>4
,p_column_alias=>'ID_PLANILLA'
,p_column_display_sequence=>4
,p_column_heading=>unistr('N\00B0 Planilla')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(158825378303968205)
,p_query_column_id=>5
,p_column_alias=>'USUARIO'
,p_column_display_sequence=>5
,p_column_heading=>'Usuario'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(158825451819968206)
,p_query_column_id=>6
,p_column_alias=>'ID_PAGO'
,p_column_display_sequence=>6
,p_column_heading=>unistr('N\00B0 Pago')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(158825572866968207)
,p_query_column_id=>7
,p_column_alias=>'ID_TIPO_MOVIMIENTO'
,p_column_display_sequence=>7
,p_column_heading=>'Tipo Movimiento'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(160533328124096355)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(158825628151968208)
,p_query_column_id=>8
,p_column_alias=>'DEBE'
,p_column_display_sequence=>8
,p_column_heading=>'Debe'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(158825751340968209)
,p_query_column_id=>9
,p_column_alias=>'HABER'
,p_column_display_sequence=>9
,p_column_heading=>'Haber'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(158826863781968220)
,p_query_column_id=>10
,p_column_alias=>'MOVIMIENTO'
,p_column_display_sequence=>10
,p_column_heading=>'Movimiento'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(157600827471898102)
,p_plug_name=>'Consulta de documentos por cobrar'
,p_parent_plug_id=>wwv_flow_api.id(157589929243872536)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select id_documento, ',
'       codigo_estado,',
'    -- Nombre_Estado,    ',
'       fecha, ',
'       fecha_vence, ',
'       monto_moneda, ',
'       saldo_moneda, ',
'       id_tipo_documento,',
'    -- Nombre Tipo_Documento,',
'       id_planilla, ',
'       periodo, ',
'       quincena, ',
'       ind_certeza_pago, ',
'       num_resolucion,',
'       numero_cheque,',
'       id_declara,',
'       id_docto_ref,',
'       id_Deudor,',
'       codigo_moneda,',
'    -- Deudor,  ',
'       tipo_cambio,',
'    -- moneda,',
'       monto_colones,',
'       saldo_colones,',
'       descripcion,',
'       motivo_anulacion,',
'       id_acreedor,',
'    -- Acreedor,  ',
'       boleta_op,',
'       numero_debito,',
'       id_tramite,',
'       numero_liquidacion,',
'       ID_ARREGLO_P,',
'       APR_ARREGLO_P,',
'       MONTO_INTERESES ',
'from documentos_x_cobrar@consulta_ictx'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(755418028993515844)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(157589929243872536)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
'<center><h3>Reporte cuenta por cobrar generadas</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(157621548932898129)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(157600827471898102)
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
 p_id=>wwv_flow_api.id(157620118360898125)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(157600827471898102)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Regresar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:307:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(157621931842898129)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(157600827471898102)
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
 p_id=>wwv_flow_api.id(157621121034898129)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(157600827471898102)
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
 p_id=>wwv_flow_api.id(157622293835898129)
,p_branch_action=>'f?p=&APP_ID.:307:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157601233969898104)
,p_name=>'P308_ID_DOCUMENTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>unistr('N\00B0 Documento')
,p_source=>'ID_DOCUMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157601680861898112)
,p_name=>'P308_CODIGO_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Estado'
,p_source=>'CODIGO_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE_ESTADO,CODIGO_ESTADO FROM estados_tramite@consulta_ictx',
'where CODIGO_ESTADO  = :P308_CODIGO_ESTADO'))
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
 p_id=>wwv_flow_api.id(157602057092898112)
,p_name=>'P308_FECHA'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>unistr('Fecha Inclusi\00F3n ')
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157602466238898113)
,p_name=>'P308_FECHA_VENCE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Fecha Vencimiento'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_VENCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157602854540898113)
,p_name=>'P308_MONTO_MONEDA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Monto Moneda'
,p_source=>'MONTO_MONEDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157603202880898114)
,p_name=>'P308_SALDO_MONEDA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Saldo'
,p_source=>'SALDO_MONEDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157603654726898114)
,p_name=>'P308_ID_TIPO_DOCUMENTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Tipo Documento'
,p_source=>'ID_TIPO_DOCUMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIP_DOC_CXC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_TIPO_DOCUMENTO, DESCRIPCION',
'  FROM TIPOS_DOCUMENTOS_CXC@CONSULTA_ICTX'))
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
 p_id=>wwv_flow_api.id(157604030106898115)
,p_name=>'P308_ID_PLANILLA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>unistr('N\00B0 Planilla')
,p_source=>'ID_PLANILLA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157604418682898115)
,p_name=>'P308_PERIODO'
,p_source_data_type=>'DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Periodo'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'PERIODO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157604814063898115)
,p_name=>'P308_QUINCENA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Quincena'
,p_source=>'QUINCENA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157605252272898115)
,p_name=>'P308_IND_CERTEZA_PAGO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Ind. Certeza Pago'
,p_source=>'IND_CERTEZA_PAGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157605669677898115)
,p_name=>'P308_NUM_RESOLUCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>unistr('N\00B0 Resoluci\00F3n')
,p_source=>'NUM_RESOLUCION'
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
 p_id=>wwv_flow_api.id(157606050325898115)
,p_name=>'P308_NUMERO_CHEQUE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>unistr('N\00B0 Cheque')
,p_source=>'NUMERO_CHEQUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
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
 p_id=>wwv_flow_api.id(157606440508898116)
,p_name=>'P308_ID_DECLARA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Id Declara'
,p_source=>'ID_DECLARA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157606872611898116)
,p_name=>'P308_ID_DOCTO_REF'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Docto Padre'
,p_source=>'ID_DOCTO_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157607296235898116)
,p_name=>'P308_ID_DEUDOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Deudor'
,p_source=>'ID_DEUDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE_ENTIDAD,ID_DEUDOR',
'FROM   MAESTRO_CONTRIBUYENTE',
'WHERE  ID_DEUDOR = :P308_ID_DEUDOR'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157607620378898116)
,p_name=>'P308_CODIGO_MONEDA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Moneda'
,p_source=>'CODIGO_MONEDA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_MONEDA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(DESCRIPCION), CODIGO_MONEDA',
'from TIPO_MONEDAS@CONSULTA_ICTX'))
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
 p_id=>wwv_flow_api.id(157608030672898117)
,p_name=>'P308_TIPO_CAMBIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Tipo Cambio'
,p_source=>'TIPO_CAMBIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157608405143898117)
,p_name=>'P308_MONTO_COLONES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Monto Colones'
,p_source=>'MONTO_COLONES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157608855108898117)
,p_name=>'P308_SALDO_COLONES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Saldo '
,p_source=>'SALDO_COLONES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157609274908898118)
,p_name=>'P308_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157609652996898118)
,p_name=>'P308_MOTIVO_ANULACION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>unistr('Motivo Anulaci\00F3n')
,p_source=>'MOTIVO_ANULACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157610000381898118)
,p_name=>'P308_ID_ACREEDOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Acreedor'
,p_source=>'ID_ACREEDOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157610417524898118)
,p_name=>'P308_BOLETA_OP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Boleta Op'
,p_source=>'BOLETA_OP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157610862034898119)
,p_name=>'P308_NUMERO_DEBITO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>unistr('N\00B0 Debito')
,p_source=>'NUMERO_DEBITO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>15
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157611225435898119)
,p_name=>'P308_ID_TRAMITE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>unistr('N\00B0 Tramite')
,p_source=>'ID_TRAMITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(157611613891898119)
,p_name=>'P308_NUMERO_LIQUIDACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>unistr('N\00B0 Liquidaci\00F3n')
,p_source=>'NUMERO_LIQUIDACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
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
 p_id=>wwv_flow_api.id(158826171764968213)
,p_name=>'P308_ID_ARREGLO_P'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Arreglo P. Activo'
,p_source=>'ID_ARREGLO_P'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(158826250735968214)
,p_name=>'P308_APR_ARREGLO_P'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>unistr('N\00BA Arreglo Pago')
,p_source=>'APR_ARREGLO_P'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(158826306751968215)
,p_name=>'P308_MONTO_INTERESES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(157600827471898102)
,p_item_source_plug_id=>wwv_flow_api.id(157600827471898102)
,p_prompt=>'Monto Intereses'
,p_source=>'MONTO_INTERESES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(157623102462898132)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(157600827471898102)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 308-Formulario cuenta por cobrar generadas'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(157622718971898131)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(157600827471898102)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 308-Formulario cuenta por cobrar generadas'
);
wwv_flow_api.component_end;
end;
/
