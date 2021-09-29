connection: "superstore_alex_mendoza_row_access_example"

# include all the views
include: "/views/**/*.view"

datagroup: superstore_alex_mendoza_row_access_example_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: superstore_alex_mendoza_row_access_example_default_datagroup

explore: orders_analysis {
}
