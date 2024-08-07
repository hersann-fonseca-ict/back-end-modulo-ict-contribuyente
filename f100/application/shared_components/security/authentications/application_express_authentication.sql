prompt --application/shared_components/security/authentications/application_express_authentication
begin
--   Manifest
--     AUTHENTICATION: Application Express Authentication
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>5801312104779619
,p_default_application_id=>100
,p_default_id_offset=>149120778489414042
,p_default_owner=>'DESA_SIT'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(155092225151979515)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'F_LOGIN_INTERNOS'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_cookie_name=>'ICT_APP_COOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.component_end;
end;
/
