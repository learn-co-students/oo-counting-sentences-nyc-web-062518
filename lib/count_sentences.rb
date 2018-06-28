require 'pry'

class String

  attr_accessor :sentence

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_count = 0
    array = self.split(' ')
    array.each do |word|
      sentence_count += 1 if word.end_with?("!") || word.end_with?(".") || word.end_with?("?") || word.end_with?("!!") || word.end_with?("...")
    end
    sentence_count
  end

end
