require 'pry'






def bubblesort(insertArr)
    length = insertArr.length
    #puts "arr length: " , length
    numOfComparison = insertArr.length-1
    unsorted = length

    #puts numOfComparison

    while unsorted != 0 do
        for i in 0...numOfComparison
            if insertArr[i] > insertArr[i+1]
                insertArr[i], insertArr[i+1] = insertArr[i+1], insertArr[i]
            end
        end

        numOfComparison -= 1
        unsorted -= 1

        # if only one left at index 0, that means it's already in the right place
        # makes unsorted 0 to end loop
        if unsorted == 1
            unsorted -= 1
        end
        #print unsorted
    end

    print insertArr
end



puts bubblesort([5,4,3,2,1])
puts bubblesort([4,3,78,2,0,2])