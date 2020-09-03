view: bumblebee_cost_top5_by_product {
  sql_table_name: `test_mark_cheap_price.Bumblebee_Cost_Top5_by_Product`
    ;;

  dimension: month_cost {
    type: number
    sql: ${TABLE}.MonthCost ;;
  }

  dimension: month_nm {
    type: string
    sql: ${TABLE}.Month_nm ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: product_cost {
    type: number
    sql: ${TABLE}.ProductCost ;;
  }

  dimension: year_cost {
    type: number
    sql: ${TABLE}.YearCost ;;
  }

  dimension: year_nm {
    type: string
    sql: ${TABLE}.Year_nm ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
