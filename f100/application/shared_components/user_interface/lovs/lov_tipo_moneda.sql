prompt --application/shared_components/user_interface/lovs/lov_tipo_moneda
begin
--   Manifest
--     LOV_TIPO_MONEDA
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
 p_id=>wwv_flow_api.id(152534385609853094)
,p_lov_name=>'LOV_TIPO_MONEDA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(DESCRIPCION), CODIGO_MONEDA',
'from TIPO_MONEDAS@CONSULTA_ICTX'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODIGO_MONEDA'
,p_display_column_name=>'UPPER(DESCRIPCION)'
,p_default_sort_column_name=>'UPPER(DESCRIPCION)'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
