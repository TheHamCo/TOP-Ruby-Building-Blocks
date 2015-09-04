#v1 - My original solution, created before looking at any other solutions

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

#Below is the cleanest solution I found on TOP (and passes all rspec test cases)
#from https://github.com/aclapinpepin/caesar-cipher/blob/master/caesar_cipher.rb

=begin
def caesar_cipher(str, shift)
  downcase_alph = ("a".."z").to_a
  upcase_alph = ("A".."Z").to_a
  output = ""

  str.each_char do |c|
    idx = downcase_alph.index(c) || upcase_alph.index(c)
    encryption = (idx + shift) % 26 if idx
    if downcase_alph.include?(c)
      output << downcase_alph[encryption]
    elsif upcase_alph.include?(c)
      output << upcase_alph[encryption]
    else
      output << c
    end
  end

  output
end
=end

# Things I can learn from this:
# 1. Arrays initialized using ranges
# 2. Accounts for capitals using separate arrays
# 3. Uses #each_char  
	# Equivalent to #each for arrays
# 4. Uses conditional assignment.  DRY
# 5. Accounts for z to a wraparound using modulus
# 6. The code is easily readable 
# 	and the functionality is clear even without commenting
#
# 	It is clear from just glancing at the code that 
# 	there are three cases of characters
# 	uppercase, lowercase, and non-alphabet characters
# 
# 	a. Minimal nesting of loops and blocks
# 	b. Math operations are kept separate
# 	c. However, didn't create more variables than necessary

# It's important to know how the modulus treats cases where
# the first operand < the second
# e.g. 3%5 = 3, because you can't divide 3 by 5