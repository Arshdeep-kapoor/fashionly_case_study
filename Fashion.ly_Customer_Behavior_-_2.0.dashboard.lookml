- dashboard: fashion_ly_customer_behavior___2_0
  title: Fashion.ly Customer Behavior - 2.0
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: JySPlOwXLZ5beXjO1kJUMe
  elements:
  - title: Monthly Revenue Breakdown by Customer Lifetime Revenue
    name: Monthly Revenue Breakdown by Customer Lifetime Revenue
    model: arsh_case_study
    explore: customer_lifetime_orders
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [order_items.created_month, customer_lifetime_orders.user_buckets, customer_lifetime_orders.user_total_revenue]
    filters:
      order_items.created_date: 12 months ago for 12 months
    sorts: [customer_lifetime_orders.user_buckets, order_items.created_month]
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    label_type: name_value
    show_null_points: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: belding
      palette_id: belding-sequential-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: Below 1 - 0 - customer_lifetime_orders.user_total_revenue,
            id: Below 1 - 0 - customer_lifetime_orders.user_total_revenue, name: Below
              1}, {axisId: 1 - 1 - customer_lifetime_orders.user_total_revenue, id: 1
              - 1 - customer_lifetime_orders.user_total_revenue, name: '1'}, {axisId: 2
              - 2 - customer_lifetime_orders.user_total_revenue, id: 2 - 2 - customer_lifetime_orders.user_total_revenue,
            name: '2'}, {axisId: 3 to 5 - 3 - customer_lifetime_orders.user_total_revenue,
            id: 3 to 5 - 3 - customer_lifetime_orders.user_total_revenue, name: 3
              to 5}, {axisId: 6 to 9 - 4 - customer_lifetime_orders.user_total_revenue,
            id: 6 to 9 - 4 - customer_lifetime_orders.user_total_revenue, name: 6
              to 9}, {axisId: 10 or Above - 5 - customer_lifetime_orders.user_total_revenue,
            id: 10 or Above - 5 - customer_lifetime_orders.user_total_revenue, name: 10
              or Above}], showLabels: true, showValues: true, valueFormat: '', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: false
    series_types: {}
    series_colors: {}
    x_axis_datetime_label: ''
    interpolation: linear
    value_labels: labels
    inner_radius: 50
    defaults_version: 0
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Brand: products.brand
      Is Active (Yes / No): customer_lifetime_orders.is_active
      Product Category: customer_lifetime_orders.product_category
    row: 10
    col: 0
    width: 24
    height: 9
  - title: Distribution by Number of Orders
    name: Distribution by Number of Orders
    model: arsh_case_study
    explore: customer_lifetime_orders
    type: looker_pie
    fields: [customer_lifetime_orders.user_buckets, customer_lifetime_orders.count]
    sorts: [customer_lifetime_orders.user_buckets]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: labels
    label_type: lab
    inner_radius: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Brand: products.brand
      Is Active (Yes / No): customer_lifetime_orders.is_active
      Is Repeat Customer (Yes / No): customer_lifetime_orders.is_repeat_customer
      Created Date: order_items.created_date
      Product Category: customer_lifetime_orders.product_category
    row: 34
    col: 16
    width: 8
    height: 7
  - title: Lifetime Revenue & Orders Distribution
    name: Lifetime Revenue & Orders Distribution
    model: arsh_case_study
    explore: customer_lifetime_orders
    type: looker_column
    fields: [customer_lifetime_orders.user_revenue_buckets, customer_lifetime_orders.count,
      order_items.total_gross_revenue]
    sorts: [customer_lifetime_orders.user_revenue_buckets]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: customer_lifetime_orders.count,
            id: customer_lifetime_orders.count, name: Customer Lifetime Orders}],
        showLabels: true, showValues: true, valueFormat: "#,##0", unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: order_items.total_gross_revenue, id: order_items.total_gross_revenue,
            name: Total Gross Revenue}], showLabels: true, showValues: true, valueFormat: "#,##0",
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '12'
    label_value_format: ''
    series_types: {}
    series_colors:
      customer_lifetime_orders.count: "#08B248"
      order_items.total_gross_revenue: "#3D52B9"
    series_labels: {}
    show_dropoff: true
    bar_arm_length: 25
    bar_arm_weight: 50
    bar_spinner_length: 100
    bar_spinner_weight: 50
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Brand: products.brand
      Is Active (Yes / No): customer_lifetime_orders.is_active
      Is Repeat Customer (Yes / No): customer_lifetime_orders.is_repeat_customer
      Created Date: order_items.created_date
      Product Category: customer_lifetime_orders.product_category
    row: 3
    col: 0
    width: 24
    height: 7
  - title: Average Lifetime Spend
    name: Average Lifetime Spend
    model: arsh_case_study
    explore: customer_lifetime_orders
    type: single_value
    fields: [customer_lifetime_orders.avg_user_lifetime_spend, order_items.created_year]
    fill_fields: [order_items.created_year]
    sorts: [order_items.created_year desc]
    limit: 2
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#62bad9",
        font_color: !!null '', color_application: {collection_id: belding, palette_id: belding-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [order_items.created_year]
    y_axes: []
    listen:
      Brand: products.brand
      Is Active (Yes / No): customer_lifetime_orders.is_active
      Is Repeat Customer (Yes / No): customer_lifetime_orders.is_repeat_customer
      Product Category: customer_lifetime_orders.product_category
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Revenue Distribution by Gender and Age Tiers
    name: Revenue Distribution by Gender and Age Tiers
    model: arsh_case_study
    explore: customer_lifetime_orders
    type: looker_bar
    fields: [users.age_tier, users.gender, customer_lifetime_orders.user_total_revenue]
    pivots: [users.gender]
    fill_fields: [users.age_tier]
    sorts: [users.gender, users.age_tier]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: belding
      palette_id: belding-sequential-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: F - customer_lifetime_orders.user_total_revenue,
            id: F - customer_lifetime_orders.user_total_revenue, name: F}, {axisId: M
              - customer_lifetime_orders.user_total_revenue, id: M - customer_lifetime_orders.user_total_revenue,
            name: M}], showLabels: true, showValues: true, valueFormat: "$#,##0",
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: "$#,##0"
    series_types: {}
    x_axis_datetime_label: ''
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#62bad9",
        font_color: !!null '', color_application: {collection_id: belding, palette_id: belding-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    hidden_fields: []
    listen:
      Brand: products.brand
      Is Active (Yes / No): customer_lifetime_orders.is_active
      Is Repeat Customer (Yes / No): customer_lifetime_orders.is_repeat_customer
      Created Date: order_items.created_date
      Product Category: customer_lifetime_orders.product_category
    row: 19
    col: 0
    width: 15
    height: 7
  - title: Repetitive Customer Distribution by Category
    name: Repetitive Customer Distribution by Category
    model: arsh_case_study
    explore: customer_lifetime_orders
    type: looker_bar
    fields: [customer_lifetime_orders.count, customer_lifetime_orders.is_repeat_customer,
      products.category]
    pivots: [customer_lifetime_orders.is_repeat_customer]
    fill_fields: [customer_lifetime_orders.is_repeat_customer]
    sorts: [customer_lifetime_orders.count desc 1, customer_lifetime_orders.is_repeat_customer]
    limit: 10
    dynamic_fields: [{category: table_calculation, expression: 'if(${customer_lifetime_orders.is_repeat_customer},${customer_lifetime_orders.count},
          -1*${customer_lifetime_orders.count})', label: LifeTime Orders, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: lifetime_orders,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: belding
      palette_id: belding-diverging-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: No - lifetime_orders,
            id: No - lifetime_orders, name: 'No'}, {axisId: Yes - lifetime_orders,
            id: Yes - lifetime_orders, name: 'Yes'}], showLabels: true, showValues: true,
        maxValue: 2500, minValue: -2500, valueFormat: "#,##0;#,##0", unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: "#,##0;#,##0"
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#62bad9",
        font_color: !!null '', color_application: {collection_id: belding, palette_id: belding-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    hidden_fields: [customer_lifetime_orders.count]
    listen:
      Brand: products.brand
      Is Active (Yes / No): customer_lifetime_orders.is_active
      Created Date: order_items.created_date
      Product Category: customer_lifetime_orders.product_category
    row: 34
    col: 0
    width: 16
    height: 7
  - title: Total Orders Placed
    name: Total Orders Placed
    model: arsh_case_study
    explore: customer_lifetime_orders
    type: single_value
    fields: [customer_lifetime_orders.count]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#62bad9",
        font_color: !!null '', color_application: {collection_id: belding, palette_id: belding-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Brand: products.brand
      Is Active (Yes / No): customer_lifetime_orders.is_active
      Is Repeat Customer (Yes / No): customer_lifetime_orders.is_repeat_customer
      Created Date: order_items.created_date
      Product Category: customer_lifetime_orders.product_category
    row: 0
    col: 6
    width: 6
    height: 3
  - title: Total Gross Revenue
    name: Total Gross Revenue
    model: arsh_case_study
    explore: customer_lifetime_orders
    type: single_value
    fields: [order_items.total_gross_revenue]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#62bad9",
        font_color: !!null '', color_application: {collection_id: belding, palette_id: belding-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Brand: products.brand
      Is Active (Yes / No): customer_lifetime_orders.is_active
      Is Repeat Customer (Yes / No): customer_lifetime_orders.is_repeat_customer
      Created Date: order_items.created_date
      Product Category: customer_lifetime_orders.product_category
    row: 0
    col: 12
    width: 7
    height: 3
  - title: Customer Distribution by Traffic Source and Active
    name: Customer Distribution by Traffic Source and Active
    model: arsh_case_study
    explore: customer_lifetime_orders
    type: looker_grid
    fields: [users.traffic_source, users.count, customer_lifetime_orders.is_active]
    pivots: [customer_lifetime_orders.is_active]
    fill_fields: [customer_lifetime_orders.is_active]
    sorts: [users.count desc 0, customer_lifetime_orders.is_active desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{args: [users.count], calculation_type: percent_of_column_sum,
        category: table_calculation, based_on: users.count, label: Percent of Users
          Count, source_field: users.count, table_calculation: percent_of_users_count,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {args: [users.count], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: users.count, label: Percent change
          from previous - Users Count, source_field: users.count, table_calculation: percent_change_from_previous_users_count,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {args: [users.count], calculation_type: percent_of_row,
        category: table_calculation, based_on: users.count, label: Percent of row,
        source_field: users.count, table_calculation: percent_of_row, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number, is_disabled: true},
      {args: [users.count], calculation_type: percent_of_column_sum, category: table_calculation,
        based_on: users.count, label: Percent of Users Count, source_field: users.count,
        table_calculation: percent_of_users_count_2, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number, is_disabled: true}, {category: table_calculation,
        label: Percent of Users Count, value_format: !!null '', value_format_name: percent_2,
        calculation_type: percent_of_column_sum, table_calculation: percent_of_users_count_1,
        args: [users.count], _kind_hint: measure, _type_hint: number, is_disabled: true},
      {category: table_calculation, label: Percent of Users Count, value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_of_column_sum, table_calculation: percent_of_users_count_3,
        args: [users.count], _kind_hint: measure, _type_hint: number, is_disabled: true},
      {category: table_calculation, label: Percent of row, value_format: !!null '',
        value_format_name: percent_2, calculation_type: percent_of_row, table_calculation: percent_of_row_1,
        args: [users.count], _kind_hint: measure, _type_hint: number}]
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: belding
      palette_id: belding-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      customer_lifetime_orders.is_active: Active Customers
      percent_of_users_count_3: "% of users"
      percent_of_row_1: "% of users"
    series_cell_visualizations:
      users.count:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      No - users.count: "#65b3ff"
      Yes - users.count: "#c140ff"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: [users.count]
    hidden_points_if_no: []
    y_axes: []
    listen:
      Brand: products.brand
      Is Repeat Customer (Yes / No): customer_lifetime_orders.is_repeat_customer
      Product Category: customer_lifetime_orders.product_category
    row: 19
    col: 15
    width: 9
    height: 7
  - title: Revenue over Period of Time
    name: Revenue over Period of Time
    model: arsh_case_study
    explore: order_items
    type: looker_line
    fields: [order_items.total_gross_revenue, order_items.created_year, order_items.created_month_name]
    pivots: [order_items.created_year]
    fill_fields: [order_items.created_month_name, order_items.created_year]
    sorts: [order_items.created_year, order_items.created_month_name]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: fashionly
      palette_id: fashionly-categorical-0
      options:
        steps: 5
    label_value_format: "$#,##0"
    series_colors:
      2021 - order_items.total_gross_revenue: "#a8a116"
      2020 - order_items.total_gross_revenue: "#b82c95"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 26
    col: 0
    width: 24
    height: 8
  - title: New Users
    name: New Users
    model: arsh_case_study
    explore: order_items
    type: single_value
    fields: [users.count]
    filters:
      users.days_since_signup: '1'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#62bad9",
        font_color: !!null '', color_application: {collection_id: belding, palette_id: belding-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 19
    width: 5
    height: 3
  filters:
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: this year to second
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: arsh_case_study
    explore: customer_lifetime_orders
    listens_to_filters: []
    field: order_items.created_date
  - name: Is Active (Yes / No)
    title: Is Active (Yes / No)
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: arsh_case_study
    explore: customer_lifetime_orders
    listens_to_filters: []
    field: customer_lifetime_orders.is_active
  - name: Is Repeat Customer (Yes / No)
    title: Is Repeat Customer (Yes / No)
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: arsh_case_study
    explore: customer_lifetime_orders
    listens_to_filters: []
    field: customer_lifetime_orders.is_repeat_customer
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: arsh_case_study
    explore: customer_lifetime_orders
    listens_to_filters: []
    field: products.brand
  - name: Product Category
    title: Product Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: arsh_case_study
    explore: customer_lifetime_orders
    listens_to_filters: []
    field: customer_lifetime_orders.product_category
