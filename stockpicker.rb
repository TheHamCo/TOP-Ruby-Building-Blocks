def stockpicker(prices)
	max = 0
	min = 0
	prices.each_index do |a|
		# puts "a #{a}"
		prices.each_index do |b|
			# puts "b #{b}"
			# puts "max = #{max}"
			# puts "min = #{min}"
			# puts "stuff min = #{prices[min]}"
			# puts "stuff max = #{prices[max]}"
			# puts "itsub #{prices[b]-prices[a]} pre sub #{(prices[max])-(prices[min])}"
			# puts "#{prices[b]-prices[a] > prices[max]-prices[min]}"
			if b>a && prices[b]-prices[a] > prices[max]-prices[min]
				# puts "found one!"
				max = b
				min = a
				# puts "max = #{b}"
				# puts "min = #{a}"
			end
		end
	end
	days = [min,max]
	# puts "done! #{min} #{max}"
end

# stockpicker([17,3,6,9,15,8,6,1,10])
# stockpicker([1,2])
# prices[b]>prices[a] && 
# b>a && 