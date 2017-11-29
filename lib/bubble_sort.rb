def bubble_sort(array)
  loop do
    count = 0
    (0...array.length - 1).each do |i|
      if array[i] > array[i + 1]
        count += 1
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
    break if count.zero?
  end
  array
end

def bubble_sort_by(array)
  loop do
    count = 0
    (0...array.length - 1).each do |i|
      if yield(array[i], array[i + 1]) > 0
        count += 1
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
    break if count.zero?
  end
  array
end