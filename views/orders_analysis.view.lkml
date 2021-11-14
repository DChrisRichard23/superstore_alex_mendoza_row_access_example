view: orders_analysis {
  sql_table_name: `superstore.orders_analysis` ;;
  drill_fields: [customer_name, total_sales]

  set: user_details {
    fields: [customer_name, state, total_sales]
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.Country_Region ;;
  }

  dimension: customer_id {
    label: "Customer ID"
    type: string
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.Customer_Name ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  parameter: date_granularity {
    type: string
    allowed_value: { value: "Day" }
    allowed_value: { value: "Week" }
    allowed_value: { value: "Month" }
    allowed_value: { value: "Quarter" }
    default_value: "Week"
  }

  dimension: date {
    label_from_parameter: date_granularity
    sql:
    CASE
      WHEN {% parameter date_granularity %} = 'Day'
        THEN FORMAT("%03d", ${order_day_of_year})
      WHEN {% parameter date_granularity %} = 'Week'
        THEN FORMAT("%02d", ${order_week_of_year})
      WHEN {% parameter date_granularity %} = 'Month'
        THEN FORMAT("%02d", ${order_month_num})
      WHEN {% parameter date_granularity %} = 'Quarter'
        THEN CAST(${order_quarter_of_year} AS STRING)
      ELSE NULL
    END ;;
  }

# START: Date Set up
  dimension_group: order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      day_of_month,
      day_of_year,
      week_of_year,
      month_name,
      quarter_of_year,
      month_num
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Order_Date ;;
  }

  dimension_group: since_order {
    type: duration
    intervals: [month, week, day, year]
    sql_start: ${order_date} ;;
    sql_end: DATE(current_timestamp(), "America/New_York") ;;
  }

  dimension_group: hidden_today {
    type: time
    timeframes: [day_of_month, day_of_year, week_of_year]
    hidden: yes
    sql: DATE(current_timestamp(), "America/New_York") ;;
  }

  dimension: complete_week_flag {
    type: yesno
    sql: ${weeks_since_order} > 0 OR ${order_week_of_year} < ${hidden_today_week_of_year};;
  }

  dimension: is_before_day_of_year {
    type: yesno
    sql: ${order_day_of_year} <= ${hidden_today_day_of_year} ;;
  }
# END: Date Set up

# START: Year over Year Sales
  measure: year_to_date_sales {
    view_label: "Year over Year Sales"
    type: sum
    sql: ${sales} ;;
    filters: [years_since_order: "0", is_before_day_of_year: "Yes"]
    value_format_name: usd_0
    # value_format: "$0.000,,\" M\""
    drill_fields: [state, year_to_date_sales]
  }

  measure: prior_year_to_date_sales {
    view_label: "Year over Year Sales"
    type: sum
    sql: ${sales} ;;
    filters: [years_since_order: "1", is_before_day_of_year: "Yes"]
    value_format_name: usd_0
  }

  measure: year_over_year_sales_diff {
    view_label: "Year over Year Sales"
    type: number
    sql: (${year_to_date_sales} - ${prior_year_to_date_sales})  ;;
    value_format_name: usd_0
  }

  measure: year_over_year_sales_pdiff {
    view_label: "Year over Year Sales"
    type: number
    sql: (${year_to_date_sales} - ${prior_year_to_date_sales}) / NULLIF(${prior_year_to_date_sales}, 0) ;;
    value_format_name: percent_1
  }

  measure: year_to_date_sales_complete_weeks {
    view_label: "Year over Year Sales"
    type: sum
    sql: ${sales} ;;
    filters: [years_since_order: "0", is_before_day_of_year: "Yes", complete_week_flag: "Yes"]
    value_format_name: usd_0
  }

  measure: prior_year_sales {
    view_label: "Year over Year Sales"
    type: sum
    sql: ${sales} ;;
    filters: [years_since_order: "1"]
    value_format_name: usd_0
  }
# END: Year over Year Sales


# START: Year over Year Quantity
  measure: year_to_date_quantity {
    view_label: "Year over Year Quantity"
    type: sum
    sql: ${quantity} ;;
    filters: [years_since_order: "0", is_before_day_of_year: "Yes"]
    value_format_name: usd_0
    drill_fields: [state, year_to_date_quantity]
  }

  measure: prior_year_to_date_quantity {
    view_label: "Year over Year Quantity"
    type: sum
    sql: ${quantity} ;;
    filters: [years_since_order: "1", is_before_day_of_year: "Yes"]
    value_format_name: usd_0
  }

  measure: year_over_year_quantity_diff {
    view_label: "Year over Year Quantity"
    type: number
    sql: (${year_to_date_quantity} - ${prior_year_to_date_quantity})  ;;
    value_format_name: usd_0
  }

  measure: year_over_year_quantity_pdiff {
    view_label: "Year over Year Quantity"
    type: number
    sql: (${year_to_date_quantity} - ${prior_year_to_date_quantity}) / NULLIF(${prior_year_to_date_quantity}, 0) ;;
    value_format_name: percent_1
  }

  measure: year_to_date_quantity_complete_weeks {
    view_label: "Year over Year Quantity"
    type: sum
    sql: ${quantity} ;;
    filters: [years_since_order: "0", is_before_day_of_year: "Yes", complete_week_flag: "Yes"]
    value_format_name: usd_0
  }

  measure: prior_year_quantity {
    view_label: "Year over Year Quantity"
    type: sum
    sql: ${quantity} ;;
    filters: [years_since_order: "1"]
    value_format_name: usd_0
  }
# END: Year over Year Quantity

# START: Year over Year Profit
  measure: year_to_date_profit {
    view_label: "Year over Year Profit"
    type: sum
    sql: ${profit} ;;
    filters: [years_since_order: "0", is_before_day_of_year: "Yes"]
    value_format_name: usd_0
    drill_fields: [state, year_to_date_profit]
  }

  measure: prior_year_to_date_profit {
    view_label: "Year over Year Profit"
    type: sum
    sql: ${profit} ;;
    filters: [years_since_order: "1", is_before_day_of_year: "Yes"]
    value_format_name: usd_0
  }

  measure: year_over_year_profit_diff {
    view_label: "Year over Year Profit"
    type: number
    sql: (${year_to_date_profit} - ${prior_year_to_date_profit})  ;;
    value_format_name: usd_0
  }

  measure: year_over_year_profit_pdiff {
    view_label: "Year over Year Profit"
    type: number
    sql: (${year_to_date_profit} - ${prior_year_to_date_profit}) / NULLIF(${prior_year_to_date_profit}, 0) ;;
    value_format_name: percent_1
  }

  measure: year_to_date_profit_complete_weeks {
    view_label: "Year over Year Profit"
    type: sum
    sql: ${profit} ;;
    filters: [years_since_order: "0", is_before_day_of_year: "Yes", complete_week_flag: "Yes"]
    value_format_name: usd_0
  }

  measure: prior_year_profit {
    view_label: "Year over Year Profit"
    type: sum
    sql: ${profit} ;;
    filters: [years_since_order: "1"]
    value_format_name: usd_0
  }
# END: Year over Year Profit

  dimension: is_before_day_of_month {
    type: yesno
    sql: ${order_day_of_month} <= ${hidden_today_day_of_month} ;;
  }


  measure: month_to_date_sales {
    type: sum
    sql: ${sales} ;;
    filters: [months_since_order: "0", is_before_day_of_month: "Yes"]
    value_format_name: usd_0
  }

  measure: prior_month_to_date_sales {
    type: sum
    sql: ${sales} ;;
    filters: [months_since_order: "1", is_before_day_of_month: "Yes"]
    value_format_name: usd_0
  }

  measure: month_over_month_sales_pdiff {
    type: number
    sql: (${month_to_date_sales} - ${prior_month_to_date_sales}) / NULLIF(${prior_month_to_date_sales}, 0) ;;
    value_format_name: percent_1
  }

  measure: month_over_month_sales_diff {
    type: number
    sql: (${month_to_date_sales} - ${prior_month_to_date_sales}) ;;
    value_format_name: usd_0
  }

  measure: month_to_date_plan {
    type: sum
    sql: ${sales} * 1.1 ;;
    filters: [months_since_order: "0", is_before_day_of_month: "Yes"]
    value_format_name: usd_0
  }

  measure: year_to_date_plan {
    type: sum
    sql: ${sales} * 1.1 ;;
    filters: [years_since_order: "0", is_before_day_of_year: "Yes"]
    value_format_name: usd_0
  }

  measure: month_to_date_sales_vs_plan {
    type: number
    sql: (${month_to_date_sales} - ${month_to_date_plan}) /  NULLIF(${month_to_date_plan}, 0) ;;
    value_format_name: percent_0
  }

  measure: month_to_date_sales_vs_plan_diff {
    type: number
    sql: (${month_to_date_sales} - ${month_to_date_plan})  ;;
    value_format_name: usd_0
  }

  measure: year_to_date_sales_vs_plan {
    type: number
    sql: (${year_to_date_sales} - ${year_to_date_plan}) /  NULLIF(${year_to_date_plan}, 0) ;;
    value_format_name: percent_0
  }

  measure: year_to_date_sales_vs_plan_diff {
    type: number
    sql: (${year_to_date_sales} - ${year_to_date_plan})  ;;
    value_format_name: usd_0
  }

  measure: month_to_date_forecast {
    type: sum
    sql: ${sales} * .98 ;;
    filters: [months_since_order: "0", is_before_day_of_month: "Yes"]
    value_format_name: usd_0
  }

  measure: month_to_date_sales_vs_forecast {
    type: number
    sql: (${month_to_date_sales} - ${month_to_date_forecast}) /  NULLIF(${month_to_date_forecast}, 0) ;;
    value_format_name: percent_0
  }

  measure: month_to_date_sales_vs_forecast_diff {
    type: number
    sql: (${month_to_date_sales} - ${month_to_date_forecast})  ;;
    value_format_name: usd_0
  }

  measure: year_to_date_forecast {
    type: sum
    sql: ${sales} * .98 ;;
    filters: [years_since_order: "0", is_before_day_of_year: "Yes"]
    value_format_name: usd_0
  }

  measure: year_to_date_sales_vs_forecast {
    type: number
    sql: (${year_to_date_sales} - ${year_to_date_forecast}) /  NULLIF(${year_to_date_forecast}, 0) ;;
    value_format_name: percent_0
  }

  measure: year_to_date_sales_vs_forecast_diff {
    type: number
    sql: (${year_to_date_sales} - ${year_to_date_forecast})  ;;
    value_format_name: usd_0
  }


  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.Order_ID ;;
  }

  dimension: person {
    type: string
    sql: ${TABLE}.person ;;
  }

  dimension: postal_code {
    type: number
    sql: ${TABLE}.Postal_Code ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.Product_ID ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.Product_Name ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }

  measure: total_profit {
    type: sum
    sql: ${profit} ;;
    value_format_name: usd
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  measure: total_quantity {
    type: sum
    sql: ${quantity} ;;
    value_format_name: decimal_0
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
    drill_fields: [state, city]
    html: <a href="/dashboards-next/207?Region={{ value }}">{{ value }}</a> ;;
  }

  dimension: returned {
    type: yesno
    sql: ${TABLE}.Returned ;;
  }

  dimension: row_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Row_ID ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  measure: total_sales {
    type: sum
    sql: ${sales} ;;
    value_format_name: usd_0
    drill_fields: [user_details*]
  }

  measure: total_sales_2 {
    type: sum
    sql: ${sales} * 1.1;;
    value_format_name: usd_0
  }

  measure: total_sales_3 {
    type: sum
    sql: ${sales} * 1.2;;
    value_format_name: usd_0
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension_group: ship {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Ship_Date ;;
  }

  dimension: ship_mode {
    type: string
    sql: ${TABLE}.Ship_Mode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.Sub_Category ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name, product_name, orders.order_id, orders.customer_name, orders.product_name]
  }
}
