# v3 5sep2015
def stockpicker(prices)
	max = prices.index(prices.min)
	min = prices.index(prices.max)
	prices.each_with_index do |stock_a, a|
		(a+1).upto(prices.length-1) do |b|
			stock_b = prices[b]
			if  stock_b-stock_a >= prices[max]-prices[min] && 
				[prices[max], prices[min]] != [stock_b,stock_a]

				max = b
				min = a
			end
		end
	end
	days = [min,max]
end