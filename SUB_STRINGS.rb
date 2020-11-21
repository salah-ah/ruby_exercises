def substrings(str, dictionary)
    
    new_hash = Hash.new(0)

    dictionary.each do |word|
        if str.downcase.include?(word.downcase)
            new_hash[word] += 1
        end
    end
    new_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
puts substrings("below", dictionary)
# {"below"=>1, "low"=>1}
