view: order_items_x_inventory {

  dimension: gross_margin_amount {
    type: number
    sql: ${order_items.sale_price} - ${inventory_items.cost} ;;
  }

  measure: total_gross_cost {
    type: sum
    sql: ${inventory_items.cost};;
    filters: [order_items.status: "Complete"]
    value_format_name: usd_0
  }

  measure: total_gross_margin_amount {
    type: sum
    sql: ${gross_margin_amount} ;;
    value_format_name: usd_0
  }

  measure: average_gross_margin {
    type: average
    sql: ${gross_margin_amount} ;;
  }

  measure: gross_margin_percent {
    type: number
    value_format_name: percent_2
    sql: ${total_gross_margin_amount} / NULLIF(${order_items.total_gross_revenue},0) ;;
  }


}
