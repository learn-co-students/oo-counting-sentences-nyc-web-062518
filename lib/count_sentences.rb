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
    punctuations = self.split(".")
    new_punctuations = punctuations.map do |sentence|
      sentence.split("!")
    end
    new_sentence = new_punctuations.flatten
    final_punctuations = new_sentence.map do |sentence|
      sentence.split("?")
    end
    final_sentence = final_punctuations.flatten
    final_sentence.count
  end
end
