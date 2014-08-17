#ifs

puts "Hello from Ruby if mode" if 1 == 1

if 1 == 1
	puts "Hello from classical if mode"	
end


#loops

count = 1
until count == 2
	puts "Hello from until loop"
	count = 2
end

while count == 2
	puts "Hello from while loop"
	count = 1
end

array = 0..5

for i in array
	puts "Hello #{i} from classical loop"
end

array.each do | i | puts "Hello #{i} from expression loop" end


