prompt --application/shared_components/user_interface/lovs/lov_tipo_charter
begin
--   Manifest
--     LOV_TIPO_CHARTER
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
 p_id=>wwv_flow_api.id(177076063272296787)
,p_lov_name=>'LOV_TIPO_CHARTER'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TIPO_VUELOS_CHARTER'
,p_return_column_name=>'ID_CHARTER'
,p_display_column_name=>'NOMBRE_INSCRIPCION'
,p_default_sort_column_name=>'NOMBRE_INSCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
