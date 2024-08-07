prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
--   Manifest
--     LIST: Desktop Navigation Menu
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>5801312104779619
,p_default_application_id=>100
,p_default_id_offset=>149120778489414042
,p_default_owner=>'DESA_SIT'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(155093046678979510)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(155241010361979351)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Inicio'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Par\00E1metros')
,p_list_item_icon=>'fa-save'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(162974116617346973)
,p_list_item_display_sequence=>21
,p_list_item_link_text=>unistr('T\00E9cnico')
,p_list_item_disp_cond_type=>'NEVER'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(164706752940649927)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Sistemas'
,p_list_item_link_target=>'f?p=&APP_ID.:202:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(162974116617346973)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'202'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(172309965686730345)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Tipo Movimientos SIT'
,p_list_item_link_target=>'f?p=&APP_ID.:122:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(162974116617346973)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'122,123'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(191913699897262088)
,p_list_item_display_sequence=>642
,p_list_item_link_text=>'Tipo modulo'
,p_list_item_link_target=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(162974116617346973)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'138,139'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(191880808599125346)
,p_list_item_display_sequence=>651
,p_list_item_link_text=>'Roles internos SIT'
,p_list_item_link_target=>'f?p=&APP_ID.:136:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(162974116617346973)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'136,137'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(155673194536220542)
,p_list_item_display_sequence=>22
,p_list_item_link_text=>'Tipo ventas'
,p_list_item_link_target=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(160796742048429991)
,p_list_item_display_sequence=>23
,p_list_item_link_text=>unistr('Tipo tel\00E9fono')
,p_list_item_link_target=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(155664880615397622)
,p_list_item_display_sequence=>24
,p_list_item_link_text=>'Tipo requisitos'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(155673792161210491)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Tipo modalidad'
,p_list_item_link_target=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(155673508699218039)
,p_list_item_display_sequence=>26
,p_list_item_link_text=>'Tipo apoderado'
,p_list_item_link_target=>'f?p=&APP_ID.:106:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(160795218593451100)
,p_list_item_display_sequence=>27
,p_list_item_link_text=>unistr('Tipo identificaci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(155692167182887546)
,p_list_item_display_sequence=>29
,p_list_item_link_text=>'Tipo puesto fronterizo'
,p_list_item_link_target=>'f?p=&APP_ID.:108:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(163077531770238789)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Tipo Solicitud'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'110,111'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(172094485964977297)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Tipo Contribuyente'
,p_list_item_link_target=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'118,119'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(180379333539018658)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Tipo Ente'
,p_list_item_link_target=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'125,126'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(181229328162173131)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Tipo Local'
,p_list_item_link_target=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'127,128'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(182800323575543842)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Tipo Empleado'
,p_list_item_link_target=>'f?p=&APP_ID.:129:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'129,130'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(185305170796455096)
,p_list_item_display_sequence=>411
,p_list_item_link_text=>'Correos'
,p_list_item_link_target=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'131,132'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(185377988188517095)
,p_list_item_display_sequence=>421
,p_list_item_link_text=>'Encargado Correo'
,p_list_item_link_target=>'f?p=&APP_ID.:133:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'133,134'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(192177837333818233)
,p_list_item_display_sequence=>661
,p_list_item_link_text=>'Tipo Recomendacion'
,p_list_item_link_target=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'140,141'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(247302603001683155)
,p_list_item_display_sequence=>721
,p_list_item_link_text=>'Tipo Noticia'
,p_list_item_link_target=>'f?p=&APP_ID.:145:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'145,146'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(247447341031652459)
,p_list_item_display_sequence=>741
,p_list_item_link_text=>'Noticias Sit'
,p_list_item_link_target=>'f?p=&APP_ID.:147:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'147,148'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(151267166559761383)
,p_list_item_display_sequence=>801
,p_list_item_link_text=>'Mant. Roles'
,p_list_item_link_target=>'f?p=&APP_ID.:149:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'149'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(152166330225757274)
,p_list_item_display_sequence=>821
,p_list_item_link_text=>'Oficina Regional RN'
,p_list_item_link_target=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(155664581460401127)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'151'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Procesos'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(184734007701549992)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Hoteles'
,p_list_item_link_target=>'f?p=&APP_ID.:227:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'227,228'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(161641653757878375)
,p_list_item_display_sequence=>31
,p_list_item_link_text=>unistr('Inscripci\00F3n Regular')
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(161681374636812340)
,p_list_item_display_sequence=>32
,p_list_item_link_text=>unistr('Inscripci\00F3n Regular Pendiente')
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(161641653757878375)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'200,201'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(162518746869203205)
,p_list_item_display_sequence=>34
,p_list_item_link_text=>unistr('Solicitud des-Inscripci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:203:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(161641653757878375)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(181658812622183187)
,p_list_item_display_sequence=>36
,p_list_item_link_text=>unistr('Actualizaci\00F3n Contribuyente')
,p_list_item_link_target=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:207:P207_TIPO_INSCRIPCION:IR:'
,p_parent_list_item_id=>wwv_flow_api.id(161641653757878375)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(177039063352407854)
,p_list_item_display_sequence=>33
,p_list_item_link_text=>unistr('Inscripci\00F3n Vuelos ch\00E1rter')
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'205,206'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(184413280473088113)
,p_list_item_display_sequence=>390
,p_list_item_link_text=>'Inscripciones Pendientes'
,p_list_item_link_target=>'f?p=&APP_ID.:205:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(177039063352407854)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(187193947418518314)
,p_list_item_display_sequence=>441
,p_list_item_link_text=>unistr('Actualizaci\00F3n Contribuyente')
,p_list_item_link_target=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:207:P207_TIPO_INSCRIPCION:IVC:'
,p_parent_list_item_id=>wwv_flow_api.id(177039063352407854)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(181659093748187424)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Registro No Contribuyente'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(182579364102510478)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Ferias Internacionales'
,p_list_item_link_target=>'f?p=&APP_ID.:209:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181659093748187424)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'209,210'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(182894072070537686)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Funcionarios / Ex-Funcionarios'
,p_list_item_link_target=>'f?p=&APP_ID.:211:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181659093748187424)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'211,212'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(183046536242976931)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Concesiones Golfo de Papagayo'
,p_list_item_link_target=>'f?p=&APP_ID.:213:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181659093748187424)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'213,214'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(183143524219280436)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Alquiler-Propiedades ICT (Locales)'
,p_list_item_link_target=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181659093748187424)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'215,216'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(184558410033698811)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>unistr('Garant\00EDas de Cumplimiento')
,p_list_item_link_target=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181659093748187424)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(184461379389659200)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>unistr('Garant\00EDas de Participaci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:225:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181659093748187424)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(183500166903962659)
,p_list_item_display_sequence=>401
,p_list_item_link_text=>'Otros Entes externos'
,p_list_item_link_target=>'f?p=&APP_ID.:217:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181659093748187424)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'217,218'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(184164907256674276)
,p_list_item_display_sequence=>360
,p_list_item_link_text=>'Agencias de Viajes No Recaudaras de impuestos'
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(184410213675014213)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'Revisar Registro Agencia de Viajes'
,p_list_item_link_target=>'f?p=&APP_ID.:219:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(184164907256674276)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(184411310658031711)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>unistr('Inactivaci\00F3n Agencia de Viajes ')
,p_list_item_link_target=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(184164907256674276)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(189096804163932990)
,p_list_item_display_sequence=>481
,p_list_item_link_text=>unistr('Actualizaci\00F3n Contribuyente')
,p_list_item_link_target=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:207:P207_TIPO_INSCRIPCION:ANRI:'
,p_parent_list_item_id=>wwv_flow_api.id(184164907256674276)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(189361576441439922)
,p_list_item_display_sequence=>491
,p_list_item_link_text=>'Puestos Fronterizos'
,p_list_item_link_target=>'f?p=&APP_ID.:233:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'233,234'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(152067297489054371)
,p_list_item_display_sequence=>492
,p_list_item_link_text=>unistr('Ch\00E1rter Ocasional Terrestre')
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(152068647598036450)
,p_list_item_display_sequence=>811
,p_list_item_link_text=>unistr('Solicitud de Usuario y Contrase\00F1a')
,p_list_item_link_target=>'f?p=&APP_ID.:243:&SESSION.::&DEBUG.::P243_TIPO_CONTRIBUYENTE:8:'
,p_parent_list_item_id=>wwv_flow_api.id(152067297489054371)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'243'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(152480458191876028)
,p_list_item_display_sequence=>831
,p_list_item_link_text=>unistr('Declaraci\00F3n Jurada Pendiente')
,p_list_item_link_target=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.::P244_TIPO_CONTRIBUYENTE:8:'
,p_parent_list_item_id=>wwv_flow_api.id(152067297489054371)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'244'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(152679583910735506)
,p_list_item_display_sequence=>841
,p_list_item_link_text=>'Cartas al Registro Nacional'
,p_list_item_link_target=>'f?p=&APP_ID.:248:&SESSION.::&DEBUG.::P248_TIPO_CONTRIBUYENTE:8:'
,p_parent_list_item_id=>wwv_flow_api.id(152067297489054371)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'248'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(153982770956714924)
,p_list_item_display_sequence=>891
,p_list_item_link_text=>unistr('Actualizaci\00F3n de datos COT')
,p_list_item_link_target=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:207:P207_TIPO_INSCRIPCION:COT:'
,p_parent_list_item_id=>wwv_flow_api.id(152067297489054371)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'250'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(166909579843418062)
,p_list_item_display_sequence=>493
,p_list_item_link_text=>unistr('Gesti\00F3n Tr\00E1mite Terrestre Regular')
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(167313778956659297)
,p_list_item_display_sequence=>971
,p_list_item_link_text=>unistr('Declaraci\00F3n Jurada Pendiente')
,p_list_item_link_target=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.::P244_TIPO_CONTRIBUYENTE:4:'
,p_parent_list_item_id=>wwv_flow_api.id(166909579843418062)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(167616472352958042)
,p_list_item_display_sequence=>981
,p_list_item_link_text=>'Cartas al Registro Nacional'
,p_list_item_link_target=>'f?p=&APP_ID.:248:&SESSION.::&DEBUG.::P248_TIPO_CONTRIBUYENTE:4:'
,p_parent_list_item_id=>wwv_flow_api.id(166909579843418062)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(167967806381024051)
,p_list_item_display_sequence=>991
,p_list_item_link_text=>unistr('Actualizaci\00F3n de datos TTR')
,p_list_item_link_target=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.:207:P207_TIPO_INSCRIPCION:ITTR:'
,p_parent_list_item_id=>wwv_flow_api.id(166909579843418062)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(230687772880990426)
,p_list_item_display_sequence=>701
,p_list_item_link_text=>'Actualizaciones Pendientes'
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(185698561341458991)
,p_list_item_display_sequence=>431
,p_list_item_link_text=>'Registro o cambio de apoderados'
,p_list_item_link_target=>'f?p=&APP_ID.:231:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(230687772880990426)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'231'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(228059325820828409)
,p_list_item_display_sequence=>691
,p_list_item_link_text=>unistr('Actualizaci\00F3n Representante Legal')
,p_list_item_link_target=>'f?p=&APP_ID.:235:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(230687772880990426)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'235,236'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(230703068034599996)
,p_list_item_display_sequence=>711
,p_list_item_link_text=>unistr('Actualizaci\00F3n Tipo Impuesto')
,p_list_item_link_target=>'f?p=&APP_ID.:237:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(230687772880990426)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'237,238'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(255622779387232701)
,p_list_item_display_sequence=>761
,p_list_item_link_text=>unistr('Activaci\00F3n usuario externo')
,p_list_item_link_target=>'f?p=&APP_ID.:239:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'239'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(162828549822586697)
,p_list_item_display_sequence=>791
,p_list_item_link_text=>'Carga Documentos'
,p_list_item_link_target=>'f?p=&APP_ID.:152:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'152'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(188966777302645579)
,p_list_item_display_sequence=>1051
,p_list_item_link_text=>unistr('Envi\00F3 de contrase\00F1a')
,p_list_item_link_target=>'f?p=&APP_ID.:251:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(181657956979153991)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'251'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(162519071393196887)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Reportes'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(172314215192644150)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Reporte Movimientos Contribuyente'
,p_list_item_link_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_parent_list_item_id=>wwv_flow_api.id(162519071393196887)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'300'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(172323125035566414)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Reporte Movimientos No Contribuyente'
,p_list_item_link_target=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_parent_list_item_id=>wwv_flow_api.id(162519071393196887)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'301'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(188484053552593558)
,p_list_item_display_sequence=>451
,p_list_item_link_text=>'Inscripciones por estado'
,p_list_item_link_target=>'f?p=&APP_ID.:302:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(162519071393196887)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'302'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(188829315533042615)
,p_list_item_display_sequence=>452
,p_list_item_link_text=>'Des-inscripciones por estado'
,p_list_item_link_target=>'f?p=&APP_ID.:304:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(162519071393196887)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'304'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(188808173048960819)
,p_list_item_display_sequence=>461
,p_list_item_link_text=>unistr('Envi\00F3 correos usuarios externos')
,p_list_item_link_target=>'f?p=&APP_ID.:303:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(162519071393196887)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'303'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(196191308765170488)
,p_list_item_display_sequence=>681
,p_list_item_link_text=>unistr('Creaci\00F3n de usuarios externos')
,p_list_item_link_target=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(162519071393196887)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'305'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(156760465192865327)
,p_list_item_display_sequence=>911
,p_list_item_link_text=>unistr('Ch\00E1rter Ocasional Terrestre')
,p_parent_list_item_id=>wwv_flow_api.id(162519071393196887)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(156707230685855673)
,p_list_item_display_sequence=>901
,p_list_item_link_text=>'Reporte por entidad y id deudor'
,p_list_item_link_target=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.::P306_TIPO_CONTRIBUYENTE:8:'
,p_parent_list_item_id=>wwv_flow_api.id(156760465192865327)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'306'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(157635070219898155)
,p_list_item_display_sequence=>921
,p_list_item_link_text=>'Reporte cuenta por cobrar generadas'
,p_list_item_link_target=>'f?p=&APP_ID.:307:&SESSION.::&DEBUG.::P307_TIPO_CONTRIBUYENTE:8:'
,p_parent_list_item_id=>wwv_flow_api.id(156760465192865327)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'307,308'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(159254437680796270)
,p_list_item_display_sequence=>931
,p_list_item_link_text=>'Reporte por numero de oficio enviado al RN'
,p_list_item_link_target=>'f?p=&APP_ID.:309:&SESSION.::&DEBUG.::P309_TIPO_CONTRIBUYENTE:8:'
,p_parent_list_item_id=>wwv_flow_api.id(156760465192865327)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'309'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(163385826461714846)
,p_list_item_display_sequence=>941
,p_list_item_link_text=>'Reporte notificaciones efectuadas al RN'
,p_list_item_link_target=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.::P312_TIPO_CONTRIBUYENTE:8:'
,p_parent_list_item_id=>wwv_flow_api.id(156760465192865327)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'312'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(164221137664710826)
,p_list_item_display_sequence=>951
,p_list_item_link_text=>'Reporte Puesto Fronterizo'
,p_list_item_link_target=>'f?p=&APP_ID.:313:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(156760465192865327)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'313'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(169750677001950422)
,p_list_item_display_sequence=>1001
,p_list_item_link_text=>unistr('Tr\00E1mite Terrestre Regular')
,p_parent_list_item_id=>wwv_flow_api.id(162519071393196887)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(169751012127955809)
,p_list_item_display_sequence=>1011
,p_list_item_link_text=>'Reporte cuenta por cobrar generadas'
,p_list_item_link_target=>'f?p=&APP_ID.:307:&SESSION.::&DEBUG.::P307_TIPO_CONTRIBUYENTE:17:'
,p_parent_list_item_id=>wwv_flow_api.id(169750677001950422)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(169751358761961536)
,p_list_item_display_sequence=>1021
,p_list_item_link_text=>'Reporte por numero de oficio enviado al RN'
,p_list_item_link_target=>'f?p=&APP_ID.:309:&SESSION.::&DEBUG.::P309_TIPO_CONTRIBUYENTE:17:'
,p_parent_list_item_id=>wwv_flow_api.id(169750677001950422)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(171585858556819810)
,p_list_item_display_sequence=>1031
,p_list_item_link_text=>unistr('Reporte por n\00FAmero de tr\00E1mite')
,p_list_item_link_target=>'f?p=&APP_ID.:306:&SESSION.::&DEBUG.::P306_TIPO_CONTRIBUYENTE:17:'
,p_parent_list_item_id=>wwv_flow_api.id(169750677001950422)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(172092452888068688)
,p_list_item_display_sequence=>1041
,p_list_item_link_text=>'Reporte notificaciones efectuadas al RN'
,p_list_item_link_target=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.::P312_TIPO_CONTRIBUYENTE:17:'
,p_parent_list_item_id=>wwv_flow_api.id(169750677001950422)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(181125826558784842)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Consultas'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>unistr('Bit\00E1cora par\00E1metros ')
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_api.id(181125826558784842)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(181130244690053518)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Venta')
,p_list_item_link_target=>'f?p=&APP_ID.:400:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'400'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(182067647256856210)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Tel\00E9fono')
,p_list_item_link_target=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'401'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(182551057621241010)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Requisito ')
,p_list_item_link_target=>'f?p=&APP_ID.:402:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(183070902804512925)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Modalidad')
,p_list_item_link_target=>'f?p=&APP_ID.:403:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'403'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>5801312104779619
,p_default_application_id=>100
,p_default_id_offset=>149120778489414042
,p_default_owner=>'DESA_SIT'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(183244553478224931)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Apoderado')
,p_list_item_link_target=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'404'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(183345541985873708)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Identificaci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:405:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'405'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(183412451990960076)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Puesto Fronterizo')
,p_list_item_link_target=>'f?p=&APP_ID.:406:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'406'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(183508165879025421)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Contribuyente')
,p_list_item_link_target=>'f?p=&APP_ID.:407:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'407'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(183687879542838690)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Ente')
,p_list_item_link_target=>'f?p=&APP_ID.:408:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(183693292163110723)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Local')
,p_list_item_link_target=>'f?p=&APP_ID.:409:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'409'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(183853554502591900)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Empleado')
,p_list_item_link_target=>'f?p=&APP_ID.:410:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'410'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190033258145476849)
,p_list_item_display_sequence=>501
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Correo')
,p_list_item_link_target=>'f?p=&APP_ID.:411:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'411'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190059405797604169)
,p_list_item_display_sequence=>511
,p_list_item_link_text=>unistr('Bit\00E1cora encargado correos')
,p_list_item_link_target=>'f?p=&APP_ID.:412:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'412'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190079641690720149)
,p_list_item_display_sequence=>521
,p_list_item_link_text=>unistr('Bit\00E1cora tipo solicitud')
,p_list_item_link_target=>'f?p=&APP_ID.:413:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'413'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(194666526275884197)
,p_list_item_display_sequence=>671
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Recomendaci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:441:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'441'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(247392834688601871)
,p_list_item_display_sequence=>731
,p_list_item_link_text=>unistr('Bit\00E1cora Tipo Noticia')
,p_list_item_link_target=>'f?p=&APP_ID.:442:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'442'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(247463243539950602)
,p_list_item_display_sequence=>751
,p_list_item_link_text=>unistr('Bit\00E1cora Noticias SIT')
,p_list_item_link_target=>'f?p=&APP_ID.:443:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'443'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(152700153247563604)
,p_list_item_display_sequence=>851
,p_list_item_link_text=>unistr('Bit\00E1cora Oficina Regional RN')
,p_list_item_link_target=>'f?p=&APP_ID.:452:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'452'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(152718740180992105)
,p_list_item_display_sequence=>871
,p_list_item_link_text=>unistr('Bit\00E1cora Roles Sit')
,p_list_item_link_target=>'f?p=&APP_ID.:454:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'454'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(152730429735962614)
,p_list_item_display_sequence=>881
,p_list_item_link_text=>unistr('Bit\00E1cora Roles Usuario')
,p_list_item_link_target=>'f?p=&APP_ID.:455:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(181126162983798579)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'455'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_display_sequence=>531
,p_list_item_link_text=>unistr('Bit\00E1coras Procesos')
,p_parent_list_item_id=>wwv_flow_api.id(181125826558784842)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190103827739446566)
,p_list_item_display_sequence=>541
,p_list_item_link_text=>unistr('Bit\00E1cora inscripci\00F3n regular')
,p_list_item_link_target=>'f?p=&APP_ID.:414:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'414'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190243005235527323)
,p_list_item_display_sequence=>542
,p_list_item_link_text=>unistr('Bit\00E1cora Inscripci\00F3n Vuelos Ch\00E1rter')
,p_list_item_link_target=>'f?p=&APP_ID.:416:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'416'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190249318067542861)
,p_list_item_display_sequence=>543
,p_list_item_link_text=>unistr('Bit\00E1cora Inscripci\00F3n Agencia no recaudadora de impuestos')
,p_list_item_link_target=>'f?p=&APP_ID.:417:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'417'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190204571660512768)
,p_list_item_display_sequence=>551
,p_list_item_link_text=>unistr('Bit\00E1cora Maestro Contribuyente')
,p_list_item_link_target=>'f?p=&APP_ID.:415:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'415'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190400099569171077)
,p_list_item_display_sequence=>561
,p_list_item_link_text=>unistr('Bit\00E1cora Hoteles')
,p_list_item_link_target=>'f?p=&APP_ID.:418:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'418'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190410247075204257)
,p_list_item_display_sequence=>571
,p_list_item_link_text=>unistr('Bit\00E1cora Puesto Fronterizo')
,p_list_item_link_target=>'f?p=&APP_ID.:419:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'419'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190418574574215679)
,p_list_item_display_sequence=>581
,p_list_item_link_text=>unistr('Bit\00E1cora Ferias Internacionales')
,p_list_item_link_target=>'f?p=&APP_ID.:420:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'420'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190429175504241639)
,p_list_item_display_sequence=>591
,p_list_item_link_text=>unistr('Bit\00E1cora Funcionarios / Ex Funcionarios')
,p_list_item_link_target=>'f?p=&APP_ID.:421:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'421'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190438355405282210)
,p_list_item_display_sequence=>601
,p_list_item_link_text=>unistr('Bit\00E1cora Concesiones Golfo de Papagayo')
,p_list_item_link_target=>'f?p=&APP_ID.:422:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'422'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190447462482338435)
,p_list_item_display_sequence=>611
,p_list_item_link_text=>unistr('Bit\00E1cora Alquileres Propiedades ICT (Locales)')
,p_list_item_link_target=>'f?p=&APP_ID.:423:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'423'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190456472570349931)
,p_list_item_display_sequence=>621
,p_list_item_link_text=>unistr('Bit\00E1cora Garant\00EDas de cumplimiento')
,p_list_item_link_target=>'f?p=&APP_ID.:424:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'424'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190465440073364811)
,p_list_item_display_sequence=>631
,p_list_item_link_text=>unistr('Bit\00E1cora Garant\00EDas de participaci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:425:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'425'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(190475971039142921)
,p_list_item_display_sequence=>641
,p_list_item_link_text=>unistr('Bit\00E1cora Otros Entes Externos')
,p_list_item_link_target=>'f?p=&APP_ID.:426:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'426'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(263228293184166058)
,p_list_item_display_sequence=>771
,p_list_item_link_text=>unistr('Bit\00E1cora Comprueba Requisitos')
,p_list_item_link_target=>'f?p=&APP_ID.:444:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'444'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(263828340682071253)
,p_list_item_display_sequence=>781
,p_list_item_link_text=>unistr('Bit\00E1cora Solicitud Des-inscripci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:445:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'445'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(152711955382021903)
,p_list_item_display_sequence=>861
,p_list_item_link_text=>unistr('Bit\00E1cora Carga Documentos')
,p_list_item_link_target=>'f?p=&APP_ID.:453:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_api.id(190103273434204554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'453'
);
wwv_flow_api.component_end;
end;
/
