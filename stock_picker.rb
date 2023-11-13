# frozen_string_literal: true

def stock_picker(stock_prices)
  max_profit = 0
  min_buy = stock_prices.first
  min_buy_index = 0

  stock_prices.each.with_index.with_object([]) do |(price, index), days|
    if (price - min_buy) > max_profit
      max_profit = (price - min_buy)
      days[0] = min_buy_index
      days[1] = index
    end

    if price < min_buy
      min_buy = price
      min_buy_index = index
    end
  end
end
