def caesar_encode(string,offset)
  alphabet_array_lowercase = [*?a..?z]
  alphabet_array_uppercase = [*?A..?Z]
  encrypted_string_array = []
  encrypted_string = ""
  string.each_char do |letter|
    if letter == letter.upcase
      alphabet_array_uppercase.each do |alpha_letter|
        if letter == alpha_letter
          new_index_number = (alphabet_array_uppercase.index(alpha_letter).to_i + offset) %26
         new_letter = alphabet_array_uppercase[new_index_number]
         encrypted_string_array << new_letter
         encrypted_string = encrypted_string_array.join('')
         
        end
      end
    elsif letter == letter.downcase
      alphabet_array_lowercase.each do |alpha_letter|
        if letter == alpha_letter
          new_index_number = (alphabet_array_lowercase.index(alpha_letter).to_i + offset) % 26
          new_letter = alphabet_array_lowercase[new_index_number]
          encrypted_string_array << new_letter
          encrypted_string = encrypted_string_array.join('')
      
          
        end
      end
    end
  end
  puts encrypted_string
  
end

def decode(user_string_to_decode,offset)
    alphabet_array_lowercase = [*?a..?z]
  alphabet_array_uppercase = [*?A..?Z]
  decrypted_string_array = []
  decrypted_string = ""
  user_string_to_decode.each_char do |letter|
    if letter == letter.upcase
      alphabet_array_uppercase.each do |alpha_letter|
        if letter == alpha_letter
          new_index_number = (alphabet_array_uppercase.index(alpha_letter).to_i - offset) %26
         new_letter = alphabet_array_uppercase[new_index_number]
         decrypted_string_array << new_letter
         decrypted_string = decrypted_string_array.join('')
         
        end
      end
    elsif letter == letter.downcase
      alphabet_array_lowercase.each do |alpha_letter|
        if letter == alpha_letter
          new_index_number = (alphabet_array_lowercase.index(alpha_letter).to_i - offset) % 26
          new_letter = alphabet_array_lowercase[new_index_number]
          decrypted_string_array << new_letter
          decrypted_string = decrypted_string_array.join('')
      
          
        end
      end
    end
  end
  puts decrypted_string
end


puts "What would you like to encode?"
user_string = gets.chomp
caesar_encode(user_string, 3)
puts "What would you like to decode?"
user_string_to_decode = gets.chomp

decode(user_string_to_decode, 3)


