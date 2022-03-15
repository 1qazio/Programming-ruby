def array_min(array)
  min = 100
  for item in array do
    if min > item  then
      min = item 
    end
  end
  min
end

def array_max(array)
  max = 0
  for item in array do
    if max < item  then
      max = item
    end
  end
  max
end

def array_sum(array)
  sum = 0
  for item in array do
    sum += item
  end
  sum
end

def array_mult(array)
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
    my_method = gets.chomp

    puts "Откуда взять массив?
    1) Клавиатура
    2) Файл"
    my_option = gets.chomp

    my_arr = Array.new

    case my_option
    when "1"
      puts "Пишете массив через пробел"
        my_arr = gets.chomp.split.map(&:to_i)
    when "2"
        puts "Нужен адрес файла" 
        my_address = gets.chomp
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