puts "Hello world!"

puts "Приветсвую , #{ARGV[0]}!"

puts "#{ARGV[0]} , какой твой любимый ЯП?"
answer = STDIN.gets.chomp
if ["Руби","руби","Ruby","ruby",].include? answer
	puts "А ты крутой!"
else
	puts "А ты не крутой!"
end
# свич кейс
# STDIN.gets
# как получить методы класса string и обьект класса string

#4
puts "Введи команду Ruby :>"
rub_com = STDIN.gets.chomp
system "ruby -e \"#{rub_com}\""

puts "Введи команду OC :>"
oc_com = STDIN.gets.chomp
system oc_com