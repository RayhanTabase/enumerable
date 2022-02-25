module MyEnumerable
  
  def all?(&block)
    result = true
    each { |number| result = false unless block.call(number) }
    return result
  end

  def any?(&block)
    result = false
    each { |number| result = true if block.call(number) }
    result
  end

  def filter(&block)
    result = []
    each { |number| result << number if block.call(number) }
    result
  end

end