require 'pry'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substring(insertPhrase, insertDict)
    hash = Hash.new(0)
    insertPhrase.downcase!
    #puts insertPhrase

    phrase_word = insertPhrase.split(" ")

    phrase_word.each do |phraseWord|
        insertDict.each do |dictWord|
            if phraseWord.include?(dictWord)
                hash[dictWord] += 1
            end
        end
    end

    #puts result
    hash
end


puts substring("below", dictionary)
puts substring("Howdy partner, sit down! How's it going?", dictionary)