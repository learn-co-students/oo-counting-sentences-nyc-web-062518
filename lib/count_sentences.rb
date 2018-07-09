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
      # binding.pry
    # self.split(/[\.\!\?\...]/).count
    # returns num of sentences in a string
    self.split(/[.?!]+/).grep(/\S/).count
  end

end
