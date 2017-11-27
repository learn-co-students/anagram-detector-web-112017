# Your code goes here!
class Anagram
  attr_accessor :anagram
  def initialize(anagram)
    @anagram = anagram
  end

  def sort_letters(word)
    word.chars.sort
  end

  def match(word_array)
    word_array.select do |word|
      if sort_letters(word) == sort_letters(anagram)
        word
      end
    end
  end





end
