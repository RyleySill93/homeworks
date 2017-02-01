class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14)
    @cups.map!.with_index do |cup, i|
      i == 6 || i == 13 ? cup = [] : cup = [:stone, :stone, :stone, :stone]
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless (1..13).include?(start_pos)
    true
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos].length
    @cups[start_pos] = []
    render
    opposing_cup = (0..5).include?(start_pos) ? 6 : 13
    last_cup = nil
    @cups[start_pos + 1 ..-1].each do |el|
      last_cup = el
      break if stones == 0
      if stones > 0 && el != opposing_cup
        el.concat([:stone])
        stones -= 1
      end
    end
    next_turn(last_cup)
  end

  def next_turn(ending_cup_idx)
    (0..6).include?(ending_cup_idx) ? "Erica" : "James"
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
