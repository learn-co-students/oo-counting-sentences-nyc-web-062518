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
  	arrayOfWords = self.split(" ")
  	sentenceCount = 0
  	arrayOfPeriods = arrayOfWords.each do |word|
  		if word.end_with?(".") || word.end_with?("?") || word.end_with?("!")
  			sentenceCount += 1
  		end 
  	end
  	return sentenceCount
  end
end
