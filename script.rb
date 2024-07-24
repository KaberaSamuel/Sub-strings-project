def substrings (string,array)
  hash = {}
  for string in string.downcase.split(" ")
    for word in array
      if string.include?(word)
        hash.has_key?(word) ? hash[word] += 1 : hash[word] = 1
      end
    end
  end

  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "down"=>1, "own"=>1, "go"=>1, "going"=>1}
