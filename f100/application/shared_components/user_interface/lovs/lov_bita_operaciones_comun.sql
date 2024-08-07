prompt --application/shared_components/user_interface/lovs/lov_bita_operaciones_comun
begin
--   Manifest
--     LOV_BITA_OPERACIONES_COMUN
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
 p_id=>wwv_flow_api.id(180610561703341055)
,p_lov_name=>'LOV_BITA_OPERACIONES_COMUN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE_TIPO_OPERACION, ID_TIPO_OPERACION',
'FROM TIPOS_OPERACIONES_BITACORAS@CONSULTA_ICTX'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID_TIPO_OPERACION'
,p_display_column_name=>'NOMBRE_TIPO_OPERACION'
,p_default_sort_column_name=>'NOMBRE_TIPO_OPERACION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
