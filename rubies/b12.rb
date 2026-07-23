def coin_change(coins, amount)
    dp = Array.new(amount + 1, Float::INFINITY)
    dp[0] = 0

    (1..amount).each do |i|
        coins.each do |coin|
            if i >= coin
                dp[i] = [dp[i], dp[i - coin] + 1].min
            end
        end
    end

    if dp[amount] == Float::INFINITY
      return - 1
    else
      return dp[amount]
    end
end

coins = [1,2,5]
amount = 11
p coin_change(coins, amount)