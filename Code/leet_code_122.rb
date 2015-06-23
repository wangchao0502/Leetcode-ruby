# Say you have an array for which the ith element is the price of a given stock on day i.

# Design an algorithm to find the maximum profit. You may complete as many transactions
# as you like (ie, buy one and sell one share of the stock multiple times). However, you
# may not engage in multiple transactions at the same time (ie, you must sell the stock \
# before you buy again).

class Leet_Code_122
  def max_profit(prices)
    total_earn = 0
    for i in 1...prices.length
      total_earn += [0, prices[i] - prices[i - 1]].max
    end
    total_earn
  end
end