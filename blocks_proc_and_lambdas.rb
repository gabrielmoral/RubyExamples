my_array = ["name", :my_symbol, 23, true, "Hello", :his_symbol]

#Block

my_symbols_with_block = my_array.select do |x|
	x.is_a? Symbol
end

puts my_symbols_with_block

#Proc
my_symbol_proc = Proc.new { |x| x.is_a? Symbol }

my_symbols_with_proc = my_array.select(&my_symbol_proc)

puts my_symbols_with_proc

#Lambda

my_symbol_lambda = lambda { |x| x .is_a? Symbol}

my_symbols_with_lambda = my_array.select(&my_symbol_lambda)

puts my_symbols_with_lambda
