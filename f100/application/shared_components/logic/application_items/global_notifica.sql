prompt --application/shared_components/logic/application_items/global_notifica
begin
--   Manifest
--     APPLICATION ITEM: GLOBAL_NOTIFICA
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>5801312104779619
,p_default_application_id=>100
,p_default_id_offset=>149120778489414042
,p_default_owner=>'DESA_SIT'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(243510521684122657)
,p_name=>'GLOBAL_NOTIFICA'
,p_protection_level=>'I'
);
wwv_flow_api.component_end;
end;
/
