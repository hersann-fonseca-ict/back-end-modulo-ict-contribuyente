prompt --application/shared_components/user_interface/lovs/lov_estado
begin
--   Manifest
--     LOV_ESTADO
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
 p_id=>wwv_flow_api.id(164723649596609236)
,p_lov_name=>'LOV_ESTADO'
,p_lov_query=>'.'||wwv_flow_api.id(164723649596609236)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(164723936063609235)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Activo'
,p_lov_return_value=>'AC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(164724344781609235)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Inactivo'
,p_lov_return_value=>'IA'
);
wwv_flow_api.component_end;
end;
/
