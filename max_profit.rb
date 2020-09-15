# frozen_string_literal: true

def max_profit(prices)
  curr_min_price = prices[0]
  profit = 0
  prices.each do |i|
    curr_min_price = [curr_min_price, i].min
    profit = [profit, i - curr_min_price].max
  end
  profit
end

p max_profit([7, 1, 5, 3, 6, 4])

p max_profit([7, 6, 4, 3, 1])
