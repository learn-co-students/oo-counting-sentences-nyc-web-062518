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

  def count_sentences()
  	arr = self.split
  	count = 0
  	arr.each do |x|
  		if x.sentence? || x.question? || x.exclamation?
  			count += 1
  		end
  	end
  	return count
  end

end



a = "one. two. three?"

a.count_sentences