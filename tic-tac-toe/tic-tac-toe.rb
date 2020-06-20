require 'pry'
require 'matrix'

puts "testing tictactoe"
# use matrix ??

class Board
    @@m = Matrix[["n","n","n"], ["n","n","n"], ["n","n","n"]]
    row = ""
    col = ""

    def displayBoard
        print "[",@@m[0,0],"]","[",@@m[0,1],"]","[",@@m[0,2],"]\n"
        print "[",@@m[1,0],"]","[",@@m[1,1],"]","[",@@m[1,2],"]\n"
        print "[",@@m[2,0],"]","[",@@m[2,1],"]","[",@@m[2,2],"]\n"
        puts ""
    end

    def setX(r, c)
        # if not 1-3... handle edgecases->  checkIfValid()
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

    def checkIfValid(r,c)
        if (r < 1 || r > 3 || c < 1 || c > 3)
            puts "input out of bounds; (1-3) only"
            return false
        end
        return true
    end
        
    def checkTaken(r,c)
        r -= 1
        c -= 1
        if @@m[r,c] == "X" || @@m[r,c] == "O" 
            puts "already taken, try again"
            return true
        end
        return false
    end

    def checkThreeInARowX
        if @@m[0,0] == "X" && @@m[0,1] == "X" && @@m[0,2] == "X"
            return true
        elsif @@m[1,0] == "X" && @@m[1,1] == "X" && @@m[1,2] == "X"
            return true
        elsif @@m[2,0] == "X" && @@m[2,1] == "X" && @@m[2,2] == "X"
            return true
        elsif @@m[0,0] == "X" && @@m[1,0] == "X" && @@m[2,0] == "X"
            return true
        elsif @@m[0,1] == "X" && @@m[1,1] == "X" && @@m[2,1] == "X"
            return true
        elsif @@m[0,2] == "X" && @@m[1,2] == "X" && @@m[2,2] == "X"
            return true
        elsif @@m[0,0] == "X" && @@m[1,1] == "X" && @@m[2,2] == "X"
            return true
        elsif @@m[2,2] == "X" && @@m[1,1] == "X" && @@m[0,0] == "X"
            return true
        end
        return false
    end

    def checkThreeInARowO
        if @@m[0,0] == "O" && @@m[0,1] == "O" && @@m[0,2] == "O"
            return true
        elsif @@m[1,0] == "O" && @@m[1,1] == "O" && @@m[1,2] == "O"
            return true
        elsif @@m[2,0] == "O" && @@m[2,1] == "O" && @@m[2,2] == "O"
            return true
        elsif @@m[0,0] == "O" && @@m[1,0] == "O" && @@m[2,0] == "O"
            return true
        elsif @@m[0,1] == "O" && @@m[1,1] == "O" && @@m[2,1] == "O"
            return true
        elsif @@m[0,2] == "O" && @@m[1,2] == "O" && @@m[2,2] == "O"
            return true
        elsif @@m[0,0] == "O" && @@m[1,1] == "O" && @@m[2,2] == "O"
            return true
        elsif @@m[2,2] == "O" && @@m[1,1] == "O" && @@m[0,0] == "O"
            return true
        end
        return false
    end

end

object = Board. new
object.displayBoard
=begin
puts "player 1 enter row"
inputR = gets.chomp.to_i
puts "player 1 enter col"
inputC = gets.chomp.to_i

puts "taken? " , object.checkTaken(inputR, inputC)
object.setX(inputR,inputC)

puts "taken? " , object.checkTaken(inputR, inputC)
=end
=begin
object.setX(1,3)
object.setX(2,3)
object.setX(3,3)

object.displayBoard()
puts object.checkThreeInARow()
=end


counter = 0;
while counter != 9
    if counter.even?
        puts counter
        print "Player 1 select row: "
        inputR = gets.chomp.to_i
        print "Player 1 select col: "
        inputC = gets.chomp.to_i
        if object.checkIfValid(inputR,inputC) == true
            if object.checkTaken(inputR, inputC) == false
                object.setX(inputR, inputC)
            end
        end
    elsif counter.odd?
        puts counter
        print "Player 2 select row: "
        inputR = gets.chomp.to_i
        print "Player 2 select col: "
        inputC = gets.chomp.to_i
        if object.checkIfValid(inputR,inputC) == true
            if object.checkTaken(inputR, inputC) == false
                object.setO(inputR, inputC)
            end
        end
    end

    #object.displayBoard
    if object.checkThreeInARowX == true
        puts "player 1 wins"
        break
    end

    if object.checkThreeInARowO == true
        puts "player 2 wins"
        break
     end

    counter +=1
end

