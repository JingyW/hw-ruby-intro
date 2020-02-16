=begin
Jingyuan Wang (jw3732)
=end
def sum arr
	sum = 0
	arr.each { |num|
		sum += num
	}
	return sum
end

def max_2_sum arr
	max_one = 0
	max_two = 0
	if arr.length == 0
		return 0
	elsif arr.length == 1
		return arr[0]
	else
		max_one = arr[0]
		max_two = arr[1]
		arr.each_with_index do |num, ind| 
			if ind <= 1
				next
			elsif num > max_one
				max_one = num
			elsif num > max_two
				max_two = num
			end	
		end
	end
	return max_one + max_two
end

def sum_to_n? arr, n
	if arr.length < 2
		return false
	end
	arr.sort!
	s_pointer = 0
	l_pointer = arr.length-1
	while s_pointer < l_pointer
		s_num = arr[s_pointer]
		l_num = arr[l_pointer]
		if s_num + l_num == n
			return true
		elsif s_num + l_num < n
			s_pointer += 1
		else
			l_pointer -= 1 
		end
	end	
	return false 
end

# Part 2

def hello(name)
	return "Hello, " + name 
end

def starts_with_consonant? s
	return s.match?(/^[bcdfghjklmnpqrstvwxyz].*/i)
end

def binary_multiple_of_4? s
	if s !~ /[^01]/ and s.length > 0
		return s.to_i(2) % 4 == 0	
	else
		return false
	end
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		raise ArgumentError, 'isbn cannot be empty' unless isbn.length > 0
		raise ArgumentError, 'price cannot be negative' unless price > 0 
		@isbn = isbn 
	  @price = price 
	end
	
	def isbn
		return @isbn
	end
	def isbn=(new_num)
		@isbn = new_num
	end

	def price
		return @price
	end
	def price=(new_price)
		@price = new_price
	end

	def price_as_string
		return sprintf("$%.2f", @price)
	end
end
