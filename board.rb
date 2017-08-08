class Board
require_relative "piece.rb"

  def initialize
    @board = Array.new(8){Array.new(8)}
    # @whats_there = # piece?
    place_pieces
    render
  end

  def [](pos)
    row, col = [pos]
    @board[row][col]
  end

  # def []=(pos)
  #   row, col = [pos]
  #   @board[row][col]
  # end

  # def move_piece(start_pos, end_pos)
  #   if self.[](end_pos) == NullPiece #&& end_pos.all {|el| el < 8}
  #     self.[](end_pos) = self.[](start_pos)
  #     self.[](start_pos) = NullPiece.instance
  #   else
  #     raise "There's already a piece there!"
  #   end
  # end

  def place_pieces
    #put pieces on Board

    @board.each_index do |row|
      @board.each_index do |col|
        Piece.new([row, col]) if row < 2 || row > 5
  #      NullPiece.instance([row, col]) if row >= 2 && row <= 5
      end
    end

  end

  def render
    system("clear")
    @board.each_with_index do |row, col|
      # puts "#{(0..7).to_a.join(" ")} "
      puts "#{col} #{row.join(" ")}"
    end

  #  puts @board
  end

end

game_one = Board.new
