prompt --application/pages/page_00154
begin
--   Manifest
--     PAGE: 00154
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
 p_id=>154
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'154-Mostrar PDF''s COT'
,p_alias=>'154-MOSTRAR-PDF-S-COT'
,p_step_title=>'154-Mostrar PDF''s COT'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(155110400346979480)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230502090055'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(343653628740663917)
,p_plug_name=>'Archivo requisitos COT '
,p_region_name=>'PDF'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=Mostrar_pdf_requi_COT:NO::P154_ID_DECLARACION,P154_ID_DOC:&P154_ID_DECLARACION.,&P154_ID_DOC." width="100%" height="600">',
'</iframe>',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(175683298319092933)
,p_name=>'P154_MOSTRAR_REGION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(343653628740663917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(175683902558092934)
,p_name=>'P154_ID_DOC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(343653628740663917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(175684305612092934)
,p_name=>'P154_ID_DECLARACION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(343653628740663917)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
