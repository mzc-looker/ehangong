view: bumblebee_data_trans_5 {
  sql_table_name: `test_mark_cheap_price.bumblebee_data_trans_5`
    ;;

  dimension: agent_key {
    type: string
    sql: ${TABLE}.agent_key ;;
  }

  dimension: cnt {
    type: string
    sql: ${TABLE}.cnt ;;
  }

  dimension: date_key {
    type: string
    sql: ${TABLE}.date_key ;;
  }

  dimension: dc {
    type: string
    sql: ${TABLE}.dc ;;
  }

  dimension: employee_key {
    type: string
    sql: ${TABLE}.employee_key ;;
  }

  dimension: item_key {
    type: string
    sql: ${TABLE}.item_key ;;
  }

  dimension: orderno {
    type: string
    sql: ${TABLE}.orderno ;;
  }

  dimension: price1 {
    type: string
    sql: ${TABLE}.price1 ;;
  }

  dimension: price2 {
    type: string
    sql: ${TABLE}.price2 ;;
  }

  dimension: sales_amount {
    type: string
    sql: ${TABLE}.sales_amount ;;
  }

  dimension: salesterr_key {
    type: string
    sql: ${TABLE}.salesterr_key ;;
  }

  dimension: tax {
    type: string
    sql: ${TABLE}.tax ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
