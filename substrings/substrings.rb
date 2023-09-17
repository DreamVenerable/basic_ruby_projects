dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "hello", "world"]

def substrings (string, dictionary)
  result = []
  string.downcase!
  dictionary.each {|word| result.push(string[word]) if string[word]}
  result.tally
end

puts 'Your message:'
message = gets.chomp

puts (substrings(message, dictionary))