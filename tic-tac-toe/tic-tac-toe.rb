require 'pry'
require 'matrix'

puts "testing tictactoe"
# use matrix ??

class Game
    @@m = Matrix[["n","n","n"], ["n","n","n"], ["n","n","n"]]
    row = ""
    col = ""

    def displayBoard
        print "[",@@m[0,0],"]","[",@@m[0,1],"]","[",@@m[0,2],"]\n"
        print "[",@@m[1,0],"]","[",@@m[1,1],"]","[",@@m[1,2],"]\n"
        print "[",@@m[2,0],"]","[",@@m[2,1],"]","[",@@m[2,2],"]\n"
    end

    def setX(r, c)
        # if not 1-3... handle edgecases
        r -= 1
        c -= 1
        @@m[r,c] = "X"
        displayBoard
    end

    def setO(r, c)
        r -= 1
        c -= 1
        @@m[r,c] = "O"
        displayBoard
    end

    def checkTaken(r,c)
        r -= 1
        c -= 1
        if @@m[r,c] == "X" || @@m[r,c] == "X" 
            return true
        end
        return false
    end
end

object = Game. new
object.displayBoard
puts "player 1 enter row"
inputR = gets.chomp.to_i
puts "player 1 enter col"
inputC = gets.chomp.to_i

puts "taken? " , object.checkTaken(inputR, inputC)
object.setX(inputR,inputC)

puts "taken? " , object.checkTaken(inputR, inputC)