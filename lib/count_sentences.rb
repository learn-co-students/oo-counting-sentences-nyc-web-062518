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
    array = self.split(/\.|\? |!/)
    array.delete_if {|sentence| sentence == "" }
    array.length

    ## capture characters that are not . ! ? until
    ## characters that are . ! ?
    # self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
end
