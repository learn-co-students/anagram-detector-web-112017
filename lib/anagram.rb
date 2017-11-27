class Anagram

attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array_of_words)
    matches = []
    array_of_words.each do |word|
      tester = word.split("").sort
      if tester == @word.split("").sort
        matches << word
      end
    end
    matches
  end



end
