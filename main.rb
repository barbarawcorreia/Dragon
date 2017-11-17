require './dragon'
#MAIN
puts "WELCOME TO THE DRAGON BABY TAMAGOSHI WORLD"

puts "Entre com seu nome:"
name = gets.chomp

sexo = ''

loop do
  puts "Entre com M - Masculinho ou F - Feminino"
  sexo = gets.chomp
  break if (sexo== "M" || sexo== "m") || (sexo== "f" || sexo== "F")
end

if sexo == "M" || sexo == "m"
  dono = " papai"
  pronome = "o meu"
else
  if sexo == "F" || sexo == "f"
    dono = " mamãe"
    pronome = "a minha"
  end
end

puts "Entre com o nome do seu Baby Dragon"
dragon_name = gets.chomp

puts "Seu Baby Dragon está sendo criado...Aguarde..."
pet = Dragon.new(dragon_name,dono)

puts 'Olá! Eu sou ' +dragon_name.to_s+ '!!'' Eu quero muito caminhar com ' +pronome.to_s+ +dono.to_s+ '!! Vamos? S ou N?'
resp = gets.chomp
puts "\n"
puts "\n"
if resp == "s" || resp == "S"
  pet.walk
else
  if resp == 'n' or resp == 'N'
    puts 'O que você gostaria de fazer então'+dono.to_s+'?'
    pet.menu
    acao = gets.chomp
    pet.recursivo(acao)
  else
    puts "ERRO!! TENTE NOVAMENTE!! \n Digite S ou N:" #TRATAR ESSE ERRO ASSIM QUE FOR PEDIDO FAZENDO DO..WHILE. COD ABAIXO ERRADO. 
    pet.menu
    acao = gets.chomp
    pet.recursivo(acao)
  end
end