# If necessary, uncomment the line below to include explore_source.
# include: "arsh_case_study.model.lkml"

view: dt_test_case {
  derived_table: {
    explore_source: order_items {
      column: first_name { field: users.first_name }
      column: last_name { field: users.last_name }
      column: username { field: users.username }
      column: order_count {}
    }
  }

  dimension: first_name {
    description: "First Name of customer"
  }
  dimension: last_name {
  }
  dimension: username {
  }
  dimension: order_count {
    description: "A count of unique orders"
    type: number
  }
  dimension: if_order_more_50 {
    type: yesno
    sql: ${order_count} >= 50 ;;
  }
  measure: customer_count {
    type: sum
    sql: ${username} ;;
  }
}
