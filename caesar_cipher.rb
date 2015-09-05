#v2 - Try to replicate a solution I found, from memory (i.e. not just copy/pasting the code)

def caesar_cipher(string,key)
	a_lower = ('a'..'z').to_a
	a_upper = ('A'..'Z').to_a
	shifted_str = ''

	string.each_char do |char|
		alpha_ind = a_lower.index(char) || a_upper.index(char)
		shifted_ind = (alpha_ind + key) % 26 if alpha_ind

		if a_upper.include?(char)
			shifted_str << a_upper[shifted_ind]
		elsif a_lower.include?(char)
			shifted_str << a_lower[shifted_ind]
		else
			shifted_str << char
		end
		end
		shifted_str
end




# Found another clean, short solution copied below, but the functionality is hidden by the #tr
# from https://github.com/lockemind/caeser_cipher/blob/master/caeser_cipher.rb

# def caesar_cipher text, key
# 	alphabet = ('a'..'z').to_a.join
# 	i = key % alphabet.size

# 	encrypt = alphabet[i..-1] + alphabet[0...i]

# 	text = text.tr(alphabet, encrypt)
# 	text.tr(alphabet.upcase, encrypt.upcase)
	
# end

#Not as readable, but code is shorter
#I will need to study this.




# Another one, uses regex:
# def caesar_cipher(string, key)
#   key %= 26
#   chars = string.split("").map do |char|
#     if char =~ /[^A-Za-z]/
#       char
#     else
#       low_char = (char =~ /[a-z]/? "a" : "A")
#       ((char.ord + key - low_char.ord) % 26 + low_char.ord).chr
#     end
#   end
#   chars.join
# end



# A third, uses more regex
# https://github.com/Rodic/Odin-Ruby-Projects/blob/master/Projects:%20Ruby%20Building%20Blocks/lib/caesar.rb
# def shift_letter(l, pos)
#   if l =~ /[^A-Za-z]/
#     l
#   elsif l =~ /[a-z]/
#     ((l.ord + pos - 'a'.ord) % 26 + 'a'.ord).chr
#   else
#     shift_letter(l.downcase, pos).upcase
#   end
# end
# def caesar_cipher(str, factor)
#   str.chars.map {|c| shift_letter(c, factor)}.join
# end


#A fourth, uses #rotate, among other things
# https://github.com/ll14m4n/the-odin-project/blob/master/3_Ruby_building-blocks/lib/caesar_cipher.rb
# def caesar_cipher(str, factor)
#   letters = ('a'..'z').to_a
#   capitals = ('A'..'Z').to_a
#   keys = letters+capitals
#   values = letters.rotate(factor) + capitals.rotate(factor)
#   cipher = Hash[keys.zip(values)]

#   str.split('').map{|l| cipher[l] || l}.join
# end
