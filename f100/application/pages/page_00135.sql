prompt --application/pages/page_00135
begin
--   Manifest
--     PAGE: 00135
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
 p_id=>135
,p_user_interface_id=>wwv_flow_api.id(155231128641979405)
,p_name=>'135-Mostrar PDFs'
,p_alias=>'135-MOSTRAR-PDFS'
,p_step_title=>'135-Mostrar PDFs'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(155110400346979480)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'KIMBERLYN.SOLANO'
,p_last_upd_yyyymmddhh24miss=>'20230502081142'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(167975390382571044)
,p_plug_name=>'Archivo requisitos COT '
,p_region_name=>'PDF'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=Mostrar_pdf_requi_COT:NO::P135_ID_DECLARA,P135_ID_DOC:&P135_ID_DECLARACION.,&P135_ID_DOC." width="100%" height="600">',
'</iframe>',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P135_MOSTRAR_REGION'
,p_plug_display_when_cond2=>'C'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191106156511479374)
,p_plug_name=>unistr('Archivo apoderados, Inscripci\00F3n numero: &P135_ID_NUM_INSCRIPCION.')
,p_region_name=>'PDF'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=Mostrar_pdf_apoderado_IR:NO::P135_ID_ARCHI_APODERA,P135_ID_APODERADO:&P135_ID_ARCHI_APODERA.,&P135_ID_APODERADO." width="100%" height="600">',
'</iframe>',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P135_MOSTRAR_REGION'
,p_plug_display_when_cond2=>'AIR'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191106939744479382)
,p_plug_name=>unistr('Archivo requisitos inscripci\00F3n , Inscripci\00F3n numero: &P135_ID_NUM_INSCRIPCION.')
,p_region_name=>'PDF'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=Mostrar_pdf_requisitos_IR:NO::P135_ID_ARCHI_REQUI,P135_ID_NUM_INSCRIPCION:&P135_ID_ARCHI_REQUI.,&P135_ID_NUM_INSCRIPCION." width="100%" height="600">',
'</iframe>',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P135_MOSTRAR_REGION'
,p_plug_display_when_cond2=>'R'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191107368161479386)
,p_plug_name=>unistr('Archivo requisitos des inscripci\00F3n , numero: &P135_ID_DESC_INSCRIPCION.')
,p_region_name=>'PDF'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=Mostrar_pdf_reqDesinscrip:NO::P135_ID_ARCHI_DESC_INS,P135_ID_DESC_INSCRIPCION:&P135_ID_ARCHI_DESC_INS.,&P135_ID_DESC_INSCRIPCION." width="100%" height="600">',
'</iframe>',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P135_MOSTRAR_REGION'
,p_plug_display_when_cond2=>'RD'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191370941560796146)
,p_plug_name=>'Archivo apoderados, Maestro Constribuyente &P135_ID_CONTRIBUYENTE.'
,p_region_name=>'PDF'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=Mostrar_pdf_apoderado_MC:NO::P135_ID_ARCHI_APODERA,P135_ID_APODERADO:&P135_ID_ARCHI_APODERA.,&P135_ID_APODERADO." width="100%" height="600">',
'</iframe>',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P135_MOSTRAR_REGION'
,p_plug_display_when_cond2=>'AMC'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(233278820643245396)
,p_plug_name=>unistr('Archivo representante legal, Inscripci\00F3n numero: &P135_ID_NUM_INSCRIPCION.')
,p_region_name=>'PDF'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(155146499431979459)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=Mostrar_pdf_Repre_legal_IR:NO::P135_ID_REPRESENTA:&P135_ID_REPRESENTA." width="100%" height="600">',
'</iframe>',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P135_MOSTRAR_REGION'
,p_plug_display_when_cond2=>'RLIR'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(167975426315571045)
,p_name=>'P135_ID_DOC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(167975390382571044)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(167975752400571048)
,p_name=>'P135_ID_DECLARACION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(167975390382571044)
,p_prompt=>'New'
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
 p_id=>wwv_flow_api.id(191105528629479368)
,p_name=>'P135_ID_NUM_INSCRIPCION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(233278820643245396)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(191105622426479369)
,p_name=>'P135_MOSTRAR_REGION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(233278820643245396)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(191106276670479375)
,p_name=>'P135_ID_ARCHI_APODERA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(191106156511479374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(191106373730479376)
,p_name=>'P135_ID_APODERADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(191106156511479374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(191107029895479383)
,p_name=>'P135_ID_ARCHI_REQUI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(191106939744479382)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(191107467525479387)
,p_name=>'P135_ID_ARCHI_DESC_INS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(191107368161479386)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(191107508601479388)
,p_name=>'P135_ID_DESC_INSCRIPCION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(191107368161479386)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(191296636486180101)
,p_name=>'P135_ID_REPRESENTA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(233278820643245396)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(191371259316796149)
,p_name=>'P135_ID_CONTRIBUYENTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(191370941560796146)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
