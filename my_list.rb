require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end
value = MyList.new(1, 2, 3, 4)
# Test #all?
value.all? { |e| e < 5 }
# => true
value.all? { |e| e > 5 }
# => false

# Test #any?
value.any? { |e| e == 2 }
# => true
value.any? { |e| e == 5 }
# => false

# Test #filter
value.filter(&:even?)
# => [2, 4]

puts 2 + 2
