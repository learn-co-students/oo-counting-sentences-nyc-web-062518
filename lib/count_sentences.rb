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
    count = 0
    split = self.split(" ")
    split.each {|word| word.sentence? ? count += 1 : count += 0}
    split.each {|word| word.question? ? count += 1 : count += 0}
    split.each {|word| word.exclamation? ? count += 1 : count += 0}
    count
  end
end
