
require "pry"
# Your code goes here!
class Anagram
  attr_accessor :word
  attr_reader :word_hash

  def initialize(word)
    @word = word
  end

  def match(word_array)
    correct_words = word_array.select do |word|
      create_word_hash
      is_anagram_of_word(word)
    end
    #binding.pry
    correct_words
  end

  def is_anagram_of_word(word)
    #binding.pry if word == "regally"
    word.split('').each do |l|
     #binding.pry if word == "inlets"
      if @word_hash[l] == nil
        return false
      elsif @word_hash[l] == 0
        return false
      else
        @word_hash[l] -= 1
      end
    end

    if @word_hash.all? { |k,v| v == 0  }
      return true
    else
      return false
    end

  end

  def create_word_hash
    @word_hash = Hash.new(0)
    @word.split('').each { |l|
      if word_hash[l] == nil
        word_hash[l]  = 1
      else
        word_hash[l] += 1
      end
    }

  end

end
