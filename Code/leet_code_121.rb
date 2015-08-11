class Leet_Code_121
  # If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock),
  #  design an algorithm to find the maximum profit.

  # @param {Integer[]} prices
  # @return {Integer}

  def max_profit(prices)
    return 0 if prices.size < 2
    index = prices.size - 3
    max_v, max_d = prices[-2..-1].max, prices[-1] > prices[-2] ? prices[-1] - prices[-2] : 0
    while index >= 0
      max_d = [max_v - prices[-(prices.size - index)], max_d].max
      max_v = [max_v, prices[-(prices.size - index)]].max
      index -= 1
    end
    max_d
  end


end