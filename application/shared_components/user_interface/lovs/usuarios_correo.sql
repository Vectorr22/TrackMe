prompt --application/shared_components/user_interface/lovs/usuarios_correo
begin
--   Manifest
--     USUARIOS.CORREO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38419846911979311924
,p_default_application_id=>227469
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEERCODERS'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(38925173201766416057)
,p_lov_name=>'USUARIOS.CORREO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USUARIOS'
,p_return_column_name=>'USUARIO_ID'
,p_display_column_name=>'CORREO'
,p_default_sort_column_name=>'CORREO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15569866617183
);
wwv_flow_imp.component_end;
end;
/
