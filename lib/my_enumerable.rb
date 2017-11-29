module Enumerable
  def my_each
    for item in self do
      yield(item)
    end
  end

  def my_each_with_index
    i = 0
    for item in self do
      yield(item, i)
      i += 1
    end
  end

  def my_select
    selections = []
    my_each { |item| selections << item if yield(item) }
    selections
  end

  def my_all?
    if block_given?
      my_each { |item| return false unless yield(item) }
    else
      my_each { |item| return false unless item }
    end
    true
  end

  def my_any?
    if block_given?
      my_each { |item| return true if yield(item) }
    else
      my_each { |item| return true if item }
    end
    false
  end

  def my_none?
    if block_given?
      my_each { |item| return false if yield(item) }
    else
      my_each { |item| return false if item }
    end
    true
  end

  def my_count
    count = 0
    my_each { count += 1 }
    count
  end

  def my_map(proc = nil)
    remap = []
    my_each do |item|
      remap << proc.call(item) unless proc.nil?
      remap << yield(item) if proc.nil?
    end
    remap
  end

  def my_inject(accumulator)
    my_each do |item|
      accumulator = yield(accumulator, item)
    end
    accumulator
  end
end

def multiply_els(array)
  array.my_inject(1) { |product, num| product * num }
end