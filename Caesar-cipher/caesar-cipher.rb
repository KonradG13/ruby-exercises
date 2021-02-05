def caesar_cipher(string, shift)
  base_array = string.chars()
  coded_array = []

  def cipher(sign, shift)
    base_char = sign.ord
    if base_char >= 65 && base_char <= 90
      coded_char = base_char + shift
      if coded_char > 90
        coded_char = (coded_char-90-1)+ 65
      elsif coded_char < 65
        coded_char = 90 - (65-coded_char+1)
      end
    elsif base_char >= 97 && base_char <= 122
      coded_char = base_char + shift
      if coded_char > 122
        coded_char = (coded_char-122-1)+ 97
      elsif coded_char < 97
        coded_char = 122 - (97-coded_char+1)
      end
    else
      coded_char = base_char
    end
    coded_item = coded_char.chr
  end

  coded_array = base_array.map { |item| cipher(item, shift)}
  coded_string = coded_array.join()
  puts coded_string
  return coded_string

end

caesar_cipher("abc DEzo.!", 4)