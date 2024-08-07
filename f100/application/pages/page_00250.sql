prompt --application/pages/page_00250
begin
--   Manifest
--     PAGE: 00250
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
 p_id=>250
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'250-Mis datos COT'
,p_alias=>'250-MIS-DATOS-COT'
,p_step_title=>'Mis datos COT'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230403164353'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(448678135475253097)
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
 p_id=>wwv_flow_api.id(452707874901933640)
,p_plug_name=>'209-Mis datos COT'
,p_parent_plug_id=>wwv_flow_api.id(448678135475253097)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(351595281752907154)
,p_name=>'Tipo de impuestos a declarar'
,p_parent_plug_id=>wwv_flow_api.id(452707874901933640)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 1100px"'
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
'  where ID_CONTRIBUYENTE = :P250_ID_CONTRIBUYENTE',
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
 p_id=>wwv_flow_api.id(169642741448451761)
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
 p_id=>wwv_flow_api.id(169643199341451762)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(169643516586451764)
,p_query_column_id=>3
,p_column_alias=>'NOMBRE_ENCARGADO_IMP'
,p_column_display_sequence=>3
,p_column_heading=>'Nombre Encargado'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_condition=>'P250_TIPO_INSCRIPCION'
,p_display_when_condition2=>'ANRI'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(169643945442451766)
,p_query_column_id=>4
,p_column_alias=>'CEDULA_ENCARGADO_IMP'
,p_column_display_sequence=>4
,p_column_heading=>'Cedula'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_condition=>'P250_TIPO_INSCRIPCION'
,p_display_when_condition2=>'ANRI'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(169644325126451766)
,p_query_column_id=>5
,p_column_alias=>'CORREO_ENCARGADO_IMP'
,p_column_display_sequence=>5
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_when_condition=>'P250_TIPO_INSCRIPCION'
,p_display_when_condition2=>'ANRI'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(481797364476690556)
,p_name=>unistr('Tel\00E9fonos ')
,p_parent_plug_id=>wwv_flow_api.id(452707874901933640)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="height: 300px"'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_TELEFONO,',
'       ID_CONTRIBUYENTE,',
'       ID_TIPO_TELEFONO,',
'       TELEFONO',
'  from TELEFONO_X_MAESTRO_CONTRIBU',
'  where ID_CONTRIBUYENTE= :P250_ID_CONTRIBUYENTE'))
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
 p_id=>wwv_flow_api.id(153993920190714957)
,p_query_column_id=>1
,p_column_alias=>'ID_TELEFONO'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(153994338858714958)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(153994750202714960)
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
 p_id=>wwv_flow_api.id(153995142767714960)
,p_query_column_id=>4
,p_column_alias=>'TELEFONO'
,p_column_display_sequence=>4
,p_column_heading=>'Telefono'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(153995588439714961)
,p_query_column_id=>5
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>5
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P209_ID_TEL'',''#ID_TELEFONO#'');javascript:openModal(''TEL_ID''); $("#TEL_ID").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(483855101636714915)
,p_plug_name=>unistr('Actualizar Tel\00E9fono ')
,p_region_name=>'TEL_ID'
,p_parent_plug_id=>wwv_flow_api.id(481797364476690556)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(155139048344979462)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(489843361878499848)
,p_plug_name=>unistr('Agregar Tel\00E9fono ')
,p_region_name=>'NEWTEL_ID'
,p_parent_plug_id=>wwv_flow_api.id(481797364476690556)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(155139048344979462)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(481804226821679040)
,p_name=>'Correos para Notificaciones'
,p_parent_plug_id=>wwv_flow_api.id(452707874901933640)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="height: 300px"'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_CORREO_NOTIFICA,',
'       ID_CONTRIBUYENTE,',
'       CORREO_NOTIFICA,',
'       CODIGO_ESTADO',
'  from CORREO_NOTIFICACIONES',
'  where ID_CONTRIBUYENTE = :P250_ID_CONTRIBUYENTE',
'  and   CODIGO_ESTADO = ''AC'''))
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
 p_id=>wwv_flow_api.id(154000487882714964)
