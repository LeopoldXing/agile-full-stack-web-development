class Grains
  # how many grains were on each square
  def self.square(n)
    2 ** (n - 1) # 2 to the power of n - 1
  end

  # the total number of grains on the board
  def self.total
    # Sum of geometric series where the ratio r is 2, for terms 1 to 64
    (1..64).map { |n| square(n) }.sum
  end
end
