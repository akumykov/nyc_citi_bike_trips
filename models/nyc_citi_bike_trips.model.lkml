connection: "google_bigquery_public"

# include all the views
include: "/views/**/*.view"

datagroup: nyc_citi_bike_trips_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: nyc_citi_bike_trips_default_datagroup

explore: citibike_stations {}

explore: citibike_trips {}
