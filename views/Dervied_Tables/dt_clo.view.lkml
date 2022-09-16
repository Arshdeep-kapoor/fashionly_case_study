view: dt_clo {
  derived_table: {
    explore_source: order_items {
      column: user_id {}
      column: count {}
      column: created_date {}
    }
  }
  dimension: user_id {
    type: number
    primary_key: yes
  }
  dimension: count {
    description: ""
    type: number
  }
  dimension: created_date {
  }
}
