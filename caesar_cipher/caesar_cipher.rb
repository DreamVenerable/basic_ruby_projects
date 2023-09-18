# frozen_string_literal: true

def caeser_cipher(str, shift)
  ascii = str.bytes
  ascii = ascii.map do |byte|
    base = byte < 91 ? 65 : 97
    if byte.between?(65, 90) || byte.between?(97, 122)
      byte += shift
      unless byte.between?(65, 90) || byte.between?(97, 122)
        byte = (byte - base) % 26 + base
        byte.chr
      end
    end
    byte.chr
  end
  ascii.join
end

puts 'Your message:'
message = gets.chomp
puts 'The Number of shifts?'
number = gets.chomp.to_i

puts(caeser_cipher(message, number))
