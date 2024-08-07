prompt --application/shared_components/logic/application_computations/global_notifica
begin
--   Manifest
--     APPLICATION COMPUTATION: GLOBAL_NOTIFICA
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>5801312104779619
,p_default_application_id=>100
,p_default_id_offset=>149120778489414042
,p_default_owner=>'DESA_SIT'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(243561557602075337)
,p_computation_sequence=>10
,p_computation_item=>'GLOBAL_NOTIFICA'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from NOTIFICA_CONTRIBUYENTE',
'  where TRUNC (FECHA_NOTIFICA) = TRUNC(SYSDATE)'))
);
wwv_flow_api.component_end;
end;
/
