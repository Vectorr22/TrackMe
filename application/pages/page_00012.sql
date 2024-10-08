prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38419846911979311924
,p_default_application_id=>227469
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEERCODERS'
);
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Habitos'
,p_alias=>'HABITOS'
,p_step_title=>'Habitos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(38726928496604901883)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38908015699671215499)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(38727017526481901924)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(38726901807721901869)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(38727080323428901954)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38908016410390215501)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(38908015699671215499)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(38726939906486901889)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(38908016331597215501)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(38908016331597215501)
,p_name=>'Search Results'
,p_template=>wwv_flow_imp.id(38727005199099901918)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT h.Habito_ID, h.Nombre_Habito, h.Frecuencia, c.Nombre_Categoria',
'FROM Habitos h',
'JOIN Categorias c ON h.Categoria_ID = c.Categoria_ID',
'WHERE h.Usuario_ID = 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(38727043556981901936)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38908018799091215504)
,p_query_column_id=>1
,p_column_alias=>'HABITO_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Habito Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38908019130903215504)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_HABITO'
,p_column_display_sequence=>2
,p_column_heading=>'Nombre Habito'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38908019529823215505)
,p_query_column_id=>3
,p_column_alias=>'FRECUENCIA'
,p_column_display_sequence=>3
,p_column_heading=>'Frecuencia'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38908019965526215505)
,p_query_column_id=>4
,p_column_alias=>'NOMBRE_CATEGORIA'
,p_column_display_sequence=>4
,p_column_heading=>'Nombre Categoria'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38908016963168215502)
,p_name=>'P12_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38908016410390215501)
,p_prompt=>'Search'
,p_source=>'NOMBRE_HABITO,FRECUENCIA,NOMBRE_CATEGORIA'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_attribute_04=>'N'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38908017364836215502)
,p_name=>'P12_NOMBRE_HABITO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38908016410390215501)
,p_prompt=>'Habit Name'
,p_source=>'NOMBRE_HABITO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38908017702313215503)
,p_name=>'P12_FRECUENCIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38908016410390215501)
,p_prompt=>'Frecuencia'
,p_source=>'FRECUENCIA'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attribute_01=>'1'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38908018109013215503)
,p_name=>'P12_NOMBRE_CATEGORIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38908016410390215501)
,p_prompt=>'Nombre Categoria'
,p_source=>'NOMBRE_CATEGORIA'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attribute_01=>'1'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>false
,p_fc_actions_filter=>true
,p_fc_toggleable=>false
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp.component_end;
end;
/
