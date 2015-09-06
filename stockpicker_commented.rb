# v3 5sep2015
def stockpicker(prices)
	# 
	# Implement a method stock_picker that takes in an array of stock prices, 
	# one for each hypothetical day. It should return a pair of days representing 
	# the best day to buy and the best day to sell. Days start at 0.
	# Quick Tips:
	# 	You need to buy before you can sell
	# 	Pay attention to edge cases like 
	# 		when the lowest day is the last day 
	# 		or the highest day is the first day.


	# Initialize the max amd min days
	# Choose index of prices's minimum so conditional can work later
	# for the "lowest day is the last day" edge case
	max = prices.index(prices.min) # Need to improve this so it isn't confusing
	min = prices.index(prices.max)

	# Iterate through the prices, comparing each price only with prices to the right
	prices.each_with_index do |stock_a, a|
		(a+1).upto(prices.length-1) do |b|

			stock_b = prices[b]
			if  # Find the largest profit possible
				stock_b-stock_a >= prices[max]-prices[min] && 
				# This line is for the case where 
				# there are multiple days where the prices are the same.
				# It forces the earliest best day to buy and
				# the earliest best day to sell
				[prices[max], prices[min]] != [stock_b,stock_a]

				max = b
				min = a
			end
		end
	end
	days = [min,max]
end