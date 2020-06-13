require 'pry'

def yell_greeting(string)
  name = string

  

  name = name.upcase
  greeting = "Hello world, my name is #{name}!"
  puts greeting
  
end

yell_greeting("edward")

def caesarCipher(string, int)
    input = string
    input2 = int
    puts input
    puts input2
    puts input + "#{input2}"
    
end



puts('enter string')
str = gets.chomp.to_s;

puts('enter number to shift letters by')
shift = gets.chomp.to_i;


caesarCipher(str, shift)