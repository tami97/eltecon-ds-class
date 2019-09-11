library(ggplot2)
library(data.table)

sales <- fread("data/sales.csv")

ggplot(sales, aes(x = customer_lifecycle_status)) +
  geom_bar() +  
  geom_label(stat = 'count', aes(label = ..count..)) +
  labs(
    title = "Sales count by costumer lifecycle status",
    x = "costumer lifecycle status"
  )