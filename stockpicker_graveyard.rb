# def stockpicker(prices)
# 	# buy_sell_days = prices.map do |price|
# 	# end

# 	#Go through array, finding a min to the left of max
# 	#(or a max to the right of min)
# 	#How can we check to see if the min number is to the left of a max number?
# 	#It has a smaller index.
# 	#How do we find the second to last number?
# 	#set the min to nil
# 	original_prices = prices
# 	days = []
# 	# days = prices.index(prices.minmax[0]) < prices.index(prices.minmax[1])
# 	#until prices.length == 1
# 	min = prices.min
# 	max = prices.max

# 	min_day = original_prices.index(min)
# 	max_day = original_prices.index(max)

# 	if  min_day < max_day
# 		days = [min_day,max_day]
# 		#break
# 	else
# 		prices.delete(min)
# 		prices.delete(max)
# 		stockpicker(prices)
# 	#end	
# end
# end

# def stockpicker(prices)
# 	lasty = prices[0]

# 	prices.each do |x|
# 		prices.each do |y|
# 			if x - y <= x - lasty
# 				'yes'
# 			else
# 				last = y
# 			end
# 		end
# 	end
# 			#if the current x - current y is smaller than the current x and last y,
# 			#then the max min pair is the current x and the current y
# 			#otherwise, reassign x and y

# end

# stockpicker([0,1])

def stockpicker(prices)
	m = prices.min do |a,b|
		puts "#{a} : #{b}"
		# puts "#{a<=>b}\n\n"
		# a<=>b
		if prices.index(a) < prices.index(b) && a<=>b
			1
		else
			-1
		end
	end

	puts "\n\n#{m}"
end

stockpicker([1,2,3,4,0])

# def stockpicker(prices)

# 	original_prices = prices
# 	prices.reverse!

# 	min = prices[0]
# 	max = min

# 	prices.each do |x|
# 		prices.each do |y|
# 			if y-x > min-max
# 				max = x
# 				min = y
# 			end
# 		end
# 	end
# 	days = [min,max]
# end