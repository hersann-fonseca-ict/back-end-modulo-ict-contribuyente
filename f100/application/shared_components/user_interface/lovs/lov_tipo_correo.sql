prompt --application/shared_components/user_interface/lovs/lov_tipo_correo
begin
--   Manifest
--     LOV_TIPO_CORREO
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
 p_id=>wwv_flow_api.id(252716969945517844)
,p_lov_name=>'LOV_TIPO_CORREO'
,p_lov_query=>'.'||wwv_flow_api.id(252716969945517844)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(252717242846517828)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Rechazo'
,p_lov_return_value=>'R'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(252717675998517826)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Aprobacion'
,p_lov_return_value=>'A'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(252717986827517825)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Ingreso'
,p_lov_return_value=>'I'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(252718413740517825)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('Des-inscripci\00F3n ')
,p_lov_return_value=>'D'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(252720084373489647)
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'General'
,p_lov_return_value=>'G'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(175779628305290446)
,p_lov_disp_sequence=>24
,p_lov_disp_value=>'Carta RN'
,p_lov_return_value=>'CRN'
);
wwv_flow_api.component_end;
end;
/
