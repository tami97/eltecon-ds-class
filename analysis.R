library(ggplot2)
library(data.table)

sales <- fread("data/sales.csv")

ggplot(sales, aes(x = customer_lifecycle_status, fill = customer_lifecycle_status)) +
  geom_bar() + 
  geom_label(stat = 'count', aes(label = ..count..)) + 
  labs(
    title = "Number of sales by costumer lifecycle status",
    x = "costumer lifecycle status"
  ) + 
  theme_minimal() + 
  theme(legend.position = "none", plot.title = element_text(hjust = 0.5)) + 
  scale_fill_brewer(palette="BuGn")