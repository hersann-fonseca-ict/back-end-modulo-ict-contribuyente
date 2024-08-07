prompt --application/shared_components/user_interface/lovs/lov_tipo_solicitud
begin
--   Manifest
--     LOV_TIPO_SOLICITUD
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
 p_id=>wwv_flow_api.id(185309552587512611)
,p_lov_name=>'LOV_TIPO_SOLICITUD'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TIPO_SOLICITUD'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CODIGO_ESTADO = ''AC''',
'AND NOMBRE_MODULO = 1'))
,p_return_column_name=>'ID_TIPO_SOLICITUD'
,p_display_column_name=>'NOMBRE_SOLICITUD'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOMBRE_SOLICITUD'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
