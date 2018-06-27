require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    word_array = self.split
    final_words = word_array.select do |word|
      word.sentence? || word.question? || word.exclamation?
    end
  final_words.length
end
 
end