,p_query_column_id=>1
,p_column_alias=>'ID_CORREO_NOTIFICA'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(154000813347714964)
,p_query_column_id=>2
,p_column_alias=>'ID_CONTRIBUYENTE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(154001230564714965)
,p_query_column_id=>3
,p_column_alias=>'CORREO_NOTIFICA'
,p_column_display_sequence=>3
,p_column_heading=>'Correo'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(154000054247714964)
,p_query_column_id=>4
,p_column_alias=>'CODIGO_ESTADO'
,p_column_display_sequence=>4
,p_column_heading=>'Estado'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(172402886801000103)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(153999683386714964)
,p_query_column_id=>5
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>5
,p_column_heading=>'Editar'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P209_NEW_CORREO'',''#CORREO_NOTIFICA#'');javascript:$s(''P209_ID_CORREO'',''#ID_CORREO_NOTIFICA#'');javascript:openModal(''ID_CORREO''); $("#ID_CORREO").trigger("apexrefresh");'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(483862233080703402)
,p_plug_name=>'Actualizar Correos'
,p_region_name=>'ID_CORREO'
,p_parent_plug_id=>wwv_flow_api.id(481804226821679040)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(155139048344979462)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(489850510257488335)
,p_plug_name=>'Agregar Correos'
,p_region_name=>'ID_CORREONEW'
,p_parent_plug_id=>wwv_flow_api.id(481804226821679040)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(155139048344979462)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(883487594513257848)
,p_plug_name=>'Titulo'
,p_parent_plug_id=>wwv_flow_api.id(448678135475253097)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center><h2>Instituto Costarricense de Turismo</h2></center>',
unistr('<center><h4>Ch\00E1rter Ocasional Terrestre.</h4></center>'),
unistr('<center><h4>Actualizaci\00F3n de datos</h4></center>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(153998188434714963)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(489843361878499848)
,p_button_name=>'BTN_INSERTAR_TEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(154004285135714966)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(489850510257488335)
,p_button_name=>'BTN_INSERTAR_CORREO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(153996681952714962)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(483855101636714915)
,p_button_name=>'BTN_GUARDAR_TEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(154002792625714965)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(483862233080703402)
,p_button_name=>'BTN_GUARDAR_CORREO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(154002330943714965)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(483862233080703402)
,p_button_name=>'BTN_INACTIVAR_CORREO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Inactivar'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P250_CANT_CORREOS'
,p_button_condition2=>'S'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'u-color-39'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(153984513181714944)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(452707874901933640)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P250_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(153983758823714940)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(452707874901933640)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(153984955630714944)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(452707874901933640)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P250_ID_CONTRIBUYENTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(153984165836714943)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(452707874901933640)
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
 p_id=>wwv_flow_api.id(153995979246714961)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(481797364476690556)
,p_button_name=>'BTN_AGREGAR_TEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Nuevo'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:openModal(''NEWTEL_ID''); $("#NEWTEL_ID").trigger("apexrefresh");'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(154001692355714965)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(481804226821679040)
,p_button_name=>'BTN_AGREGAR_CORREO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Agregar Nuevo'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:openModal(''ID_CORREONEW''); $("#ID_CORREONEW").trigger("apexrefresh");'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(154013128952714993)
,p_branch_name=>'Go To Page 250'
,p_branch_action=>'f?p=&APP_ID.:250:&SESSION.::&DEBUG.::P250_ID_CONTRIBUYENTE:&P250_ID_CONTRIBUYENTE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153985312941714944)
,p_name=>'P250_ID_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_source=>'ID_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153985732799714950)
,p_name=>'P250_ID_DEUDOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153986168838714950)
,p_name=>'P250_CODIGO_FUENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>'Codigo Fuente'
,p_source=>'CODIGO_FUENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153986506664714950)
,p_name=>'P250_NOMBRE_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>'Nombre Entidad'
,p_source=>'NOMBRE_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153986971448714950)
,p_name=>'P250_ID_TIPO_IDENTIFICACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>unistr('Tipo Identificaci\00F3n:')
,p_source=>'ID_TIPO_IDENTIFICACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_TIPO_IDENTIFICACION'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153987319102714951)
,p_name=>'P250_CEDULA_JURIDICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>'Cedula Juridica'
,p_source=>'CEDULA_JURIDICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P250_ID_TIPO_IDENTIFICACION'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153987794944714951)
,p_name=>'P250_CEDULA_FISICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>'Cedula Fisica'
,p_source=>'CEDULA_FISICA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P250_ID_TIPO_IDENTIFICACION'
,p_display_when2=>'2'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153988147119714951)
,p_name=>'P250_ID_TIPO_CONTRIBUYENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_source=>'ID_TIPO_CONTRIBUYENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153988549397714951)
,p_name=>'P250_ID_PROVINCIA_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>'Provincia:'
,p_source=>'ID_PROVINCIA_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DESCRIPCION, ID FROM PROVINCIAS@consulta_ictx'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153988916672714952)
,p_name=>'P250_ID_CANTON_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>unistr('Cant\00F3n:')
,p_source=>'ID_CANTON_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ID ',
'FROM CANTONES@consulta_ictx ',
'WHERE PROV_ID = :P250_ID_PROVINCIA_ENTIDAD'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P250_ID_PROVINCIA_ENTIDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153989325258714952)
,p_name=>'P250_ID_DISTRITO_ENTIDAD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>'Distrito:'
,p_source=>'ID_DISTRITO_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION, ID ',
'FROM DISTRITOS@consulta_ictx ',
'WHERE PROV_ID = :P250_ID_PROVINCIA_ENTIDAD',
'AND CANTON_ID = :P250_ID_CANTON_ENTIDAD'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P250_ID_PROVINCIA_ENTIDAD,P250_ID_CANTON_ENTIDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153989789917714953)
,p_name=>'P250_DIRECCION_ENTIDAD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>unistr('Direcci\00F3n:')
,p_source=>'DIRECCION_ENTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153990104641714953)
,p_name=>'P250_CODIGO_ESTADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>'Estado:'
,p_source=>'CODIGO_ESTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_ESTADO'
,p_lov=>'.'||wwv_flow_api.id(164723649596609236)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153990538622714953)
,p_name=>'P250_FECHA_INSCRIPCION'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>unistr('Fecha Inscripci\00F3n:')
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153990954717714954)
,p_name=>'P250_FECHA_INGRESO'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>'Fecha Ingreso'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_INGRESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153991315437714954)
,p_name=>'P250_FECHA_SUSCRITO'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>'Fecha Suscrito'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA_SUSCRITO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153991789901714954)
,p_name=>'P250_LUGAR_SUSCRITO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_prompt=>'Lugar Suscrito'
,p_source=>'LUGAR_SUSCRITO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(155207301425979428)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153992121510714954)
,p_name=>'P250_ID_NUM_INSCRIPCION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_source=>'ID_NUM_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153992576290714954)
,p_name=>'P250_USUARIO_SIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(452707874901933640)
,p_item_source_plug_id=>wwv_flow_api.id(452707874901933640)
,p_source=>'USUARIO_SIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153997095326714962)
,p_name=>'P250_ID_TEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(483855101636714915)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(153997470920714962)
,p_name=>'P250_NEW_TELEFONO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(483855101636714915)
,p_prompt=>unistr('Nuevo Tel\00E9fono:')
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
 p_id=>wwv_flow_api.id(153998501423714963)
