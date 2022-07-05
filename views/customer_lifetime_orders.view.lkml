view: customer_lifetime_orders {
  ##native drived tables
  derived_table: {
    sql:
      SELECT
          order_items.user_id  AS order_items_user_id,
          COUNT(*) AS order_items_count,
          sum(order_items.sale_price) as total_revenue,
          min(created_at) as first_order,
          max(created_at) as last_order,
          count(distinct order_id) as lifetime_order_count
      FROM `thelook.order_items` AS order_items
      GROUP BY 1;;
  }

  dimension: user_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.order_items_user_id ;;
  }

  dimension: lifetime_order_count {
    type: number
    sql: ${TABLE}.lifetime_order_count ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: user_buckets {
    type: tier
    style: integer
    tiers: [1,2,3,6,10]
    sql: ${TABLE}.order_items_count ;;
  }

  dimension: user_revenue_buckets {
    type: tier
    style: integer
    tiers: [0,5,20,50,100,500,1000]
    sql: ${TABLE}.total_revenue ;;
    value_format_name: usd
  }

  measure: user_total_revenue {
    type: sum
    sql:  ${TABLE}.total_revenue;;
    value_format_name: usd
  }

  measure: avg_user_lifetime_spend {
    type: average
    sql: ${TABLE}.total_revenue;;
  }

  measure: avg_user_lifetime_orders {
    type: average
    sql: ${TABLE}.order_items_count;;
  }

  dimension: total_users {
    type: number
    sql: ${TABLE}.total_users ;;
  }

  dimension: days_since_order_placed {
    type: duration_day
    sql_start: ${TABLE}.last_order ;;
    sql_end: current_date() ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${days_since_order_placed} <= 90  ;;
  }

  dimension: is_repeat_customer {
    type: yesno
    sql: ${lifetime_order_count} > 1 ;;
  }

  measure: avg_since_order_placed {
    type: average
    sql:  ${days_since_order_placed};;
  }

  set: detail {
    fields: [user_buckets, total_users]
  }
}
