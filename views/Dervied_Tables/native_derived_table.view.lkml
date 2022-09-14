view: native_derived_table {
  derived_table: {
    explore_source: order_items {
      column: user_id { field: users.id }
      column: total_gross_revenue {}
      column: total_sale_price {}
      column: customer_age { field: users.age }
      column: customer_gender { field: users.gender }
      column: customer_traffic_source { field: users.traffic_source }
      column: first_order_placed {}
      column: latest_order_placed {}
      column: count_distinct_users_in_order_items {}
    }
  }

  dimension: user_id {
    type: number
    primary_key: yes
  }

  measure: count_distinct_users_in_customer_details {
    description: "Total Distinct Customers"
    type: count_distinct
    sql: ${TABLE}.user_id ;;
  }

  measure: count_distinct_users_in_customer_details_html {
    description: "Total Distinct Customers"
    type: number
    sql: ${count_distinct_users_in_customer_details} ;;
    html: <br> <font size=6rem> {{count_distinct_users_in_customer_details}} </font>;;
  }

  dimension: count_distinct_orders {
    description: "Distinct Orders"
    type: number
  }

  dimension: total_gross_revenue {
    description: "Total revenue from completed sales (excluding: cancelled, returned)"
    type: number
    value_format_name: usd
  }

  dimension: total_sale_price {
    description: "Total net sales (includes: cancelled, returned)"
    type: number
    value_format_name: usd
  }

  dimension: customer_age {
    description: "Customer's Age"
    type: number
  }

  dimension: customer_gender {
    description: "Customer's Gender"
    type: string
  }

  dimension: customer_traffic_source {
    description: "Customer's Traffic Source"
    type: string
  }

  dimension: first_order_placed {
    type: date
  }

  dimension: latest_order_placed {
    type: date
  }

  dimension: count_distinct_users_in_order_items {
    description: "Total Distinct Users"
    type: number
  }

  dimension:  days_since_latest_order {
    description: "The number of days since the customer's latest order, modified"
    type: number
    sql: date_diff(DATE '2021-12-22', ${latest_order_placed}, day) ;;
  }

  dimension: is_active {
    description: "Yes = Customer has placed an order in the last 90 days"
    type: yesno
    sql: ${days_since_latest_order} <= 90  ;;
  }

  measure:  average_number_of_days_since_latest_order {
    description: "The Average Number of Days Since a Customer's Last Order"
    type: average
    sql: ${days_since_latest_order} ;;
    value_format_name: decimal_0
  }

  measure: average_customer_lifetime_orders {
    description: "Average Number of Orders a Customer Places over a Lifetime"
    type: average
    sql: ${count_distinct_orders} ;;
    value_format_name: decimal_2
  }

  measure: average_customer_lifetime_revenue {
    description: "Average Revenue per Customer over a Lifetime"
    type: average
    sql: ${total_gross_revenue} ;;
    value_format_name: usd
  }

  measure: is_repeat_customer {
    description: "Yes = Customer has placed at least two orders"
    type: yesno
    sql: ${count_distinct_orders} >= 2  ;;
  }

  dimension: customer_lifetime_order_count_tier {
    type: tier
    tiers: [1, 2, 3, 6, 10]
    sql: ${count_distinct_orders} ;;
    style: integer
  }

  dimension: customer_lifetime_order_count_bucket {
    case: {
      when: {
        sql: ${count_distinct_orders} =1;;
        label: "1 Order"
      }
      when: {
        sql: ${count_distinct_orders} =2;;
        label: "2 Orders"
      }
      when: {
        sql: ${count_distinct_orders} > 2 AND ${count_distinct_orders} <= 5;;
        label: "3 - 5 Orders"
      }
      when: {
        sql: ${count_distinct_orders} > 5 AND ${count_distinct_orders} <= 9;;
        label: "6 - 9 Orders"
      }
      when: {
        sql: ${count_distinct_orders} > 9;;
        label: "10+ Orders"
      }
      else:"Unknown"
    }
  }

  dimension: customer_repeat_order_count_bucket {
    case: {
      when: {
        sql: ${count_distinct_orders} =1;;
        label: "Did Not Place Another Order"
      }
      when: {
        sql: ${count_distinct_orders} >=2;;
        label: "Placed at Least One Subsequent Order"
      }
      else:"Unknown"
    }
  }

  dimension: customer_lifetime_revenue_tier {
    type: tier
    tiers: [0.00, 5.00, 20.00, 50.00, 100.00, 500.00, 1000.00]
    sql: ${total_gross_revenue} ;;
    style: relational
    value_format: "$0.00"
  }

  dimension: customer_lifetime_revenue_bucket {
    case: {
      when: {
        sql: ${total_gross_revenue} >= 0 AND ${total_gross_revenue} <= 4.99;;
        label: "$0.00 - $4.99"
      }
      when: {
        sql: ${total_gross_revenue} > 4.99 AND ${total_gross_revenue} <= 19.99;;
        label: "$5.00 - $19.99"
      }
      when: {
        sql: ${total_gross_revenue} > 19.99 AND ${total_gross_revenue} <= 49.99;;
        label: "$20.00 - $49.99"
      }
      when: {
        sql: ${total_gross_revenue} > 49.99 AND ${total_gross_revenue} <= 99.99;;
        label: "$50.00 - $99.99"
      }
      when: {
        sql: ${total_gross_revenue} > 99.99 AND ${total_gross_revenue} <= 499.99;;
        label: "$100.00 - $499.99"
      }
      when: {
        sql: ${total_gross_revenue} > 499.99 AND ${total_gross_revenue} <= 999.99;;
        label: "$500.00 - $999.99"
      }
      when: {
        sql: ${total_gross_revenue} > 999.99;;
        label: "$1000.00+"
      }
      else:"Unknown"
    }
  }
  #
  dimension: customer_lifetime_sales_bucket {
    case: {
      when: {
        sql: ${total_sale_price} >= 0 AND ${total_sale_price} <= 4.99;;
        label: "$0.00 - $4.99"
      }
      when: {
        sql: ${total_sale_price} > 4.99 AND ${total_sale_price} <= 19.99;;
        label: "$5.00 - $19.99"
      }
      when: {
        sql: ${total_sale_price} > 19.99 AND ${total_sale_price} <= 49.99;;
        label: "$20.00 - $49.99"
      }
      when: {
        sql: ${total_sale_price} > 49.99 AND ${total_sale_price} <= 99.99;;
        label: "$50.00 - $99.99"
      }
      when: {
        sql: ${total_sale_price} > 99.99 AND ${total_sale_price} <= 499.99;;
        label: "$100.00 - $499.99"
      }
      when: {
        sql: ${total_sale_price} > 499.99 AND ${total_sale_price} <= 999.99;;
        label: "$500.00 - $999.99"
      }
      when: {
        sql: ${total_sale_price} > 999.99;;
        label: "$1000.00+"
      }
      else:"Unknown"
    }
  }
}
