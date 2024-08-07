prompt --application/shared_components/user_interface/lovs/lov_tipo_impuesto
begin
--   Manifest
--     LOV_TIPO_IMPUESTO
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
 p_id=>wwv_flow_api.id(161757268632851451)
,p_lov_name=>'LOV_TIPO_IMPUESTO'
,p_lov_query=>'.'||wwv_flow_api.id(161757268632851451)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(161757564275851451)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'IMPUESTO 5%(A) CR'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(161757892656851449)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'IMPUESTO 5%(B) OU'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(161758304714851449)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'IMPUESTO $15 NW'
,p_lov_return_value=>'3'
);
wwv_flow_api.component_end;
end;
/
