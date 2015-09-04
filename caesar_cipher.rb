#v1
def caesar_cipher(string,key)
	alphabet = %w(a b c d e f g h i j k l m n o p w r s t u v w x y z)

	encrypted = string.scan(/./).collect do |char| 
		# Ignore non-alphabet characters
		if !alphabet.include?(char.downcase)
			char
		else
			# Account for uppercase words
			if char == char.upcase
				alpha_index = alphabet.index(char.downcase)

				# Wrap z to a if needed
				if alpha_index+key >= alphabet.length
					alphabet[alpha_index + key - alphabet.length].upcase
				else # Otherwise just shift according to key
					alphabet[alpha_index+key].upcase
				end

			# Lowercase equivalent (not DRY, requires refactoring)
			else
				alpha_index = alphabet.index(char)
				if alpha_index+key >= alphabet.length
					alphabet[alpha_index + key - alphabet.length]
				else
					alphabet[alpha_index+key]
				end
			end
		end
	end
	encrypted.join
end