def caesar_cipher(str, num)
    alphabet = *('a'..'z')
    alphabet_1 = *('A'..'Z')
    
    string_array = str.split("").map do |char|
      if alphabet.include?(char)
        old_idx = alphabet.index(char)
        new_idx = old_idx + num
        new_char = alphabet[new_idx % 26]
      elsif alphabet_1.include?(char)
        old_idx = alphabet_1.index(char)
        new_idx = old_idx + num
        new_char = alphabet_1[new_idx % 26]
      else
       char
      end
    end
    return string_array.join
end
p caesar_cipher("This, is a test!", 1)     # "Uijt, jt b uftu!"
puts caesar_cipher("AApple", 1)    #=> "BBqqmf"
puts caesar_cipher("What a string!", 5)   #=> "Bmfy f xywnsl!"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
