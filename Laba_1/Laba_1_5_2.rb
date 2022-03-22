def main
  puts("Здравствуйте! Выберите один из следующих методов:
    1. Проверить, является ли строка палиндромом. 
    2. Посчитать количество слов в строке.
    3. Найти количество различных цифр в десятичной записи числа.
    4. Найти все даты, которые описаны в виде 31 февраля 2007.
    5. Подсчитать количество чисел в строке, значение которых меньше 5.
    6. Необходимо найти все незадействованные символы латиницы в этой строке.
    7. Подсчитать количество цифр в строке, значение которых больше 5.")
    #1.для проверки используй утрочорту

    sel = gets.chomp
    select_metod(sel)
end

def init_str
  puts "Откуда массив берем?
    1) Клавиатура
    2) Файл"
  sel = gets.chomp
  if(sel.downcase == "1")
    puts("Введите строку и нажмите Enter : ")
    str = gets.chomp
  elsif(sel.downcase == "2")
    puts "Адрес файла:" 
    my_address = gets.chomp
    str = IO.read(my_address)
  end
  str
end

def init_number
  puts("Введите цифру: ")
  sel = gets.chomp.to_i
end

def select_metod(number)
  case number
    when "1"
      puts("Является ли данная строка палиндромом - #{metod_1(init_str)}")
    when "2"
      puts("Количество слов в строке - #{metod_2(init_str)}")
    when "3"
      puts("Количество различных цифр в числе - #{metod_3(init_str)}")
    when "4"
      metod_4(init_str)# кое как
    when "5"
      puts("Количество чисел в строке, значение которых меньше 5 - #{metod_5(init_str)}")
    when "6"
      puts("Все незадействованные символы латиницы в строке - #{metod_6(init_str)}")
    when "7"
      puts("Количество цифр в строке, значение которых больше 5 - #{metod_7(init_str)}")
    else
      puts("Некорректный ввод!")
  end
end


def metod_1(str)
  if (str.downcase == str.reverse.downcase)
    "да"
  else
    "нет"
  end
end


def metod_2(str)
  str.split.size
end


def metod_3(str)
  # Удаляем проелы, делаем массив, оставляем уникальные, размер
  str.strip.chars.uniq.size
end


def metod_4(str)
    str_sp = str.split(" ")
    months = ["января", "февраля","марта","апреля","мая","июня","июля","августа","сентября","октября","ноября","декабря"]
    for i in (0..str_sp.length) do
        if str_sp[i].to_i > 0 && str_sp[i].to_i <= 31 && months.include?(str_sp[i+1]) && str_sp[i+2].to_i >= 0
          puts str
        end
    end
end


def metod_5(str)
  str.scan(/\d+/).count{|x| x.to_i < 5}
end


def metod_6(str)
  b = ("a".."z").to_a
  b - str.downcase.scan(/[a-z]/)
end

def metod_7(str)
  str.scan(/\d/).count{|x| x.to_i > 5}
end

main()