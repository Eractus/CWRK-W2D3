class Array
  def stock_picker
    best_pair = [0, 1]
    i = 0
    while i < self.length
      j = i + 1
      while j < self.length
        if self[j] - self[i] > self[best_pair[1]] - self[best_pair[0]]
          best_pair = [i, j]
        end
        j += 1
      end
      i += 1
    end
    best_pair
  end
end
