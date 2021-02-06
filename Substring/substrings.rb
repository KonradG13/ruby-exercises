dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, source)
  words_list = string.downcase.split(/[^[:word:]]+/)
  result = {}

  words_list.each do |word|
    word_as_letters = word.split('')
    
    source.each do |element|
      element_as_letters = element.downcase.split('')
      
      check_with_word_array = element_as_letters.map do |letter|
        if word_as_letters.include?(letter)
          letter = true
        else
          letter = false
        end
      end
      
      check_with_word = check_with_word_array.reduce(:&)

      if check_with_word
        if !result[element]
          result[element] = 0
        end
        result[element] += 1        
      end
    end
  end

  puts result
  return result
end

substrings("below", dictionary)

substrings("Howdy, buDdy!", dictionary)