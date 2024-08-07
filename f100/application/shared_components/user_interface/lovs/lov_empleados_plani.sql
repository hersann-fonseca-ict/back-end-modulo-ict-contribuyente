prompt --application/shared_components/user_interface/lovs/lov_empleados_plani
begin
--   Manifest
--     LOV_EMPLEADOS_PLANI
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
 p_id=>wwv_flow_api.id(234261362814989774)
,p_lov_name=>'LOV_EMPLEADOS_PLANI'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.NOMBRE_EMPLEADO||'' ''||A.APELLIDO1||'' ''||A.APELLIDO2 NOMBRE, A.CODIGO_EMPLEADO ',
'FROM EMPLEADOS@consulta_ictx A',
'WHERE A.CODIGO_EMPLEADO NOT IN (SELECT B.CODIGO_EMPLEADO FROM MAESTRO_DEUDORES@consulta_ictx B',
'                                 WHERE A.CODIGO_EMPLEADO = B.CODIGO_EMPLEADO)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'CODIGO_EMPLEADO'
,p_display_column_name=>'NOMBRE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
