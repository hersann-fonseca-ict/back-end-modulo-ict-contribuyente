prompt --application/pages/page_00142
begin
--   Manifest
--     PAGE: 00142
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
 p_id=>142
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'142-Alerta '
,p_alias=>'142-ALERTA'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20220211105846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(192260375963519992)
,p_plug_name=>'&P142_MENSAJE.'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--success'
,p_plug_template=>wwv_flow_api.id(155115467944979477)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(192548788779429944)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(192260375963519992)
,p_button_name=>'BTN_ACEPTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aceptar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(192548766884429943)
,p_name=>'P142_MENSAJE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(192260375963519992)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
