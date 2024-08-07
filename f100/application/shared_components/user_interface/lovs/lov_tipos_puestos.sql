prompt --application/shared_components/user_interface/lovs/lov_tipos_puestos
begin
--   Manifest
--     LOV_TIPOS_PUESTOS
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
 p_id=>wwv_flow_api.id(189376881463535123)
,p_lov_name=>'LOV_TIPOS_PUESTOS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TIPO_PUESTO_FRONTERIZO'
,p_query_where=>'CODIGO_ESTADO = ''AC'''
,p_return_column_name=>'ID_TIPO_PUESTO'
,p_display_column_name=>'NOMBRE_PUESTO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOMBRE_PUESTO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
