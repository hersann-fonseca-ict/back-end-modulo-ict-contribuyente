prompt --application/shared_components/user_interface/lovs/lov_tipo_usuario
begin
--   Manifest
--     LOV_TIPO_USUARIO
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
 p_id=>wwv_flow_api.id(164717588627640546)
,p_lov_name=>'LOV_TIPO_USUARIO'
,p_lov_query=>'.'||wwv_flow_api.id(164717588627640546)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(164717973071640534)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Interno'
,p_lov_return_value=>'I'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(164718360924640532)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Externo'
,p_lov_return_value=>'E'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(175780644291334022)
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'Ambos'
,p_lov_return_value=>'A'
);
wwv_flow_api.component_end;
end;
/
