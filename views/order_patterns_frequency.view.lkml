view: order_patterns_frequency {

    derived_table: {

#     sql_trigger_value: SELECT CURRENT_DATE() ;; --uncomment for persistence, but be careful of Templated Filter

      sql: SELECT

      ROW_NUMBER() OVER(ORDER BY order_date) as rownumber,*

      FROM

        ( SELECT

        order_items.user_id as user_id,
        order_items.id AS order_id,
        p.category as category,
        order_items.created_at as order_date,
        MIN(order_items.created_at) OVER(PARTITION BY order_items.user_id) as first_order_date,
        COUNT(order_items.id) OVER(partition by order_items.user_id) as lifetime_orders,
        ROW_NUMBER() OVER(PARTITION BY order_items.user_id ORDER BY order_items.created_at) as order_sequence_number,
        LEAD(order_items.created_at) OVER(partition by order_items.user_id ORDER BY order_items.created_at) as next_created_at,
        DATE_DIFF(CAST(order_items.created_at as date),CAST(LEAD(order_items.created_at) over(partition by order_items.user_id ORDER BY order_items.created_at) AS date), DAY) as next_order_gap,
        DATE_DIFF(CURRENT_DATE,CAST(MIN(order_items.created_at) OVER(partition by order_items.user_id) as DATE), DAY) as days_since_first_order
        FROM  order_items
        JOIN inventory_items ii
        ON order_items.inventory_item_id=ii.id
        JOIN products p
        on ii.product_id = p.id
        WHERE {% condition product_category %} p.category {% endcondition %}
        GROUP BY 1,2,3,4
        )
        ;;

    }

  filter: product_category {
    suggest_explore: products
    suggest_dimension: products.category
  }

    dimension: category {
      sql:${TABLE}.category ;;
      type:string
      }

    dimension: row_number {
      primary_key: yes
      hidden: yes
      sql: ${TABLE}.rownumber ;;
    }

    measure: count {
      hidden:yes
      type: count
    }

    dimension: user_id {
      hidden: yes
    }

    dimension: lifetime_orders {
      sql: ${TABLE}.lifetime_orders ;;
      hidden: yes
    }

    dimension_group: first_order_date {
      sql: ${TABLE}.first_order_date ;;
      type: time
      timeframes: [month,month_name,year]
    }

    dimension: lifetime_orders_tier {
      sql: ${lifetime_orders} ;;
      type: tier
      tiers: [1,2,3,4,5,6,7,8,9,10]
      style: integer
    }

    dimension: order_id {
      type: string
      sql: ${TABLE}.order_id ;;
    }

    dimension: order_date {
      hidden:yes
      type: string
      sql: ${TABLE}.order_date ;;
    }


    dimension: order_sequence_number {
      type: string
      sql: ${TABLE}.order_sequence_number ;;
    }


    dimension: next_created_at {
      type: string
      sql: ${TABLE}.next_created_at ;;
    }


    dimension: next_order_gap {
      type: number
      sql: ${TABLE}.next_order_gap ;;

    }


    dimension: repurchase_tier {
      type: tier
      tiers: [30,60,90,120,150,180]
      style: integer
      sql: ${next_order_gap} ;;
    }

    dimension: days_since_first_order {
      type: number
      sql: ${TABLE}.days_since_first_order ;;

    }

    dimension: days_since_first_order_tier {
      type: tier
      tiers: [30,60,90,120,150,180]
      style: integer
      sql: ${days_since_first_order} ;;
    }

    measure: count_repurchase_order {
      type: count_distinct
      sql: ${user_id} ;;
      filters: {
        field: next_order_gap
        value: "NOT NULL"
      }

      filters: {
        field: order_sequence_number
        value: "2"
      }

    }

    ### Using an Average Distinct measure will get the average time it takes for a user to make a 2nd purchase

    ### and disregard duplicate users and subsequent orders

    measure: average_repurchase_gap {
      type: average_distinct
      sql: ${next_order_gap} ;;
      sql_distinct_key: ${order_id} ;;
      filters: {
        field: order_sequence_number
        value: "2"
      }
    }


 }
