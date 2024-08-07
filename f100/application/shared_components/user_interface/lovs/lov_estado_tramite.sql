prompt --application/shared_components/user_interface/lovs/lov_estado_tramite
begin
--   Manifest
--     LOV_ESTADO_TRAMITE
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
 p_id=>wwv_flow_api.id(172402886801000103)
,p_lov_name=>'LOV_ESTADO_TRAMITE'
,p_lov_query=>'SELECT CODIGO_ESTADO, NOMBRE_ESTADO FROM estados_tramite@consulta_ictx where CODIGO_ESTADO IN (''AC'',''IA'',''A'',''R'',''P'',''RG'')'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODIGO_ESTADO'
,p_display_column_name=>'NOMBRE_ESTADO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOMBRE_ESTADO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
