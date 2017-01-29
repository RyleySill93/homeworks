class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
  end

  def take_turn
    show_sequence
    require_sequence
    if @game_over
      game_over_message
      reset_game
    else
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      system("clear")
      sleep(0.2)
      puts "#{color}"
      sleep(1)
      system("clear")
    end
  end

  def require_sequence
    puts "Enter colors: "
    input = gets.chomp.split(" ")
    if input != seq
      @game_over = true
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "SUCCESS"
    sleep(1)
  end

  def game_over_message
    puts "GAME OVER"
    sleep(1)
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
