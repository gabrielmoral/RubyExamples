class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    result = initial_value
    @array.each do |v|
      if block_given?
        result += yield(v)
      else
        result += v
      end
    end
    result
  end

  def length_finder(input_array)
    length_array = input_array.map do |s| 
    	s.length
    end
  end

  def find_frequency(sentence, word)
    sentence.split(" ").map! { |x| x.downcase }.count(word)
  end

  def sort_string(string)
    string.split(" ").sort! { |x, y| x.length <=> y.length }.join(" ")
  end

  def random_select(array, n)
    result = []
    n.times do 
      result << array[rand(array.length)]
    end
    result
  end

end

my_array = MyArray.new([1, 2, 3]) 
puts my_array.sum 
puts my_array.sum(10)  
puts my_array.sum(0) {|n| n ** 2 } 

puts my_array.length_finder(["Hello", "world"])
puts my_array.sort_string("from am Valencia I")
puts my_array.find_frequency("The world is amazing, the sea is awesome", "the")

