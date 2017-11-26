require 'pry'

class Anagram

  attr_accessor :subject

  def initialize(subject)
    @subject = subject.split("")
  end

  def match(test_array)
    test_array.select do |word_element|
      word_element.split("").sort == self.subject.sort && word_element.split("").length == self.subject.length
    end
  end

end
