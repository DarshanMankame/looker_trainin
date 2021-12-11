connection: "bigquery_public_data_looker"

# include all the views
#include: "/views/*.view"

include: "/views/vw_dar_product.view"

explore: vw_dar_product {}
