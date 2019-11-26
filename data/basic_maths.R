require(tidyverse)

buying_rate <- readxl::read_xlsx("./projected_prices.xlsx", "change_buying", skip = 1)
selling_rate <- readxl::read_xlsx("./projected_prices.xlsx", "change_selling", skip = 1)
buy_projection <- readxl::read_xlsx("./projected_prices.xlsx", "base_buying")
sell_projection <- readxl::read_xlsx("./projected_prices.xlsx", "base_selling")

buying_rate * buy_projection

as.matrix(buying_rate) * (as.matrix(buy_projection))

yearly_shit