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
    array = self.split(/\.|\? |!/)
    array.delete_if {|sentence| sentence == "" }
    array.length
    # self.split(/\W+/).count    //Removes empty sentences but does not remove strings of ",!?"s.
  end

end
