def main
    puts "Выберите задание:
    1) Сортировать строки по длине.
    2) Сортировать строки по кол-ву слов."
    my_method = gets.chomp
    text = IO.read "C:\\Users\\Setet\\Desktop\\text.txt"


    case my_method
    when "1"
        puts("Сортировать строки по длине - #{metod_1(text)}")
    when "2"
        puts("Сортировать строки по кол-ву слов - #{metod_2(text)}")
    else
        puts "Ошибка в выборе метода"
    end
end

def metod_1(text)
    text.split("\n").sort_by(&:length)
end

def metod_2(text)
    text.split("\n").sort_by{|x| x.count(" ")}
end

main()