prompt --application/shared_components/user_interface/lovs/lov_no_contribuyente
begin
--   Manifest
--     LOV_NO_CONTRIBUYENTE
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
 p_id=>wwv_flow_api.id(172401093321094015)
,p_lov_name=>'LOV_NO_CONTRIBUYENTE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_TIPO_NO_CONTRI, DESCRIPCION',
'FROM TIPO_NO_CONTRIBUYE',
'WHERE CODIGO_ESTADO = ''AC'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'TIPO_NO_CONTRIBUYE'
,p_return_column_name=>'ID_TIPO_NO_CONTRI'
,p_display_column_name=>'DESCRIPCION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
