prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Inicio'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230704085857'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(156405073430887871)
,p_plug_name=>'Datos'
,p_region_template_options=>'#DEFAULT#:i-h640:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<center><h2>Departamento de Administraci\00F3n Tributaria</h2></center>'),
'<center><h3>ICT-Contribuyentes</h3></center>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(192274160457822880)
,p_plug_name=>'Logo'
,p_parent_plug_id=>wwv_flow_api.id(156405073430887871)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#APP_IMAGES#Logo1.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(229113172433667561)
,p_name=>'Solicitudes Pendientes'
,p_parent_plug_id=>wwv_flow_api.id(156405073430887871)
,p_template=>wwv_flow_api.id(155146499431979459)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT ''Solicitud de Inscripci\00F3n Regular'' Descripci\00F3n, '),
'PKG_INSCRIPCION_REGULAR.CANT_INSCRIP_PENDIENTE Pendientes',
'FROM DUAL',
'UNION',
unistr('SELECT ''Solicitud de Inscripci\00F3n Vuelos Ch\00E1rter'' Descripci\00F3n,PKG_INSCRIPCION_REGULAR.CANT_INSCRIP_PENDIENTE_VC Pendientes'),
'FROM DUAL',
'UNION',
unistr('SELECT ''Solicitud de Inscripci\00F3n Agencia No Recaudadora de Impuestos'' Descripci\00F3n,PKG_INSCRIPCION_REGULAR.CANT_INSCRIP_PENDIENTE_ANRI Pendientes'),
'FROM DUAL',
'UNION',
unistr('SELECT ''Solicitud Actualizaci\00F3n Representante Legal'' Descripci\00F3n, PKG_MAESTRO_CONTRIBUYENTE.CANT_SOL_ACT_REPRE_L Pendientes'),
'from dual',
'UNION',
unistr('SELECT ''Solicitud Des-inscripcion'' Descripci\00F3n, PKG_MAESTRO_CONTRIBUYENTE.CANT_SOL_DESINSCRIP Pendientes'),
'from dual',
'UNION',
unistr('SELECT ''Solicitud Actualizaci\00F3n de Impuestos'' Descripci\00F3n,  PKG_MAESTRO_CONTRIBUYENTE.CANT_SOL_TIPO_IMPUESTO Pendientes'),
'from dual',
'UNION',
unistr('SELECT ''Solicitud de registro o cambio de apoderados'' Descripci\00F3n, PKG_MAESTRO_CONTRIBUYENTE.CANT_SOL_APODERADOS Pendientes'),
'from dual',
'UNION',
unistr('SELECT ''Solicitud de usuario y contrase\00F1a Charter Ocasional Terrestre'' Descripci\00F3n, PKG_TRAMITE_COT.CANTIDAD_SOL_USU_CONTRA Pendientes'),
'from dual',
'UNION',
unistr('SELECT ''Declaraciones pendientes Charter Ocasional Terrestre'' Descripci\00F3n, PKG_TRAMITE_COT.CANTIDAD_DECLARA_PEN_COT Pendientes'),
'from dual',
'UNION',
unistr('SELECT ''Gestion Tramite Terrestre Regular pendientes'' Descripci\00F3n, PKG_TRAMITE_COT.CANTIDAD_DECLARA_PEN_TTR Pendientes'),
'from dual',
''))
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
 p_id=>wwv_flow_api.id(229113409397667564)
,p_query_column_id=>1
,p_column_alias=>unistr('DESCRIPCI\00D3N')
,p_column_display_sequence=>1
,p_column_heading=>unistr('Descripci\00F3n')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(229113483320667565)
,p_query_column_id=>2
,p_column_alias=>'PENDIENTES'
,p_column_display_sequence=>2
,p_column_heading=>'Pendientes'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span #CSS_ESTILO#>#PENDIENTES#</span'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184951412289269027)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(229113172433667561)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'New'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(184951750948269030)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(229113172433667561)
,p_button_name=>'New_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_image_alt=>'New 1'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(230456558698560159)
,p_branch_name=>'Ir_notificaciones'
,p_branch_action=>'f?p=&APP_ID.:144:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P1_MOSTRAR_NOT'
,p_branch_condition_text=>'S'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(156405166622887872)
,p_name=>'P1_APP_CALLING'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(156405073430887871)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(230456402101560158)
,p_name=>'P1_MOSTRAR_NOT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(229113172433667561)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232290350580347762)
,p_name=>'P1_EXISTE_NOTIFICA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(156405073430887871)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(230455994943560154)
,p_name=>'DAC_ALERTAS'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(230456160510560155)
,p_event_id=>wwv_flow_api.id(230455994943560154)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_BE.CTB.ALERTIFY'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'CONFIRM'
,p_attribute_04=>'Los contribuyentes han actualizado sus datos, desea revisar ?'
,p_attribute_07=>'Ver notificaciones'
,p_attribute_08=>'Cancelar'
,p_attribute_09=>'REVERSE'
,p_attribute_10=>'OK'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(230456291537560157)
,p_event_id=>wwv_flow_api.id(230455994943560154)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P1_MOSTRAR_NOT := ''S'';'
,p_attribute_02=>'P1_MOSTRAR_NOT'
,p_attribute_03=>'P1_MOSTRAR_NOT'
,p_attribute_04=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(235552393800488251)
,p_event_id=>wwv_flow_api.id(230455994943560154)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(184951536233269028)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(184951412289269027)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(184951639303269029)
,p_event_id=>wwv_flow_api.id(184951536233269028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('apex.message.showPageSuccess(''\00A1Exitoso!'');')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(232290416275347763)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRC_DATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vExisten NUMBER;',
'    CURSOR C_NOTIFICA IS',
'    SELECT COUNT (*)',
'    FROM NOTIFICA_CONTRIBUYENTE',
'    WHERE TRUNC (FECHA_NOTIFICA) = TRUNC (SYSDATE);',
'BEGIN',
'    OPEN  C_NOTIFICA;',
'    FETCH C_NOTIFICA INTO vExisten;',
'    CLOSE C_NOTIFICA;',
'    ',
':P1_EXISTE_NOTIFICA := vExisten;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(184951922689269032)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_error.add_error (',
'    p_message          => ''This custom account is not active!'',',
'    p_display_location => apex_error.c_inline_in_notification );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(184951750948269030)
);
wwv_flow_api.component_end;
end;
/
