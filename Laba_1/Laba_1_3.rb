def array_min(array) # Минимум
  min = 100
  for item in array do
    if min > item  then
      min = item 
    end
  end
  min
end

def array_max(array) # Максимум
  max = 0
  for item in array do
    if max < item  then
      max = item
    end
  end
  max
end

def array_sum(array) # Сумма
  sum = 0
  for item in array do
    sum += item
  end
  sum
end

def array_mult(array) # Произведение
  mult = 1
  for item in array do
    mult *= item
  end
  mult
end

def main
    puts "Выбирете метод:
    1) Сумма
    2) Минимум
    3) Максимум
    4) Произведение"
    my_method = ARGV[0]

    puts "Откуда взять массив?
    1) Клавиатура
    2) Файл"
    my_option = ARGV[1]

    my_arr = Array.new

    case my_option
    when "1"
      puts "Пишете массив через пробел"
        my_arr = STDIN.gets.chomp.split.map(&:to_i)
    when "2"
        puts "Нужен адрес файла" 
        my_address = STDIN.gets.chomp
        my_str = IO.read(my_address) # C:\Users\[name_pc_user]\....\[name file].txt
        my_arr = my_str.split.map(&:to_i)
    else
        puts "Ошибка в выборе источника массива"
    end

    case my_method
    when "1"
        puts array_sum(my_arr)
    when "2"
        puts array_min(my_arr)
    when "3"
        puts array_max(my_arr)
    when "4"
        puts array_mult(my_arr)
    else
        puts "Ошибка в выборе метода"
    end
end

main

# срочка с мапом, ввод всех аргументов программы, 5 способов добавить элементы масива, на 8 элемента записать.
# map-это класс Arrae

# split- клфсс String
# по индексу, без очереди, очередь

#array = %w(a b c)
#array.map.with_index { |ch, idx| [ch, idx] }
# [["a", 0], ["b", 1], ["c", 2]]


basket << "apple"
basket.push("melon")