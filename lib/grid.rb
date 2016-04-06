class Grid
  def initialize(r, c)
    @r = r
    @grid = Array.new(r)
    @feed_row = 0
  end

  def at(r, c)
    @grid[r-1][c-1]
  end

  def feed row
    @grid[@feed_row] = Array.new
    row.each_char do |c|
      @grid[@feed_row] << c
    end
    @feed_row = (@feed_row == (@r - 1)) ? 0 : @feed_row + 1
  end
end
