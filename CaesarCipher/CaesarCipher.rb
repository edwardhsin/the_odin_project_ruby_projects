require 'pry'

print "a".ord ,"=",  97.chr , "\n"
print "z".ord ,"=", 122.chr , "\n"
print "A".ord ,"=", 65.chr , "\n"
print "Z".ord ,"=", 90.chr , "\n"


def caesarCipher(string, shift)
    
  shift %= 26      
  result = "" 

  string.each_char do |c|
    if c.ord > 64 && c.ord < 91
      new_char = ((c.ord - 65 + shift) % 26 + 65).chr
    elsif c.ord > 96 && c.ord < 123 
      new_char = ((c.ord - 97 + shift) % 26 + 97).chr
    else
      new_char = c
    end
    result += new_char
  end

  puts result      
end


puts('enter string')
str = gets.chomp.to_s;

puts('enter number to shift letters by')
shift = gets.chomp.to_i;


caesarCipher(str, shift)
