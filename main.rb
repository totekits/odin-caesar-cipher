def caesar_cipher(string, modifier)
  char_arr = string.chars
  ascii_arr = char_arr.map { |char| char.ord }

  modified_ascii_arr = []
  ascii_arr.map { |ascii| 
    if ascii >= 65 && ascii <= 90
      modified_ascii = ((ascii - 65 + modifier) % 26) + 65
    elsif ascii >= 97 && ascii <= 122
      modified_ascii = ((ascii - 97 + modifier) % 26) + 97
    else
      modified_ascii = ascii
    end
    modified_ascii_arr << modified_ascii
  }

  modified_char_arr = modified_ascii_arr.map { |ascii| ascii.chr }
  modified_string = modified_char_arr.join
  modified_string
end