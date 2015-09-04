#v2 - Try to replicate the best solution I found from memory (i.e. not just copy/pasting the code)

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