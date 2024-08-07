prompt --application/shared_components/user_interface/lovs/lov_tipo_inscripcion
begin
--   Manifest
--     LOV_TIPO_INSCRIPCION
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
 p_id=>wwv_flow_api.id(184013598442090356)
,p_lov_name=>'LOV_TIPO_INSCRIPCION'
,p_lov_query=>'.'||wwv_flow_api.id(184013598442090356)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(184013908613090359)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Registro No Contribuyente'
,p_lov_return_value=>'NC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(184014348229090362)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Agencias No Recaudadoras de Impuestos'
,p_lov_return_value=>'ANRI'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(184014724199090362)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('Inscripci\00F3n Regular')
,p_lov_return_value=>'IR'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(184015091659090362)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('Inscripci\00F3n Vuelos Ch\00E1rter ')
,p_lov_return_value=>'IVC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(184015513305090362)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>unistr('Inscripci\00F3n Ch\00E1rter Ocasional Terrestre')
,p_lov_return_value=>'ITCO'
);
wwv_flow_api.component_end;
end;
/
