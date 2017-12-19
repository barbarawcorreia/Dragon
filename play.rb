require './dragon'
require './blue_dragon'
require './red_dragon'

puts 'testing blue_dragon'
name = "Bola"
owner_name = "Babi"
pet2 = Blue_dragon.new(name, owner_name)
pet2.feed
puts pet2.swim

puts 'testing red_dragon'
name = "Batatinha"
owner_name = "Queridinho"
pet3 = Red_dragon.new(name, owner_name)

puts pet3.spit_fire
