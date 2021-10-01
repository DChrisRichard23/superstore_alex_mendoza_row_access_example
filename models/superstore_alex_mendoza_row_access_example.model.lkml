connection: "superstore_alex_mendoza_row_access_example"

# include all the views
include: "/views/**/*.view"

datagroup: superstore_alex_mendoza_row_access_example_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: superstore_alex_mendoza_row_access_example_default_datagroup

explore: orders_analysis {
  # access_filter: {
  #   field: email
  #   user_attribute: email
  # }
  join: order_date {
    from: date_table
    type: left_outer
    sql_on: ${orders_analysis.order_raw} = ${order_date.date_raw} ;;
    relationship: many_to_one
  }
  join: ship_date {
    from: date_table
    type: left_outer
    sql_on: ${orders_analysis.ship_raw} = ${ship_date.date_raw} ;;
    relationship: many_to_one
  }
}
