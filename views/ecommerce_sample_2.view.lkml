view: ecommerce_sample_2 {
  sql_table_name: `test_mark_cheap_price.ecommerce_sample_2`
    ;;

  dimension: taxless_total_price {
    type: number
    sql: ${TABLE}.taxless_total_price ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
