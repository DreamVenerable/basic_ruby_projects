dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "hello", "world"]

def substrings (string, dictionary)
  test = []
  string.downcase!
  dictionary.each do |word|
    if string[word]
      test.push(string[word])
    end
  end
  test.tally
end

puts 'Your message:'
message = gets.chomp

puts (substrings(message, dictionary))