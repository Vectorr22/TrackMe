prompt --application/shared_components/security/authentications/loginchido
begin
--   Manifest
--     AUTHENTICATION: Loginchido
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38419846911979311924
,p_default_application_id=>227469
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEERCODERS'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(38918375945271171138)
,p_name=>'Loginchido'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'LOGIN'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15569863905058
);
wwv_flow_imp.component_end;
end;
/
