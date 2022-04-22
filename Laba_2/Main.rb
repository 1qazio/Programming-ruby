require_relative 'Department.rb'

a=Department.new("Менты","79181311793",{ Обязанность_1: "Напрягать", Обязанность_2: "Лутать бабки"  })
b=Department.new("Врачи","79181311794",{ Обязанность_1: "Хилить", Обязанность_2: "Доказывать что ты смертный"  })
puts a

puts a.add_duty("Обязанность_3","Быть смешными)")

puts a.select_duty("Обязанность_3")

puts a.get_specification()

puts a.change_specification("Быть грустными(")

puts a

puts a.delete_duty()

puts a.get_duties()