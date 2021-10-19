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
      month_name
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Order_Date ;;
  }

  dimension_group: hidden_today {
    type: time
    timeframes: [day_of_month, day_of_year]
    hidden: yes
    sql: DATE(current_timestamp(), "America/New_York") ;;
  }

  dimension: is_before_day_of_month {
    type: yesno
    sql: ${order_day_of_month} <= ${hidden_today_day_of_month} ;;
  }

  dimension: is_before_day_of_year {
    type: yesno
    sql: ${order_day_of_year} <= ${hidden_today_day_of_year} ;;
  }

  # dimension: months_ago {
  #   type: number
  #   sql: DATE_DIFF(DATE(current_timestamp(), "America/New_York") , CAST(${order_date} AS DATE), MONTH) ;;
  # }

  # dimension: years_ago {
  #   type: number
  #   sql: DATE_DIFF(DATE(current_timestamp(), "America/New_York") , CAST(${order_date} AS DATE), YEAR) ;;
  # }

  dimension_group: ago {
    type: duration
    intervals: [month, week, day, year]
    sql_start: ${order_date} ;;
    sql_end: DATE(current_timestamp(), "America/New_York") ;;
  }

  measure: month_to_date_sales {
    type: sum
    sql: ${sales} ;;
    filters: [months_ago: "0", is_before_day_of_month: "Yes"]
    value_format_name: usd_0
  }

  measure: prior_month_to_date_sales {
    type: sum
    sql: ${sales} ;;
    filters: [months_ago: "1", is_before_day_of_month: "Yes"]
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

  measure: year_to_date_sales {
    type: sum
    sql: ${sales} ;;
    filters: [years_ago: "0", is_before_day_of_year: "Yes"]
    value_format_name: usd_0
  }

  measure: prior_year_to_date_sales {
    type: sum
    sql: ${sales} ;;
    filters: [years_ago: "1", is_before_day_of_year: "Yes"]
    value_format_name: usd_0
  }

  measure: year_over_year_sales_pdiff {
    type: number
    sql: (${year_to_date_sales} - ${prior_year_to_date_sales}) / NULLIF(${prior_year_to_date_sales}, 0) ;;
    value_format_name: percent_1
  }

  measure: year_over_year_sales_diff {
    type: number
    sql: (${year_to_date_sales} - ${prior_year_to_date_sales})  ;;
    value_format_name: usd_0
  }

  measure: month_to_date_plan {
    type: sum
    sql: ${sales} * 1.1 ;;
    filters: [months_ago: "0", is_before_day_of_month: "Yes"]
    value_format_name: usd_0
  }

  measure: year_to_date_plan {
    type: sum
    sql: ${sales} * 1.1 ;;
    filters: [years_ago: "0", is_before_day_of_year: "Yes"]
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
    filters: [months_ago: "0", is_before_day_of_month: "Yes"]
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
    filters: [years_ago: "0", is_before_day_of_year: "Yes"]
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

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
    drill_fields: [state, city]
  }

  dimension: returned {
    type: yesno
    sql: ${TABLE}.Returned ;;
  }

  dimension: row_id {
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
