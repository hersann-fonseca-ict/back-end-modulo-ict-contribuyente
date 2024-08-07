prompt --application/shared_components/user_interface/lovs/lov_si_no
begin
--   Manifest
--     LOV_SI_NO
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>5801312104779619
,p_default_application_id=>100
,p_default_id_offset=>149120778489414042
,p_default_owner=>'DESA_SIT'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(152532602967853113)
,p_lov_name=>'LOV_SI_NO'
,p_lov_query=>'.'||wwv_flow_api.id(152532602967853113)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(152533047198853099)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'SI'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(152533461355853097)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'NO'
,p_lov_return_value=>'N'
);
wwv_flow_api.component_end;
end;
/
