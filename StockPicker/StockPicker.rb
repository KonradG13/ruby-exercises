def stock_picker(prices)
  max_profits_for_each_day = []
  max_profits_day_pairs = []
  last_day = prices.length()
  prices.each_with_index do |buy_price, day|
    profit = 0
    profit_day = day
    for trading_day in day...last_day do
      days_profit = prices[trading_day]-buy_price
      if days_profit>profit
        profit = days_profit
        profit_day = trading_day
      end
    end
    max_profits_for_each_day.append(profit)
    max_profits_day_pairs.append([day,profit_day])
  end
  max_profit = max_profits_for_each_day.max()

  max_profit_trade_days = []
  max_profits_day_pairs.each_with_index do |pair, index|
    if max_profits_for_each_day[index] == max_profit
      max_profit_trade_days.append(pair)      
    end
  end
  

  p max_profits_for_each_day
  p max_profits_day_pairs
  p max_profit
  p max_profit_trade_days
  return max_profit_trade_days
  
end

stock_picker([17,3,6,9,15,8,6,1,10])