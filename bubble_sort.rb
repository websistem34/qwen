# Сортировка пузырьком на Ruby

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

# Пример использования:
if __FILE__ == $PROGRAM_NAME
  arr = [5, 3, 8, 4, 2]
  puts "Исходный массив: #{arr.inspect}"
  sorted_arr = bubble_sort(arr.dup)
  puts "Отсортированный массив: #{sorted_arr.inspect}"
end
