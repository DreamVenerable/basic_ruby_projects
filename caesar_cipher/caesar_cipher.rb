def caeser_cipher (string, shift)
  word = string.bytes
  word = word.map do |byte|
    start_of_ascii = byte < 91 ? 65 : 97
    if byte.between?(65, 90) || byte.between?(97, 122)
      byte += shift
      unless byte.between?(65, 90) || byte.between?(97, 122)
        byte = (byte - start_of_ascii) % (26) + start_of_ascii
        byte.chr
      end
      byte.chr
    else
      byte.chr
    end
  end
  word = word.join
end

puts 'Your message:'
message = gets.chomp
puts 'The Number of shifts?'
number = gets.chomp.to_i

puts (caeser_cipher(message, number))