,p_name=>'P250_TIPO_TEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(489843361878499848)
,p_prompt=>'Tipo Telefono:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_TIPO_TELEFONO'
,p_field_template=>wwv_flow_api.id(155207447716979428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
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
 p_id=>wwv_flow_api.id(153998983968714963)
,p_name=>'P250_TELEFONO_NUEVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(489843361878499848)
,p_prompt=>unistr('Nuevo Tel\00E9fono:')
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
 p_id=>wwv_flow_api.id(154003112103714966)
,p_name=>'P250_ID_CORREO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(483862233080703402)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(154003500688714966)
,p_name=>'P250_NEW_CORREO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(483862233080703402)
,p_prompt=>'Correo Nuevo:'
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
 p_id=>wwv_flow_api.id(154004675821714966)
,p_name=>'P250_CORREO_NUEVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(489850510257488335)
,p_prompt=>'Correo Nuevo:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(153993390802714956)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(452707874901933640)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form 209-Mis datos COT'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(154011040976714990)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P250_ID_CONTRIBUYENTE:= PKG_MAESTRO_CONTRIBUYENTE.RETORNA_ID_CONTRIBUYENTE (:GLOBAL_USUARIO);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(153992935559714955)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(452707874901933640)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form 209-Mis datos COT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(154011454532714990)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_AGREGAR_TEL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vId_telefono NUMBER;',
'BEGIN',
'vId_telefono := SEQ_TELEFONO_MAESTRO.NEXTVAL;',
'INSERT INTO TELEFONO_X_MAESTRO_CONTRIBU VALUES(vId_telefono,:P250_ID_CONTRIBUYENTE,:P250_TIPO_TEL,:P250_TELEFONO_NUEVO,:APP_USER);',
'COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(153998188434714963)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(154011888324714990)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ACTUALIZA_TELEFONO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'UPDATE TELEFONO_X_MAESTRO_CONTRIBU SET TELEFONO = :P250_NEW_TELEFONO,USUARIO_SIT = :APP_USER WHERE ID_TELEFONO = :P250_ID_TEL AND ID_CONTRIBUYENTE = :P250_ID_CONTRIBUYENTE;',
'COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(153996681952714962)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(154012272319714990)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_AGREGAR_CORREO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vId_correo_notif NUMBER;',
'BEGIN',
'vId_correo_notif := SEQ_CORREO_NOTIFICA.NEXTVAL;',
'    INSERT INTO CORREO_NOTIFICACIONES (ID_CORREO_NOTIFICA,',
'                                       ID_CONTRIBUYENTE,',
'                                       CORREO_NOTIFICA,',
'                                       USUARIO_SIT,',
'                                      CODIGO_ESTADO)',
'                               VALUES (vId_correo_notif,',
'                                       :P250_ID_CONTRIBUYENTE,',
'                                       :P250_CORREO_NUEVO,',
'                                       :APP_USER,',
'                                      ''AC''); ',
'COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(154004285135714966)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(154012679688714992)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ACTUALIZA_CORREO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'UPDATE CORREO_NOTIFICACIONES SET CORREO_NOTIFICA = :P250_NEW_CORREO,USUARIO_SIT = :APP_USER WHERE ID_CORREO_NOTIFICA = :P250_ID_CORREO AND ID_CONTRIBUYENTE = :P250_ID_CONTRIBUYENTE;',
'COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(154002792625714965)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(154043225073889899)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_ACT/INAC_CONTRIB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vMensaje_Retorno VARCHAR2(200);',
'vRetorno boolean;',
'vCedula VARCHAR2(20);',
'BEGIN',
'IF :P250_CODIGO_ESTADO <> ''AC'' THEN',
'        --Se inactiva el usuario ',
'    UPDATE USUARIOS_EXTERNOS SET CODIGO_ESTADO = ''IA'' WHERE ID_CONTRIBUYENTE = :P250_ID_CONTRIBUYENTE;',
'    --El estado del contribuyente se cambia Inactivo',
'    --UPDATE MAESTRO_CONTRIBUYENTE SET CODIGO_ESTADO = ''IA'' WHERE ID_CONTRIBUYENTE = :P250_ID_CONTRIBUYENTE;',
'     --Se inserta el periodo de inactivacion ',
'    PKG_MAESTRO_CONTRIBUYENTE.INSERTA_PERIODO_INACTIVACION (:P250_ID_CONTRIBUYENTE,:APP_USER,''I'');',
'    --Inactivar en maestro_deudores',
'    UPDATE MAESTRO_DEUDORES@CONSULTA_ICTX SET CODIGO_ESTADO = ''AI'' WHERE ID_DEUDOR = :P250_ID_DEUDOR;',
'END IF;',
'IF  :P250_CODIGO_ESTADO <> ''IA'' THEN',
'    --El estado del contribuyente se cambia a activo',
'    --UPDATE MAESTRO_CONTRIBUYENTE SET CODIGO_ESTADO = ''AC'' WHERE ID_CONTRIBUYENTE = :P250_ID_CONTRIBUYENTE;',
'    --Se activa el usuario ',
'    UPDATE USUARIOS_EXTERNOS SET CODIGO_ESTADO = ''AC'' WHERE ID_CONTRIBUYENTE = :P250_ID_CONTRIBUYENTE;',
unistr('    --Se genera una contrase\00F1a temporal y se envia un correo con esa contrase\00F1a temporal'),
'        IF :P250_CEDULA_JURIDICA IS NOT NULL THEN',
'            vCedula := :P250_CEDULA_JURIDICA;',
'        ELSIF :P250_CEDULA_FISICA IS NOT NULL THEN',
'        vCedula := :P250_CEDULA_FISICA;',
'        END IF;',
'    PKG_ENVIO_NOTIF_ICT_CONTRIB.NOTIF_ACTIVACION_USR (vCedula,8,''A'',:APP_USER,vMensaje_Retorno,vRetorno);',
'    --Se inserta el periodo de inactivacion ',
'    PKG_MAESTRO_CONTRIBUYENTE.INSERTA_PERIODO_INACTIVACION (:P250_ID_CONTRIBUYENTE,:APP_USER,''A'');',
'    --Activar en maestro_deudores',
'    UPDATE MAESTRO_DEUDORES@CONSULTA_ICTX SET CODIGO_ESTADO = ''AC'' WHERE ID_DEUDOR = :P250_ID_DEUDOR;',
'',
'END IF;',
'    COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(153984513181714944)
);
wwv_flow_api.component_end;
end;
/
