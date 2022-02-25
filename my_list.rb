require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    return unless block_given?
    
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }

list.any? { |e| e == 2 }

list.any? { |e| e == 5 }

list.filter(&:even?)
