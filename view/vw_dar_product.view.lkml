view: vw_dar_product {
  sql_table_name: cloud-training-demos.looker_ecomm.products ;;

  dimension: product_id {
    primary_key:yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension:  product_cost{
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension:  product_mrp{
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: expensive_product {
    description: "To check if product is expensive or not, if more that $100"
    type:yesno
    sql: ${product_mrp}>=100 ;;
  }
}
