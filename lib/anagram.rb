# Your code goes here!
class Anagram
  attr_accessor :word, :anagrams

  def initialize(word)
    @word = word
    @anagrams = []
  end

  def match(array)
    @word = word
    array.each do |w|
      if w.split("").sort == word.split("").sort
        @anagrams << w
      end
    end
    @anagrams
  end
end
