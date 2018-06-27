require 'pry'

class String

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
    total_sentences = 0
    array = self.split(" ")
    array.each do |word|
      if word.end_with?("!") || word.end_with?(".") || word.end_with?("?")
        total_sentences += 1
      end
    end
    total_sentences
  end
  
end
