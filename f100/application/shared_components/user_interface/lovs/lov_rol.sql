prompt --application/shared_components/user_interface/lovs/lov_rol
begin
--   Manifest
--     LOV_ROL
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
 p_id=>wwv_flow_api.id(151469299819705588)
,p_lov_name=>'LOV_ROL'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'SIT_ROLES'
,p_return_column_name=>'ID_ROL'
,p_display_column_name=>'DESCRIPCION'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
