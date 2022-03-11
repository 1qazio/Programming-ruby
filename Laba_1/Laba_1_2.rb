def digits_sum(x)
	q = 10
	sum = 0
	while x > 0
		sum += x % q
		x /= q
	end
	sum
end

def digits_max(x)
	max = 0
	q = 10
	while x > 0
		s = x % q
		if max < s then
			max = s
		end
		x /= q
	end
	max
end

def digits_min(x)
	min = 9
	q = 10
	while x > 0
		s = x % q
		if min > s then
			min = s
		end
		x /= q
	end
	min
end

def digits_mult(x)
	q = 10
	mult = 1
	while x > 0
		mult *= x % q
		x /= q
	end
	mult
end

# Наибольший общий делитель(НОД)
def nod(a, b)
  if a % b == 0
    b
  else
    nod(b, a % b)
  end
end

def method_1(x)
	k = 0 
	i = 2 
	while(i < x)
		if(nod(x, i) != 1)
    		k = k + 1
    	end
    	i = i + 2
  	end
  	k
end

def method_2(x)
	max = 0
	q = 10
	while x > 0
		s = x % q
		if s % 3 != 0 then
			if max < s then
				max = s
			end
		end
		x /= q
	end
	max
end

# Функция нахождения наименьшего делителя
def min_divider(x)
  k = 2
  while(k)
    if(x % k == 0)
      return k
    end
    k = k + 1
  end
end

def method_3(x)
  min_div = min_divider(x) # Наименьший делитель исходного

  i = x-1 # Начало прохода
  while(i > 1)
    if((nod(x, i) != 1) & (i % min_div != 0))
      max_digit = i
      puts("Максимальное число - #{max_digit}")
      break
    end
    i = i - 1
  end

  if(i == 1)
    puts("Такого числа не нашлось") 
    return
  end

  sum_digit_less_5 = x.to_s.split('').  # разбить на отдельные буквы (получим массив однобуквенных строк)
      map {|d| d.to_i }. # буквы (цифры) преобразуем в числа (получим массив чисел)
      find_all{|d| d < 5}. # Отбираем цифры меньше 5
      inject{|a,b| a + b} #  суммируем

  puts("Сумма цифр меньше 5 - #{sum_digit_less_5}")
  sum_digit_less_5 * max_digit
end

def main(x,y)
	case y
	when 1
  		puts digits_sum(x)
	when 2
  		puts digits_max(x)
	when 3
  		puts digits_min(x)
	when 4
  		puts digits_op(x)
  	when 5
  		puts method_1(x)
	when 6
  		puts method_2(x)
	when 7
		puts method_3(x)
	else
		puts "Hello world"
	end	
end

puts "Ваше число число :> #{ARGV[0]}"
x = ARGV[0].to_i
y = ARGV[1].to_i
main(x,y)