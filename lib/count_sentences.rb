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

  def does_include(sentence_array, punctuation)
    # binding.pry

    sentence_array.map do |sentence|
      if sentence.include?(punctuation)
        sentence.split(punctuation)
      else
        sentence
      end
    end
  end

  def count_sentences
    if self.length == 0
      0
    else
      if self.include?(".")
        sentence_array = self.split(".")
      elsif self.include?("?")
        sentence_array = self.split("?")
      elsif self.include?("!")
        sentence_array = self.split("!")
      end

    sentence_w_period = does_include(sentence_array, ".").flatten
    sentence_w_exclamation = does_include(sentence_w_period, "!").flatten
    sentence_w_question = does_include(sentence_w_exclamation, "?").flatten
    # binding.pry

    sentence_w_question.delete_if do |element|
      element == ""
    end
    # binding.pry
    sentence_w_question.length
    end
  end
end
