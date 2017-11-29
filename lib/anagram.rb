# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize (word)
    @word = word
  end

  def match (possible_anagrams)
    @word = word.split("").sort
    possible_anagrams.select do |possible_match|
      @word == possible_match.split("").sort
    end
  end

end

# listen = Anagram.new("listen")
# listen.match(%w(enlists google inlets banana))
#
# => ["inlets"]
