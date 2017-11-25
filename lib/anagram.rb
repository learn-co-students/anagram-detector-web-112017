class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagrams)
    anagrams.select do |a_word|
      a_word.chars.sort == self.word.chars.sort
    end
  end
end
