- dashboard: superstore__row_level_oauth_example
  title: Superstore - Row Level OAuth Example
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Sales by Region/Email
    name: Sales by Region/Email
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_grid
    fields: [orders_analysis.region, orders_analysis.email, sum_of_sales]
    sorts: [sum_of_sales desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_sales, based_on: orders_analysis.sales, expression: '',
        label: Sum of Sales, type: sum, _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    stacking: ''
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
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 0
    col: 0
    width: 12
    height: 4
  - title: Top Product Sales
    name: Top Product Sales
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_grid
    fields: [orders_analysis.region, orders_analysis.product_name, orders_analysis.email,
      orders_analysis.total_sales]
    limit: 500
    dynamic_fields: [{measure: sum_of_sales, based_on: orders_analysis.sales, expression: '',
        label: Sum of Sales, type: sum, _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    stacking: ''
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
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 4
    col: 0
    width: 12
    height: 7
  - title: Sales by Week segmented by email
    name: Sales by Week segmented by email
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_column
    fields: [orders_analysis.email, sum_of_sales, order_date.year_month]
    pivots: [orders_analysis.email]
    sorts: [orders_analysis.email, order_date.year_month]
    limit: 500
    dynamic_fields: [{measure: sum_of_sales, based_on: orders_analysis.sales, expression: '',
        label: Sum of Sales, type: sum, _kind_hint: measure, _type_hint: number}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    series_types: {}
    series_colors: {}
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
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 0
    col: 12
    width: 12
    height: 11
  - title: Business Channel YTD Quotes
    name: Business Channel YTD Quotes
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_bar
    fields: [orders_analysis.total_sales, orders_analysis.category, orders_analysis.total_sales_2,
      orders_analysis.total_sales_3]
    sorts: [orders_analysis.total_sales desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_sales, based_on: orders_analysis.sales, expression: '',
        label: Sum of Sales, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_profit, based_on: orders_analysis.profit, expression: '', label: Sum
          of Profit, type: sum, _kind_hint: measure, _type_hint: number}, {measure: sum_of_quantity,
        based_on: orders_analysis.quantity, expression: '', label: Sum of Quantity,
        type: sum, _kind_hint: measure, _type_hint: number}, {category: table_calculation,
        expression: 'if(${orders_analysis.category} = "Technology", ${orders_analysis.total_sales},null)',
        label: Total Sales Pos, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: total_sales_pos, _type_hint: number},
      {category: table_calculation, expression: 'if(${orders_analysis.category} !=
          "Technology", ${orders_analysis.total_sales},null)', label: Total Sales
          Neg, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: total_sales_neg, _type_hint: number}]
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
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: !!null '', orientation: bottom, series: [{axisId: total_sales_pos,
            id: total_sales_pos, name: Total Sales Pos}, {axisId: total_sales_neg,
            id: total_sales_neg, name: Total Sales Neg}, {axisId: orders_analysis.total_sales_2,
            id: orders_analysis.total_sales_2, name: Total Sales 2}, {axisId: orders_analysis.total_sales_3,
            id: orders_analysis.total_sales_3, name: Total Sales 3}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    font_size: '12'
    series_types:
      orders_analysis.total_sales_2: scatter
      orders_analysis.total_sales_3: scatter
    series_colors:
      total_sales_pos: "#3D52B9"
      total_sales_neg: "#FC9200"
      orders_analysis.total_sales_2: "#bab5b5"
      orders_analysis.total_sales_3: "#000000"
    series_labels:
      orders_analysis.total_sales_2: Last Year
      orders_analysis.total_sales_3: Plan
      total_sales_pos: Total Sales (Above Plan)
      total_sales_neg: Total Sales (Below Plan)
    bar_arm_length: 33.5
    bar_arm_weight: 61
    bar_spinner_length: 152
    bar_spinner_weight: 83
    bar_style: vertical
    bar_value_label_type: dim
    bar_value_formatting: ''
    bar_value_label_override: ''
    bar_value_label_padding: 63
    bar_target_source: second
    bar_target_label_type: value
    bar_target_label_override: ''
    bar_target_value_override: ''
    circleThickness: 0.5
    circleFillGap: 0.5
    waveHeight: 0.5
    waveCount: 5
    waveRiseTime: 2500
    waveAnimateTime: 2501
    waveOffset: 0.5
    textVertPosition: 0.5
    textSize: 0.5
    arm_length: 26
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_label_type: none
    value_label_font: 12
    value_label_padding: 62
    target_source: first
    target_label_type: both
    target_label_font: 3
    label_font_size: 3
    spinner_type: needle
    fill_color: "#5d7fc8"
    background_color: "#5d7fc8"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress-gradient
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_cols: 2
    angle: 83
    cutout: 50
    range_x: 1.5
    range_y: 1
    target_label_padding: 1.5
    hidden_fields: [orders_analysis.total_sales]
    hidden_points_if_no: []
    defaults_version: 1
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Orders Analysis Total Sales
        label_from_parameter:
        label_short: Total Sales
        map_layer:
        name: orders_analysis.total_sales
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Sales
        measure: true
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.total_sales
        suggest_explore: orders_analysis
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=110"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${sales} "
        sql_case:
        filters:
        sorted:
          desc: true
          sort_index: 0
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Orders Analysis Total Sales 2
        label_from_parameter:
        label_short: Total Sales 2
        map_layer:
        name: orders_analysis.total_sales_2
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Sales 2
        measure: true
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.total_sales_2
        suggest_explore: orders_analysis
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=116"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${sales} * 1.1"
        sql_case:
        filters:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Orders Analysis Total Sales 3
        label_from_parameter:
        label_short: Total Sales 3
        map_layer:
        name: orders_analysis.total_sales_3
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Sales 3
        measure: true
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.total_sales_3
        suggest_explore: orders_analysis
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=122"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${sales} * 1.2"
        sql_case:
        filters:
      dimensions:
      - align: left
        can_filter: true
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Orders Analysis Category
        label_from_parameter:
        label_short: Category
        map_layer:
        name: orders_analysis.category
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Category
        measure: false
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.category
        suggest_explore: orders_analysis
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=4"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${TABLE}.Category "
        sql_case:
        filters:
        sorted:
          desc: false
          sort_index: 1
      table_calculations: []
      pivots: []
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 14
    col: 13
    width: 11
    height: 7
  - title: MTD
    name: MTD
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.month_to_date_sales]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bab9b7",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 14
    col: 0
    width: 3
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 11
    col: 0
    width: 24
    height: 3
  - title: Plan
    name: Plan
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.month_to_date_sales_vs_plan_diff, orders_analysis.month_to_date_sales_vs_plan]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    comparison_label: ''
    conditional_formatting: [{type: greater than, value: 0, background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC9200",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 16
    col: 0
    width: 3
    height: 2
  - title: Prior
    name: Prior
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.month_over_month_sales_diff, orders_analysis.month_over_month_sales_pdiff,
      orders_analysis.prior_month_to_date_sales, orders_analysis.month_to_date_sales]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    comparison_label: _
    conditional_formatting: [{type: greater than, value: 0, background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC9200",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [orders_analysis.month_to_date_sales, orders_analysis.prior_month_to_date_sales]
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 18
    col: 0
    width: 3
    height: 2
  - title: Forecast
    name: Forecast
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.month_to_date_sales_vs_forecast_diff, orders_analysis.month_to_date_sales_vs_forecast,
      orders_analysis.month_to_date_forecast]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    comparison_label: _
    conditional_formatting: [{type: greater than, value: 0, background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC9200",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [orders_analysis.month_to_date_forecast]
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 20
    col: 0
    width: 3
    height: 2
  - title: Month to Date
    name: Month to Date
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_bar
    fields: [orders_analysis.month_to_date_sales, orders_analysis.month_to_date_plan,
      orders_analysis.prior_month_to_date_sales, orders_analysis.month_to_date_forecast]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: orders_analysis.month_to_date_sales,
            id: orders_analysis.month_to_date_sales, name: Month to Date Sales}, {
            axisId: orders_analysis.month_to_date_plan, id: orders_analysis.month_to_date_plan,
            name: Month to Date Plan}, {axisId: orders_analysis.prior_month_to_date_sales,
            id: orders_analysis.prior_month_to_date_sales, name: Prior Month to Date
              Sales}, {axisId: orders_analysis.month_to_date_forecast, id: orders_analysis.month_to_date_forecast,
            name: Month to Date Forecast}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      orders_analysis.month_to_date_plan: "#FC9200"
      orders_analysis.prior_month_to_date_sales: "#b5afab"
      orders_analysis.month_to_date_forecast: "#000000"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: _
    conditional_formatting: [{type: greater than, value: 0, background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC9200",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: []
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 30
    col: 0
    width: 6
    height: 8
  - title: State YTD Quotes
    name: State YTD Quotes
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_bar
    fields: [orders_analysis.total_sales, orders_analysis.total_sales_2, orders_analysis.total_sales_3,
      orders_analysis.state]
    sorts: [orders_analysis.total_sales desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_sales, based_on: orders_analysis.sales, expression: '',
        label: Sum of Sales, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_profit, based_on: orders_analysis.profit, expression: '', label: Sum
          of Profit, type: sum, _kind_hint: measure, _type_hint: number}, {measure: sum_of_quantity,
        based_on: orders_analysis.quantity, expression: '', label: Sum of Quantity,
        type: sum, _kind_hint: measure, _type_hint: number}, {category: table_calculation,
        expression: 'if(${orders_analysis.state} = "California", ${orders_analysis.total_sales},null)',
        label: Total Sales Pos, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: total_sales_pos, _type_hint: number},
      {category: table_calculation, expression: 'if(${orders_analysis.state} != "California",
          ${orders_analysis.total_sales},null)', label: Total Sales Neg, value_format: !!null '',
        value_format_name: usd_0, _kind_hint: measure, table_calculation: total_sales_neg,
        _type_hint: number}]
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
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: false
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
    y_axes: [{label: !!null '', orientation: bottom, series: [{axisId: total_sales_pos,
            id: total_sales_pos, name: Total Sales Pos}, {axisId: total_sales_neg,
            id: total_sales_neg, name: Total Sales Neg}, {axisId: orders_analysis.total_sales_2,
            id: orders_analysis.total_sales_2, name: Total Sales 2}, {axisId: orders_analysis.total_sales_3,
            id: orders_analysis.total_sales_3, name: Total Sales 3}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    font_size: '12'
    series_types:
      orders_analysis.total_sales_2: scatter
      orders_analysis.total_sales_3: scatter
    series_colors:
      total_sales_pos: "#3D52B9"
      total_sales_neg: "#FC9200"
      orders_analysis.total_sales_2: "#bab5b5"
      orders_analysis.total_sales_3: "#000000"
    series_labels:
      orders_analysis.total_sales_2: Last Year
      orders_analysis.total_sales_3: Plan
      total_sales_pos: Total Sales (Above Plan)
      total_sales_neg: Total Sales (Below Plan)
    bar_arm_length: 33.5
    bar_arm_weight: 61
    bar_spinner_length: 152
    bar_spinner_weight: 83
    bar_style: vertical
    bar_value_label_type: dim
    bar_value_formatting: ''
    bar_value_label_override: ''
    bar_value_label_padding: 63
    bar_target_source: second
    bar_target_label_type: value
    bar_target_label_override: ''
    bar_target_value_override: ''
    circleThickness: 0.5
    circleFillGap: 0.5
    waveHeight: 0.5
    waveCount: 5
    waveRiseTime: 2500
    waveAnimateTime: 2501
    waveOffset: 0.5
    textVertPosition: 0.5
    textSize: 0.5
    arm_length: 26
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_label_type: none
    value_label_font: 12
    value_label_padding: 62
    target_source: first
    target_label_type: both
    target_label_font: 3
    label_font_size: 3
    spinner_type: needle
    fill_color: "#5d7fc8"
    background_color: "#5d7fc8"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress-gradient
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_cols: 2
    angle: 83
    cutout: 50
    range_x: 1.5
    range_y: 1
    target_label_padding: 1.5
    hidden_fields: [orders_analysis.total_sales]
    hidden_points_if_no: []
    defaults_version: 1
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Orders Analysis Total Sales
        label_from_parameter:
        label_short: Total Sales
        map_layer:
        name: orders_analysis.total_sales
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Sales
        measure: true
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.total_sales
        suggest_explore: orders_analysis
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=110"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${sales} "
        sql_case:
        filters:
        sorted:
          desc: true
          sort_index: 0
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Orders Analysis Total Sales 2
        label_from_parameter:
        label_short: Total Sales 2
        map_layer:
        name: orders_analysis.total_sales_2
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Sales 2
        measure: true
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.total_sales_2
        suggest_explore: orders_analysis
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=116"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${sales} * 1.1"
        sql_case:
        filters:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Orders Analysis Total Sales 3
        label_from_parameter:
        label_short: Total Sales 3
        map_layer:
        name: orders_analysis.total_sales_3
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Sales 3
        measure: true
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.total_sales_3
        suggest_explore: orders_analysis
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=122"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${sales} * 1.2"
        sql_case:
        filters:
      dimensions:
      - align: left
        can_filter: true
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Orders Analysis Category
        label_from_parameter:
        label_short: Category
        map_layer:
        name: orders_analysis.category
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Category
        measure: false
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.category
        suggest_explore: orders_analysis
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=4"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${TABLE}.Category "
        sql_case:
        filters:
        sorted:
          desc: false
          sort_index: 1
      table_calculations: []
      pivots: []
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 14
    col: 3
    width: 10
    height: 7
  - title: State YTD Quotes
    name: State YTD Quotes (2)
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_grid
    fields: [orders_analysis.state, orders_analysis.year_to_date_sales, orders_analysis.year_over_year_sales_pdiff,
      orders_analysis.year_to_date_sales_vs_plan]
    sorts: [orders_analysis.year_to_date_sales desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_sales, based_on: orders_analysis.sales, expression: '',
        label: Sum of Sales, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_profit, based_on: orders_analysis.profit, expression: '', label: Sum
          of Profit, type: sum, _kind_hint: measure, _type_hint: number}, {measure: sum_of_quantity,
        based_on: orders_analysis.quantity, expression: '', label: Sum of Quantity,
        type: sum, _kind_hint: measure, _type_hint: number}, {category: table_calculation,
        expression: 'if(${orders_analysis.state} = "California", ${orders_analysis.total_sales},null)',
        label: Total Sales Pos, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: total_sales_pos, _type_hint: number,
        is_disabled: true}, {category: table_calculation, expression: 'if(${orders_analysis.state}
          != "California", ${orders_analysis.total_sales},null)', label: Total Sales
          Neg, value_format: !!null '', value_format_name: usd_0, _kind_hint: measure,
        table_calculation: total_sales_neg, _type_hint: number, is_disabled: true}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      orders_analysis.total_sales_2: Last Year
      orders_analysis.total_sales_3: Plan
      total_sales_pos: Total Sales (Above Plan)
      total_sales_neg: Total Sales (Below Plan)
      orders_analysis.state: State
      orders_analysis.year_to_date_sales: YTD Sales
      orders_analysis.year_over_year_sales_pdiff: Prior
      orders_analysis.year_to_date_sales_vs_plan: Plan
    series_cell_visualizations:
      orders_analysis.total_sales_2:
        is_active: false
      orders_analysis.year_to_date_sales:
        is_active: true
        palette:
          palette_id: 3f1ba513-80c8-9953-afa8-3820fa9269ab
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
          custom_colors:
          - "#FFFFFF"
          - "#bab3b3"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    conditional_formatting: [{type: greater than, value: 0, background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: [orders_analysis.year_over_year_sales_pdiff]},
      {type: less than, value: 0, background_color: "#FC9200", font_color: !!null '',
        color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7, palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338},
        bold: false, italic: false, strikethrough: false, fields: [orders_analysis.year_over_year_sales_pdiff]},
      {type: greater than, value: 0, background_color: "#3D52B9", font_color: !!null '',
        color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7, palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338},
        bold: false, italic: false, strikethrough: false, fields: [orders_analysis.year_to_date_sales_vs_plan]},
      {type: less than, value: 0, background_color: "#FC9200", font_color: !!null '',
        color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7, palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338},
        bold: false, italic: false, strikethrough: false, fields: [orders_analysis.year_to_date_sales_vs_plan]}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: bottom, series: [{axisId: total_sales_pos,
            id: total_sales_pos, name: Total Sales Pos}, {axisId: total_sales_neg,
            id: total_sales_neg, name: Total Sales Neg}, {axisId: orders_analysis.total_sales_2,
            id: orders_analysis.total_sales_2, name: Total Sales 2}, {axisId: orders_analysis.total_sales_3,
            id: orders_analysis.total_sales_3, name: Total Sales 3}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    font_size: '12'
    series_types: {}
    series_colors:
      total_sales_pos: "#3D52B9"
      total_sales_neg: "#FC9200"
      orders_analysis.total_sales_2: "#bab5b5"
      orders_analysis.total_sales_3: "#000000"
    bar_arm_length: 33.5
    bar_arm_weight: 61
    bar_spinner_length: 152
    bar_spinner_weight: 83
    bar_style: vertical
    bar_value_label_type: dim
    bar_value_formatting: ''
    bar_value_label_override: ''
    bar_value_label_padding: 63
    bar_target_source: second
    bar_target_label_type: value
    bar_target_label_override: ''
    bar_target_value_override: ''
    circleThickness: 0.5
    circleFillGap: 0.5
    waveHeight: 0.5
    waveCount: 5
    waveRiseTime: 2500
    waveAnimateTime: 2501
    waveOffset: 0.5
    textVertPosition: 0.5
    textSize: 0.5
    arm_length: 26
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_label_type: none
    value_label_font: 12
    value_label_padding: 62
    target_source: first
    target_label_type: both
    target_label_font: 3
    label_font_size: 3
    spinner_type: needle
    fill_color: "#5d7fc8"
    background_color: "#5d7fc8"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress-gradient
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_cols: 2
    angle: 83
    cutout: 50
    range_x: 1.5
    range_y: 1
    target_label_padding: 1.5
    hidden_fields:
    hidden_points_if_no: []
    defaults_version: 1
    query_fields:
      measures:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Orders Analysis Total Sales
        label_from_parameter:
        label_short: Total Sales
        map_layer:
        name: orders_analysis.total_sales
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Sales
        measure: true
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.total_sales
        suggest_explore: orders_analysis
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=110"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${sales} "
        sql_case:
        filters:
        sorted:
          desc: true
          sort_index: 0
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Orders Analysis Total Sales 2
        label_from_parameter:
        label_short: Total Sales 2
        map_layer:
        name: orders_analysis.total_sales_2
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Sales 2
        measure: true
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.total_sales_2
        suggest_explore: orders_analysis
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=116"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${sales} * 1.1"
        sql_case:
        filters:
      - align: right
        can_filter: true
        category: measure
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: true
        label: Orders Analysis Total Sales 3
        label_from_parameter:
        label_short: Total Sales 3
        map_layer:
        name: orders_analysis.total_sales_3
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: sum
        user_attribute_filter_types:
        - number
        - advanced_filter_number
        value_format: "$#,##0"
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Total Sales 3
        measure: true
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.total_sales_3
        suggest_explore: orders_analysis
        suggestable: false
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=122"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${sales} * 1.2"
        sql_case:
        filters:
      dimensions:
      - align: left
        can_filter: true
        category: dimension
        default_filter_value:
        description:
        enumerations:
        field_group_label:
        fill_style:
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Orders Analysis Category
        label_from_parameter:
        label_short: Category
        map_layer:
        name: orders_analysis.category
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: string
        user_attribute_filter_types:
        - string
        - advanced_filter_string
        value_format:
        view: orders_analysis
        view_label: Orders Analysis
        dynamic: false
        week_start_day: monday
        dimension_group:
        error:
        field_group_variant: Category
        measure: false
        parameter: false
        primary_key: false
        project_name: superstore_alex_mendoza_row_access_example
        scope: orders_analysis
        suggest_dimension: orders_analysis.category
        suggest_explore: orders_analysis
        suggestable: true
        is_fiscal: false
        is_timeframe: false
        can_time_filter: false
        time_interval:
        lookml_link: "/projects/superstore_alex_mendoza_row_access_example/files/views%2Forders_analysis.view.lkml?line=4"
        permanent:
        source_file: views/orders_analysis.view.lkml
        source_file_path: superstore_alex_mendoza_row_access_example/views/orders_analysis.view.lkml
        sql: "${TABLE}.Category "
        sql_case:
        filters:
        sorted:
          desc: false
          sort_index: 1
      table_calculations: []
      pivots: []
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 21
    col: 3
    width: 21
    height: 9
  - title: Plan
    name: Plan (2)
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.year_to_date_sales_vs_plan_diff, orders_analysis.year_to_date_sales_vs_plan]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    comparison_label: _
    conditional_formatting: [{type: greater than, value: 0, background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC9200",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 24
    col: 0
    width: 3
    height: 2
  - title: YTD
    name: YTD
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.year_to_date_sales]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#bab9b7",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 22
    col: 0
    width: 3
    height: 2
  - title: Prior
    name: Prior (2)
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.year_to_date_sales, orders_analysis.prior_year_to_date_sales,
      orders_analysis.year_over_year_sales_diff, orders_analysis.year_over_year_sales_pdiff]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    comparison_label: _
    conditional_formatting: [{type: greater than, value: 0, background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC9200",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [orders_analysis.year_to_date_sales, orders_analysis.prior_year_to_date_sales]
    series_types: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 26
    col: 0
    width: 3
    height: 2
  - title: Forecast
    name: Forecast (2)
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.year_to_date_forecast, orders_analysis.year_to_date_sales_vs_forecast_diff,
      orders_analysis.year_to_date_sales_vs_forecast]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    comparison_label: _
    conditional_formatting: [{type: greater than, value: 0, background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC9200",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [orders_analysis.year_to_date_forecast]
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 28
    col: 0
    width: 3
    height: 2
  - title: Year to Date
    name: Year to Date
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_bar
    fields: [orders_analysis.year_to_date_sales, orders_analysis.year_to_date_plan,
      orders_analysis.prior_year_to_date_sales, orders_analysis.year_to_date_forecast]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: orders_analysis.month_to_date_sales,
            id: orders_analysis.month_to_date_sales, name: Month to Date Sales}, {
            axisId: orders_analysis.month_to_date_plan, id: orders_analysis.month_to_date_plan,
            name: Month to Date Plan}, {axisId: orders_analysis.prior_month_to_date_sales,
            id: orders_analysis.prior_month_to_date_sales, name: Prior Month to Date
              Sales}, {axisId: orders_analysis.month_to_date_forecast, id: orders_analysis.month_to_date_forecast,
            name: Month to Date Forecast}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      orders_analysis.month_to_date_plan: "#FC9200"
      orders_analysis.prior_month_to_date_sales: "#b5afab"
      orders_analysis.month_to_date_forecast: "#000000"
      orders_analysis.year_to_date_plan: "#FC9200"
      orders_analysis.prior_year_to_date_sales: "#000000"
      orders_analysis.year_to_date_forecast: "#adadad"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: _
    conditional_formatting: [{type: greater than, value: 0, background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC9200",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: []
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 30
    col: 6
    width: 6
    height: 8
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: ''
    row: 38
    col: 0
    width: 24
    height: 2
  - title: Total Year to Date Quantity
    name: Total Year to Date Quantity
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.year_to_date_quantity]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#000000",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 52
    col: 0
    width: 4
    height: 4
  - title: Total Prior Year to Date Quanity
    name: Total Prior Year to Date Quanity
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.prior_year_to_date_quantity]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#949494",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 56
    col: 0
    width: 4
    height: 4
  - title: New Tile
    name: New Tile
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.year_over_year_quantity_pdiff]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
    conditional_formatting: [{type: greater than, value: 0, background_color: "#0BB45B",
        font_color: !!null '', color_application: {collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd,
          palette_id: 628a997f-dd44-4060-a913-250041880199}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#AA0A3C",
        font_color: !!null '', color_application: {collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd,
          palette_id: 628a997f-dd44-4060-a913-250041880199}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 60
    col: 0
    width: 4
    height: 4
  - title: Year over Year Quantity by Week
    name: Year over Year Quantity by Week
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_line
    fields: [orders_analysis.order_week_of_year, orders_analysis.year_to_date_quantity_complete_weeks,
      orders_analysis.prior_year_quantity, orders_analysis.year_over_year_quantity_pdiff]
    filters:
      orders_analysis.order_week_of_year: "<53"
    sorts: [orders_analysis.order_week_of_year]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'if(${orders_analysis.year_to_date_quantity_complete_weeks}>0,
          ${orders_analysis.year_to_date_quantity_complete_weeks}, null)', label: Year
          to Date Sales Complete, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: year_to_date_sales_complete, _type_hint: number},
      {category: table_calculation, expression: 'if(${pdiff}>0,${pdiff}, null)', label: Year
          over Year Sales PDiff Pos, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: year_over_year_sales_pdiff_pos, _type_hint: number},
      {category: table_calculation, expression: 'if(${pdiff}<=0,${pdiff}, null)',
        label: Year over Years Sales PDiff Neg, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: year_over_years_sales_pdiff_neg, _type_hint: number},
      {category: table_calculation, expression: 'if(${orders_analysis.year_to_date_quantity_complete_weeks}>0,${orders_analysis.year_over_year_quantity_pdiff},
          null)', label: PDiff, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: pdiff, _type_hint: number}]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    y_axes: [{label: '', orientation: left, series: [{axisId: orders_analysis.prior_year_sales,
            id: orders_analysis.prior_year_sales, name: Prior Year Sales}, {axisId: year_to_date_sales_complete,
            id: year_to_date_sales_complete, name: Year to Date Sales Complete}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: '', orientation: right, series: [
          {axisId: year_over_year_sales_pdiff_pos, id: year_over_year_sales_pdiff_pos,
            name: Year over Year Sales PDiff Pos}, {axisId: year_over_years_sales_pdiff_neg,
            id: year_over_years_sales_pdiff_neg, name: Year over Years Sales PDiff
              Neg}], showLabels: false, showValues: false, maxValue: 10, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types:
      orders_analysis.year_over_year_sales_pdiff: column
      year_over_year_sales_pdiff_pos: column
      year_over_years_sales_pdiff_neg: column
    series_colors:
      year_over_year_sales_pdiff_pos: "#08B248"
      orders_analysis.year_to_date_sales: "#000000"
      orders_analysis.prior_year_sales: "#acb2ae"
      orders_analysis.year_to_date_sales_complete_weeks: "#000000"
      year_to_date_sales_complete: "#000000"
      orders_analysis.prior_year_quantity: "#bab5b5"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 0, background_color: "#08B248",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC2E31",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [pdiff, orders_analysis.year_to_date_quantity_complete_weeks, orders_analysis.year_over_year_quantity_pdiff]
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 52
    col: 4
    width: 8
    height: 12
  - title: Total Year to Date Sales
    name: Total Year to Date Sales
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.year_to_date_sales]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#000000",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 40
    col: 12
    width: 4
    height: 4
  - title: Total Prior Year to Date Sales
    name: Total Prior Year to Date Sales
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.prior_year_to_date_sales]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#949494",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 44
    col: 12
    width: 4
    height: 4
  - title: Year over Year Sales by Week
    name: Year over Year Sales by Week
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_line
    fields: [orders_analysis.order_week_of_year, orders_analysis.year_to_date_sales_complete_weeks,
      orders_analysis.prior_year_sales, orders_analysis.year_over_year_sales_pdiff]
    filters:
      orders_analysis.order_week_of_year: "<53"
    sorts: [orders_analysis.order_week_of_year]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'if(${orders_analysis.year_to_date_sales_complete_weeks}>0,
          ${orders_analysis.year_to_date_sales_complete_weeks}, null)', label: Year
          to Date Sales Complete, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: year_to_date_sales_complete, _type_hint: number},
      {category: table_calculation, expression: 'if(${pdiff}>0,${pdiff}, null)', label: Year
          over Year Sales PDiff Pos, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: year_over_year_sales_pdiff_pos, _type_hint: number},
      {category: table_calculation, expression: 'if(${pdiff}<=0,${pdiff}, null)',
        label: Year over Years Sales PDiff Neg, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: year_over_years_sales_pdiff_neg, _type_hint: number},
      {category: table_calculation, expression: 'if(${orders_analysis.year_to_date_sales_complete_weeks}>0,${orders_analysis.year_over_year_sales_pdiff},
          null)', label: PDiff, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: pdiff, _type_hint: number}]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    y_axes: [{label: '', orientation: left, series: [{axisId: orders_analysis.prior_year_sales,
            id: orders_analysis.prior_year_sales, name: Prior Year Sales}, {axisId: year_to_date_sales_complete,
            id: year_to_date_sales_complete, name: Year to Date Sales Complete}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: '', orientation: right, series: [
          {axisId: year_over_year_sales_pdiff_pos, id: year_over_year_sales_pdiff_pos,
            name: Year over Year Sales PDiff Pos}, {axisId: year_over_years_sales_pdiff_neg,
            id: year_over_years_sales_pdiff_neg, name: Year over Years Sales PDiff
              Neg}], showLabels: false, showValues: false, maxValue: 10, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types:
      orders_analysis.year_over_year_sales_pdiff: column
      year_over_year_sales_pdiff_pos: column
      year_over_years_sales_pdiff_neg: column
    series_colors:
      year_over_year_sales_pdiff_pos: "#08B248"
      orders_analysis.year_to_date_sales: "#000000"
      orders_analysis.prior_year_sales: "#acb2ae"
      orders_analysis.year_to_date_sales_complete_weeks: "#000000"
      year_to_date_sales_complete: "#000000"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 0, background_color: "#08B248",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC2E31",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [orders_analysis.year_over_year_sales_pdiff, orders_analysis.year_to_date_sales_complete_weeks,
      pdiff]
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 40
    col: 16
    width: 8
    height: 12
  - title: Year over Year Sales % Diff
    name: Year over Year Sales % Diff
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.year_over_year_sales_pdiff]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
    conditional_formatting: [{type: greater than, value: 0, background_color: "#0BB45B",
        font_color: !!null '', color_application: {collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd,
          palette_id: 628a997f-dd44-4060-a913-250041880199}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#AA0A3C",
        font_color: !!null '', color_application: {collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd,
          palette_id: 628a997f-dd44-4060-a913-250041880199}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 48
    col: 12
    width: 4
    height: 4
  - title: Total Sales
    name: Total Sales
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_grid
    fields: [orders_analysis.region, orders_analysis.year_to_date_sales, orders_analysis.prior_year_to_date_sales,
      orders_analysis.year_over_year_sales_pdiff]
    sorts: [orders_analysis.region]
    limit: 500
    total: true
    dynamic_fields: [{category: table_calculation, expression: 'if(${orders_analysis.year_over_year_sales_pdiff}>0,${orders_analysis.year_over_year_sales_pdiff},
          null)', label: Year over Year Sales PDiff Pos, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: year_over_year_sales_pdiff_pos,
        _type_hint: number, is_disabled: true}, {category: table_calculation, expression: 'if(${orders_analysis.year_over_year_sales_pdiff}<=0,${orders_analysis.year_over_year_sales_pdiff},
          null)', label: Year over Years Sales PDiff Neg, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: year_over_years_sales_pdiff_neg,
        _type_hint: number, is_disabled: true}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      orders_analysis.year_to_date_sales: YTD
      orders_analysis.prior_year_to_date_sales: Prior YTD
      orders_analysis.year_over_year_sales_pdiff: YOY % Diff
    series_column_widths:
      orders_analysis.region: 100
    series_cell_visualizations:
      orders_analysis.count:
        is_active: true
        palette:
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      orders_analysis.total_sales:
        is_active: true
        palette:
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      orders_analysis.total_sales_2:
        is_active: true
        palette:
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      orders_analysis.year_to_date_sales:
        is_active: true
        palette:
          palette_id: f8448f52-c2cc-f0ff-1582-8e5e0a3c91ba
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
          custom_colors:
          - "#000000"
          - "#000000"
      orders_analysis.prior_year_to_date_sales:
        is_active: true
        palette:
          palette_id: 938a7f0b-18e5-5755-5483-09bf484c2e08
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
          custom_colors:
          - "#b4baaf"
          - "#b4baaf"
      orders_analysis.year_over_year_sales_pdiff:
        is_active: true
        palette:
          palette_id: 57bef7ef-25c4-448e-83df-9c4de399305d
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
    conditional_formatting: []
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
    stacking: ''
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: orders_analysis.year_to_date_sales,
            id: orders_analysis.year_to_date_sales, name: Year to Date Sales}, {axisId: orders_analysis.prior_year_sales,
            id: orders_analysis.prior_year_sales, name: Prior Year Sales}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: right, series: [{axisId: year_over_year_sales_pdiff_pos,
            id: year_over_year_sales_pdiff_pos, name: Year over Year Sales PDiff Pos},
          {axisId: year_over_years_sales_pdiff_neg, id: year_over_years_sales_pdiff_neg,
            name: Year over Years Sales PDiff Neg}], showLabels: false, showValues: false,
        maxValue: 10, unpinAxis: false, tickDensity: default, type: linear}]
    series_types: {}
    series_colors:
      year_over_year_sales_pdiff_pos: "#08B248"
      orders_analysis.year_to_date_sales: "#000000"
      orders_analysis.prior_year_sales: "#acb2ae"
      orders_analysis.year_to_date_sales_complete_weeks: "#000000"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_fields: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 40
    col: 4
    width: 8
    height: 4
  - title: Total Quantity
    name: Total Quantity
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_grid
    fields: [orders_analysis.region, orders_analysis.year_to_date_quantity, orders_analysis.prior_year_to_date_quantity,
      orders_analysis.year_over_year_quantity_pdiff]
    sorts: [orders_analysis.region]
    limit: 500
    total: true
    dynamic_fields: [{category: table_calculation, expression: 'if(${orders_analysis.year_over_year_sales_pdiff}>0,${orders_analysis.year_over_year_sales_pdiff},
          null)', label: Year over Year Sales PDiff Pos, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: year_over_year_sales_pdiff_pos,
        _type_hint: number, is_disabled: true}, {category: table_calculation, expression: 'if(${orders_analysis.year_over_year_sales_pdiff}<=0,${orders_analysis.year_over_year_sales_pdiff},
          null)', label: Year over Years Sales PDiff Neg, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: year_over_years_sales_pdiff_neg,
        _type_hint: number, is_disabled: true}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      orders_analysis.year_to_date_quantity: YTD
      orders_analysis.prior_year_to_date_quantity: Prior YTD
      orders_analysis.year_over_year_quantity_pdiff: YOY % Diff
    series_column_widths:
      orders_analysis.region: 100
    series_cell_visualizations:
      orders_analysis.count:
        is_active: true
        palette:
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      orders_analysis.total_sales:
        is_active: true
        palette:
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      orders_analysis.total_sales_2:
        is_active: true
        palette:
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      orders_analysis.year_to_date_sales:
        is_active: true
        palette:
          palette_id: 4095ce08-051b-d624-4b6a-e61d463f3810
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
          custom_colors:
          - "#FFFFFF"
          - "#b4baaf"
      orders_analysis.prior_year_to_date_sales:
        is_active: true
        palette:
          palette_id: bc0c259a-5102-69c4-a167-5898289acdb1
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
          custom_colors:
          - "#FFFFFF"
          - "#b4baaf"
      orders_analysis.year_over_year_sales_pdiff:
        is_active: true
        palette:
          palette_id: 57bef7ef-25c4-448e-83df-9c4de399305d
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      orders_analysis.year_to_date_quantity:
        is_active: true
        palette:
          palette_id: afb6340d-c416-32d4-b186-4db4b0bc158a
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
          custom_colors:
          - "#000000"
          - "#000000"
      orders_analysis.prior_year_to_date_quantity:
        is_active: true
        palette:
          palette_id: bf146700-2dd8-a2a2-6784-a7ea7e845869
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
          custom_colors:
          - "#b4baaf"
          - "#b4baaf"
      orders_analysis.year_over_year_quantity_pdiff:
        is_active: true
        palette:
          palette_id: 57bef7ef-25c4-448e-83df-9c4de399305d
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
    conditional_formatting: []
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
    stacking: ''
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: orders_analysis.year_to_date_sales,
            id: orders_analysis.year_to_date_sales, name: Year to Date Sales}, {axisId: orders_analysis.prior_year_sales,
            id: orders_analysis.prior_year_sales, name: Prior Year Sales}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: right, series: [{axisId: year_over_year_sales_pdiff_pos,
            id: year_over_year_sales_pdiff_pos, name: Year over Year Sales PDiff Pos},
          {axisId: year_over_years_sales_pdiff_neg, id: year_over_years_sales_pdiff_neg,
            name: Year over Years Sales PDiff Neg}], showLabels: false, showValues: false,
        maxValue: 10, unpinAxis: false, tickDensity: default, type: linear}]
    series_types: {}
    series_colors:
      year_over_year_sales_pdiff_pos: "#08B248"
      orders_analysis.year_to_date_sales: "#000000"
      orders_analysis.prior_year_sales: "#acb2ae"
      orders_analysis.year_to_date_sales_complete_weeks: "#000000"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_fields: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 44
    col: 4
    width: 8
    height: 4
  - title: Total Profit
    name: Total Profit
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_grid
    fields: [orders_analysis.region, orders_analysis.year_to_date_profit, orders_analysis.prior_year_to_date_profit,
      orders_analysis.year_over_year_profit_pdiff]
    sorts: [orders_analysis.region]
    limit: 500
    total: true
    dynamic_fields: [{category: table_calculation, expression: 'if(${orders_analysis.year_over_year_sales_pdiff}>0,${orders_analysis.year_over_year_sales_pdiff},
          null)', label: Year over Year Sales PDiff Pos, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: year_over_year_sales_pdiff_pos,
        _type_hint: number, is_disabled: true}, {category: table_calculation, expression: 'if(${orders_analysis.year_over_year_sales_pdiff}<=0,${orders_analysis.year_over_year_sales_pdiff},
          null)', label: Year over Years Sales PDiff Neg, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, table_calculation: year_over_years_sales_pdiff_neg,
        _type_hint: number, is_disabled: true}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      orders_analysis.year_to_date_profit: YTD
      orders_analysis.prior_year_to_date_profit: Prior YTD
      orders_analysis.year_over_year_profit_pdiff: YOY % Diff
    series_column_widths:
      orders_analysis.region: 100
    series_cell_visualizations:
      orders_analysis.count:
        is_active: true
        palette:
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      orders_analysis.total_sales:
        is_active: true
        palette:
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      orders_analysis.total_sales_2:
        is_active: true
        palette:
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      orders_analysis.year_to_date_sales:
        is_active: true
        palette:
          palette_id: 4095ce08-051b-d624-4b6a-e61d463f3810
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
          custom_colors:
          - "#FFFFFF"
          - "#b4baaf"
      orders_analysis.prior_year_to_date_sales:
        is_active: true
        palette:
          palette_id: bc0c259a-5102-69c4-a167-5898289acdb1
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
          custom_colors:
          - "#FFFFFF"
          - "#b4baaf"
      orders_analysis.year_over_year_sales_pdiff:
        is_active: true
        palette:
          palette_id: 57bef7ef-25c4-448e-83df-9c4de399305d
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      orders_analysis.year_to_date_profit:
        is_active: true
        palette:
          palette_id: 9718bc63-2a92-713f-c52f-68f144c80b56
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
          custom_colors:
          - "#000000"
          - "#000000"
      orders_analysis.prior_year_to_date_profit:
        is_active: true
        palette:
          palette_id: 29fd9594-fe3d-06ac-2bb3-31f8b0baa6ca
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
          custom_colors:
          - "#b4baaf"
          - "#b4baaf"
      orders_analysis.year_over_year_profit_pdiff:
        is_active: true
        palette:
          palette_id: 57bef7ef-25c4-448e-83df-9c4de399305d
          collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
    conditional_formatting: []
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
    stacking: ''
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: orders_analysis.year_to_date_sales,
            id: orders_analysis.year_to_date_sales, name: Year to Date Sales}, {axisId: orders_analysis.prior_year_sales,
            id: orders_analysis.prior_year_sales, name: Prior Year Sales}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: right, series: [{axisId: year_over_year_sales_pdiff_pos,
            id: year_over_year_sales_pdiff_pos, name: Year over Year Sales PDiff Pos},
          {axisId: year_over_years_sales_pdiff_neg, id: year_over_years_sales_pdiff_neg,
            name: Year over Years Sales PDiff Neg}], showLabels: false, showValues: false,
        maxValue: 10, unpinAxis: false, tickDensity: default, type: linear}]
    series_types: {}
    series_colors:
      year_over_year_sales_pdiff_pos: "#08B248"
      orders_analysis.year_to_date_sales: "#000000"
      orders_analysis.prior_year_sales: "#acb2ae"
      orders_analysis.year_to_date_sales_complete_weeks: "#000000"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_fields: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 48
    col: 4
    width: 8
    height: 4
  - title: Total Year to Date Profit
    name: Total Year to Date Profit
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.year_to_date_profit]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#000000",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 52
    col: 12
    width: 4
    height: 4
  - title: Total Prior Year to Date Profit
    name: Total Prior Year to Date Profit
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.prior_year_to_date_profit]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#949494",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 56
    col: 12
    width: 4
    height: 4
  - title: Year over Year Profit % Diff
    name: Year over Year Profit % Diff
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: single_value
    fields: [orders_analysis.year_over_year_profit_pdiff]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
    conditional_formatting: [{type: greater than, value: 0, background_color: "#0BB45B",
        font_color: !!null '', color_application: {collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd,
          palette_id: 628a997f-dd44-4060-a913-250041880199}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#AA0A3C",
        font_color: !!null '', color_application: {collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd,
          palette_id: 628a997f-dd44-4060-a913-250041880199}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 60
    col: 12
    width: 4
    height: 4
  - title: Year over Year Profit by Week
    name: Year over Year Profit by Week
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_line
    fields: [orders_analysis.order_week_of_year, orders_analysis.year_to_date_profit_complete_weeks,
      orders_analysis.year_over_year_profit_pdiff, orders_analysis.prior_year_profit]
    filters:
      orders_analysis.order_week_of_year: "<53"
    sorts: [orders_analysis.order_week_of_year]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'if(${orders_analysis.year_to_date_profit_complete_weeks}>0,
          ${orders_analysis.year_to_date_profit_complete_weeks}, null)', label: Year
          to Date Sales Complete, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: year_to_date_sales_complete, _type_hint: number},
      {category: table_calculation, expression: 'if(${pdiff}>0,${pdiff}, null)', label: Year
          over Year Sales PDiff Pos, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: year_over_year_sales_pdiff_pos, _type_hint: number},
      {category: table_calculation, expression: 'if(${pdiff}<=0,${pdiff}, null)',
        label: Year over Years Sales PDiff Neg, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: year_over_years_sales_pdiff_neg, _type_hint: number},
      {category: table_calculation, expression: 'if(${orders_analysis.year_to_date_profit_complete_weeks}>0,${orders_analysis.year_over_year_profit_pdiff},
          null)', label: PDiff, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: pdiff, _type_hint: number}]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    y_axes: [{label: '', orientation: left, series: [{axisId: year_to_date_sales_complete,
            id: year_to_date_sales_complete, name: Year to Date Sales Complete}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: '', orientation: left, series: [
          {axisId: orders_analysis.prior_year_profit, id: orders_analysis.prior_year_profit,
            name: Prior Year Profit}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: '', orientation: right, series: [
          {axisId: year_over_year_sales_pdiff_pos, id: year_over_year_sales_pdiff_pos,
            name: Year over Year Sales PDiff Pos}, {axisId: year_over_years_sales_pdiff_neg,
            id: year_over_years_sales_pdiff_neg, name: Year over Years Sales PDiff
              Neg}], showLabels: false, showValues: false, maxValue: !!null '', unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types:
      orders_analysis.year_over_year_sales_pdiff: column
      year_over_year_sales_pdiff_pos: column
      year_over_years_sales_pdiff_neg: column
    series_colors:
      year_over_year_sales_pdiff_pos: "#08B248"
      orders_analysis.year_to_date_sales: "#000000"
      orders_analysis.prior_year_sales: "#acb2ae"
      orders_analysis.year_to_date_sales_complete_weeks: "#000000"
      year_to_date_sales_complete: "#000000"
      orders_analysis.prior_year_profit: "#babab2"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 0, background_color: "#08B248",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC2E31",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [pdiff, orders_analysis.year_to_date_profit_complete_weeks, orders_analysis.year_over_year_profit_pdiff]
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 52
    col: 16
    width: 8
    height: 12
  - title: Year to Date Sales by Region
    name: Year to Date Sales by Region
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_column
    fields: [orders_analysis.region, orders_analysis.year_to_date_sales, orders_analysis.prior_year_to_date_sales]
    sorts: [orders_analysis.region]
    limit: 500
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
    series_types: {}
    series_colors:
      orders_analysis.year_to_date_sales: "#000000"
      orders_analysis.prior_year_to_date_sales: "#b4baaf"
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 40
    col: 0
    width: 4
    height: 4
  - title: Year to Date Quantity by Region
    name: Year to Date Quantity by Region
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_column
    fields: [orders_analysis.region, orders_analysis.year_to_date_quantity, orders_analysis.prior_year_to_date_quantity]
    sorts: [orders_analysis.region]
    limit: 500
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
    series_types: {}
    series_colors:
      orders_analysis.year_to_date_sales: "#000000"
      orders_analysis.prior_year_to_date_sales: "#b4baaf"
      orders_analysis.year_to_date_quantity: "#000000"
      orders_analysis.prior_year_to_date_quantity: "#b4baaf"
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 44
    col: 0
    width: 4
    height: 4
  - title: Year to Date Profit by Region
    name: Year to Date Profit by Region
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_column
    fields: [orders_analysis.region, orders_analysis.year_to_date_profit, orders_analysis.prior_year_to_date_profit]
    sorts: [orders_analysis.region]
    limit: 500
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
    series_types: {}
    series_colors:
      orders_analysis.year_to_date_sales: "#000000"
      orders_analysis.prior_year_to_date_sales: "#b4baaf"
      orders_analysis.year_to_date_profit: "#000000"
      orders_analysis.prior_year_to_date_profit: "#b4baaf"
    defaults_version: 1
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 48
    col: 0
    width: 4
    height: 4
  - title: Year over Year Sales by Dynamic Timesframe
    name: Year over Year Sales by Dynamic Timesframe
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    type: looker_line
    fields: [orders_analysis.year_to_date_sales_complete_weeks, orders_analysis.prior_year_sales,
      orders_analysis.year_over_year_sales_pdiff, orders_analysis.date]
    filters:
      orders_analysis.order_week_of_year: "<53"
    sorts: [orders_analysis.date]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'if(${orders_analysis.year_to_date_sales_complete_weeks}>0,
          ${orders_analysis.year_to_date_sales_complete_weeks}, null)', label: Year
          to Date Sales Complete, value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, table_calculation: year_to_date_sales_complete, _type_hint: number},
      {category: table_calculation, expression: 'if(${pdiff}>0,${pdiff}, null)', label: Year
          over Year Sales PDiff Pos, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: year_over_year_sales_pdiff_pos, _type_hint: number},
      {category: table_calculation, expression: 'if(${pdiff}<=0,${pdiff}, null)',
        label: Year over Years Sales PDiff Neg, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: year_over_years_sales_pdiff_neg, _type_hint: number},
      {category: table_calculation, expression: 'if(${orders_analysis.year_to_date_sales_complete_weeks}>0,${orders_analysis.year_over_year_sales_pdiff},
          null)', label: PDiff, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: pdiff, _type_hint: number}]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    y_axes: [{label: '', orientation: left, series: [{axisId: orders_analysis.prior_year_sales,
            id: orders_analysis.prior_year_sales, name: Prior Year Sales}, {axisId: year_to_date_sales_complete,
            id: year_to_date_sales_complete, name: Year to Date Sales Complete}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: '', orientation: right, series: [
          {axisId: year_over_year_sales_pdiff_pos, id: year_over_year_sales_pdiff_pos,
            name: Year over Year Sales PDiff Pos}, {axisId: year_over_years_sales_pdiff_neg,
            id: year_over_years_sales_pdiff_neg, name: Year over Years Sales PDiff
              Neg}], showLabels: false, showValues: false, maxValue: 10, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types:
      orders_analysis.year_over_year_sales_pdiff: column
      year_over_year_sales_pdiff_pos: column
      year_over_years_sales_pdiff_neg: column
    series_colors:
      year_over_year_sales_pdiff_pos: "#08B248"
      orders_analysis.year_to_date_sales: "#000000"
      orders_analysis.prior_year_sales: "#acb2ae"
      orders_analysis.year_to_date_sales_complete_weeks: "#000000"
      year_to_date_sales_complete: "#000000"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 0, background_color: "#08B248",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 0, background_color: "#FC2E31",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [orders_analysis.year_over_year_sales_pdiff, orders_analysis.year_to_date_sales_complete_weeks,
      pdiff]
    listen:
      Date Granularity: orders_analysis.date_granularity
    row: 64
    col: 0
    width: 12
    height: 11
  filters:
  - name: Date Granularity
    title: Date Granularity
    type: field_filter
    default_value: Week
    allow_multiple_values: true
    required: false
    ui_config:
      type: radio_buttons
      display: inline
      options: []
    model: superstore_alex_mendoza_row_access_example
    explore: orders_analysis
    listens_to_filters: []
    field: orders_analysis.date_granularity
