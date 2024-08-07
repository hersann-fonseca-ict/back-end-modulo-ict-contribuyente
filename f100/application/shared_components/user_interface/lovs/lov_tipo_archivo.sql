prompt --application/shared_components/user_interface/lovs/lov_tipo_archivo
begin
--   Manifest
--     LOV_TIPO_ARCHIVO
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
 p_id=>wwv_flow_api.id(162833464725586672)
,p_lov_name=>'LOV_TIPO_ARCHIVO'
,p_lov_query=>'.'||wwv_flow_api.id(162833464725586672)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(162833871357586670)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Manual usuario externo'
,p_lov_return_value=>'ME'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(162834193098586670)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Formato'
,p_lov_return_value=>'F'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(162834652703586668)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Politica'
,p_lov_return_value=>'P'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(162835012038586668)
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'Manual usuario interno'
,p_lov_return_value=>'MI'
);
wwv_flow_api.component_end;
end;
/
