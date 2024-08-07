prompt --application/shared_components/logic/application_processes/mostrar_pdf_apoderado_ir
begin
--   Manifest
--     APPLICATION PROCESS: Mostrar_pdf_apoderado_IR
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>5801312104779619
,p_default_application_id=>100
,p_default_id_offset=>149120778489414042
,p_default_owner=>'DESA_SIT'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(191347991737903661)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Mostrar_pdf_apoderado_IR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vBlob blob;',
'  vmimetype varchar2(50);',
'BEGIN',
'--RAISE_APPLICATION_ERROR(-20000,V(''P135_ID_REPRESENTA''));',
'  SELECT ARCHIVO_APODERADO, MIMETYPE INTO vBlob, vmimetype',
'                FROM ARCHI_APODERA_SOLICITUD',
'                WHERE ID_ARCHI_APODERA = V(''P135_ID_ARCHI_APODERA'')',
'                AND   ID_APODERADO = V(''P135_ID_APODERADO'');',
'                 ',
'  owa_util.mime_header(vmimetype,false);',
'  htp.p(''Content-Length: '' || dbms_lob.getlength(vBlob)); ',
'  owa_util.http_header_close;  ',
'  wpg_docload.download_file(vBlob);',
'  exception ',
'  when no_data_found then',
'   null;',
'END;'))
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
