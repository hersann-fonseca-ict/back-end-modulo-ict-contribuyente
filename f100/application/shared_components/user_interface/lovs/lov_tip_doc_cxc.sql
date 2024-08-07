prompt --application/shared_components/user_interface/lovs/lov_tip_doc_cxc
begin
--   Manifest
--     LOV_TIP_DOC_CXC
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
 p_id=>wwv_flow_api.id(157659426613026881)
,p_lov_name=>'LOV_TIP_DOC_CXC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_TIPO_DOCUMENTO, DESCRIPCION',
'  FROM TIPOS_DOCUMENTOS_CXC@CONSULTA_ICTX'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID_TIPO_DOCUMENTO'
,p_display_column_name=>'DESCRIPCION'
,p_default_sort_column_name=>'DESCRIPCION'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
