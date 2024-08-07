prompt --application/pages/page_01000
begin
--   Manifest
--     PAGE: 01000
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>5801312104779619
,p_default_application_id=>100
,p_default_id_offset=>149120778489414042
,p_default_owner=>'DESA_SIT'
);
wwv_flow_api.create_page(
 p_id=>1000
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'Archivo'
,p_alias=>'ARCHIVO'
,p_step_title=>'Archivo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20210805083144'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(165202226989141145)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(165202440461141147)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(165202226989141145)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(155208596203979425)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(165202340631141146)
,p_name=>'P1000_ARCHIVO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(165202226989141145)
,p_prompt=>'ARCHIVO'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(165202589024141149)
,p_name=>'P1000_NOM_ARCHIVO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(165202226989141145)
,p_prompt=>'Nombre Archivo'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(155207562166979428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(165202832432141151)
,p_name=>'P1000_MIMETYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(165202226989141145)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(165202942778141152)
,p_name=>'P1000_CHARSET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(165202226989141145)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(165203016462141153)
,p_name=>'P1000_LAST_UPDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(165202226989141145)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(165202767649141150)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vArchivo BLOB;',
'vMimetype VARCHAR2(255);',
'vFilename VARCHAR2(255);',
'vId NUMBER;',
'BEGIN',
'vId := SEQ_ARCHIVOS_CARGADOS.NEXTVAL;',
'SELECT BLOB_CONTENT, MIME_TYPE, FILENAME INTO vArchivo,vMimetype, vFilename FROM APEX_APPLICATION_TEMP_FILES WHERE NAME = :P1000_ARCHIVO;',
'INSERT INTO ARCHIVOS_CARGADOS (NOM_ARCHIVO,ARCHIVO,MIMETYPE,LAST_UPDATE, ID)VALUES (vFilename,vArchivo,vMimetype,SYSDATE,vId);',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
