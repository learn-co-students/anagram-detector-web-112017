# Your code goes here!
class Anagram

attr_accessor :word

def initialize(word)
  @word = word
end

def match(array)
   array.select do |test|
     test.chars.sort.join == word.chars.sort.join
   end
end

end
