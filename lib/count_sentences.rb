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

  # def count_sentences
  #   self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  # end

  def count_sentences
    char_array = self.split('')
    i = 0
    count = 0

    while i < (char_array.length - 1)
      case char_array[i] + char_array[i+1]
        when ". ", "! ", "? "
          count += 1
      end
      i += 1
    end

    case char_array[-1]
      when ".", "!", "?"
        count += 1
    end
    count
  end


end
