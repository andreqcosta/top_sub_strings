# use reduce like the exemple with the hash
# use .scan to que a array of the matches, .count to get how much

def substrings(word, dictionary)
    dictionary.reduce(Hash.new(0)) do | hash, substring |
        ocurrences = word.downcase.scan(substring.downcase).count
        hash[substring] += ocurrences if ocurrences > 0
        hash
    end

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)