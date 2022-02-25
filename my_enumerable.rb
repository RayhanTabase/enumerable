module MyEnumerable
  def all?(*)
    result = true
    each { |number| result = false unless yield number }
    result
  end

  def any?(*)
    result = false
    each { |number| result = true if yield number }
    result
  end

  def filter(*)
    result = []
    each { |number| result << number if yield number }
    result
  end
end
