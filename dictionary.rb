def substrings(phrase,dict)
	hist = Hash.new

	dict.each do |word|
		word_count = phrase.downcase.scan(/#{word}/).length
		hist[word] = word_count if word_count > 0
	end
	hist
end