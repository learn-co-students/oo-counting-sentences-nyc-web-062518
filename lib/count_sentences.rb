require 'pry'

class String

  def sentence?
    if self.end_with?(".")
    	true
    else
    	false
    end
  end

  def question?
  	if self.end_with?("?")
  		true
  	else
  		false
  	end
  end

  def exclamation?
  	if self.end_with?("!")
  		true
  	else
  		false
  	end
  end

  def count_sentences
  	words = self.split(" ")
  	
  	count = 0
  	words.each do |word|
  		if word.sentence? || word.question? || word.exclamation?
  			count += 1
  		else
  			count
  		end
  		# binding.pry
  	end
  	count
  end
end