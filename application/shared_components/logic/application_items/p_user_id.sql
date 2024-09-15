prompt --application/shared_components/logic/application_items/p_user_id
begin
--   Manifest
--     APPLICATION ITEM: P_USER_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38419846911979311924
,p_default_application_id=>227469
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEERCODERS'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(38762057829230503860)
,p_name=>'P_USER_ID'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Almacena el ID del usuario logueado para su uso en las p\00E1ginas de la aplicaci\00F3n.'),
''))
,p_version_scn=>15569466106054
);
wwv_flow_imp.component_end;
end;
/
