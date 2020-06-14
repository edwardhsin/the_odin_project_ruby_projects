require 'pry'

thisArray = [1,2,3]
max = thisArray.max
min = thisArray.min
print min ," ", max , " "

#indexOfMax = thisArray.index(thisArray.max)        iterate twice


indexOfMax = thisArray.each_with_index.max[1]
indexOfMin = thisArray.each_with_index.min[1]
puts indexOfMax
puts indexOfMin

=begin
def stockpicker(insertArray)
    dayArray = [-1,-1]
    indexMax = insertArray.each_with_index.max[1]
    indexMin = insertArray.each_with_index.min[1]

    dayArray[0] = indexMin
    dayArray[1] = indexMax

    print dayArray
end

stockpicker( [17,3,6,9,15,8,6,1,10] ) 
=end   #this is going back in time    buying 1 on 7day, and reselling on 0day

def stockpicker(insertArray)
    maxProfit = 0
    daysBuySell = [-1, -1]

    # i buy, j sell , loop til end of array
    for i in 0...insertArray.length
        for j in i+1...insertArray.length
            profit = insertArray[j] - insertArray[i]
            if profit>maxProfit
                maxProfit = profit 
                daysBuySell[0] = i 
                daysBuySell[1] = j
            end
        end
    end
    puts "Buy day #{daysBuySell[0]}, sell day #{daysBuySell[1]}, profit of $#{maxProfit}."
end

puts stockpicker( [17,3,6,9,15,8,6,1,10] ) 