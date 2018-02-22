class TowersOfHanoi
  attr_accessor :array

  def initialize
    @array = [ [1, 2, 3], [], [] ]
  end

  def play
    until won?
      move(from, to)
    end
    puts "You won!"
  end

  def move(from, to)
    raise "The tower is empty." if self.array[from].empty?
    if self.valid_move?(from, to) == false
      raise "Invalid movement!"
    else
      self.array[to] << self.array[from].pop
    end
  end

  def valid_move?(from, to)
    if self.array[to].empty? || self.array[from].pop < self.array[to].last
      true
    else
      false
    end
  end

  def won?
    if self.array[0].empty?
      if self.array[1].empty? || self.array[2].empty?
        return true
      end
    end
    false
  end
end
