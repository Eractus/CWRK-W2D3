class Array
  def remove_dups
    answer = []
    self.each {|el| answer << el unless answer.include?(el)}
    answer
  end
end
