class Array
  def my_transpose
    result = []
    hash = Hash.new { |h,k| h[k] = [] }
    self.each do |array|
      array.each_with_index {| el, idx| hash[idx] << el }
    end
    hash.values.each { |arr| result << arr }
    result
  end
end
