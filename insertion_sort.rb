# Сортировка вставками (Insertion Sort) на Ruby

def insertion_sort(arr)
  # Проходим по массиву, начиная со второго элемента
  (1...arr.length).each do |i|
    key = arr[i]
    j = i - 1

    # Перемещаем элементы массива [0..i-1], которые больше key,
    # на одну позицию вперед от их текущей позиции
    while j >= 0 && arr[j] > key
      arr[j + 1] = arr[j]
      j -= 1
    end
    
    # Вставляем key на его правильное место
    arr[j + 1] = key
  end
  
  arr
end

# Пример использования
if __FILE__ == $PROGRAM_NAME
  array = [12, 11, 13, 5, 6]
  puts "Исходный массив: #{array.inspect}"
  
  sorted_array = insertion_sort(array.dup)
  puts "Отсортированный массив: #{sorted_array.inspect}"
end
