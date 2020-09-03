view: bumblebee {
  sql_table_name: `test_mark_cheap_price.Bumblebee`
    ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}.Account_Name ;;
  }

  dimension: api_gateway_type {
    type: string
    sql: ${TABLE}.ApiGateway_type ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: cf_request_type {
    type: string
    sql: ${TABLE}.CF_request_type ;;
  }

  dimension: cloudwatch_type {
    type: string
    sql: ${TABLE}.Cloudwatch_type ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
  }

  dimension: cost_type {
    type: string
    sql: ${TABLE}.Cost_type ;;
  }

  dimension: data_usage_type {
    type: string
    sql: ${TABLE}.Data_Usage_type ;;
  }

  dimension: db_engine1 {
    type: string
    sql: ${TABLE}.DB_engine1 ;;
  }

  dimension: db_engine2 {
    type: string
    sql: ${TABLE}.DB_engine2 ;;
  }

  dimension: db_storage_type {
    type: string
    sql: ${TABLE}.DB_storage_type ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: dynamo_capacity_unit {
    type: string
    sql: ${TABLE}.Dynamo_capacity_unit ;;
  }

  dimension: ebs_provisioned {
    type: string
    sql: ${TABLE}.EBS_provisioned ;;
  }

  dimension: ebs_usage_type {
    type: string
    sql: ${TABLE}.EBS_Usage_type ;;
  }

  dimension: ebs_volume_type {
    type: string
    sql: ${TABLE}.EBS_Volume_type ;;
  }

  dimension: ec2_os {
    type: string
    sql: ${TABLE}.EC2_OS ;;
  }

  dimension: fargate_type {
    type: string
    sql: ${TABLE}.Fargate_type ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.Instance_type ;;
  }

  dimension: lambda_type {
    type: string
    sql: ${TABLE}.Lambda_type ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: month_nm {
    type: string
    sql: ${TABLE}.Month_nm ;;
  }

  dimension: previous_cost {
    type: number
    sql: ${TABLE}.Previous_Cost ;;
  }

  dimension: previous_qty {
    type: number
    sql: ${TABLE}.Previous_Qty ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.Qty ;;
  }

  dimension: qty_720 {
    type: number
    sql: ${TABLE}.Qty_720 ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: s3_class {
    type: string
    sql: ${TABLE}.S3_class ;;
  }

  dimension: s3_request {
    type: string
    sql: ${TABLE}.S3_request ;;
  }

  dimension: usage_type {
    type: string
    sql: ${TABLE}.Usage_type ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }

  dimension: year_nm {
    type: string
    sql: ${TABLE}.Year_nm ;;
  }

  dimension: yyyymm {
    type: string
    sql: ${TABLE}.YYYYMM ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }

  measure: Cost {
    type: sum
    sql: ${cost} ;;
    value_format:"$#,###.00;($#,###.00)"
  }

  measure: Gap {
    type: sum
    sql: ${cost} -${previous_cost} ;;
    value_format:"$#,###.00;($#,###.00)"
  }
}
