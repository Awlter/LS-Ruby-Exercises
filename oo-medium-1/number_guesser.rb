class GuessingGame
  MAX_GUESSES = 7
  RANGE = 1..100

  RESULT_OF_GUESS_MESSAGE = {
    high: "Your number is too high.",
    low: "Your number is too low.",
    match: "That's the number!"
  }.freeze

  WIN_OR_LOSE = {
    high: :lose,
    low: :lose,
    match: :win
  }.freeze

  RESULT_OF_GAME_MESSAGE = {
    win: 'You won!',
    lose: 'You have no more guesses. You lost!'
  }.freeze

  def initialize
    @secret_number = nil
  end

  def play
    reset
    play_game
  end

  private

  def reset
    @secret_number = rand(RANGE)
  end

  def play_game
    result = nil
    MAX_GUESSES.downto(1) do |remaining|
      display_remaining_guesses(remaining)
      result = check_guess(obtain_one_guess)
      puts RESULT_OF_GUESS_MESSAGE[result]
      break if result == :match
    end
    puts RESULT_OF_GAME_MESSAGE[WIN_OR_LOSE[result]]
  end

  def check_guess(guess_value)
    return :match if guess_value == @secret_number
    return :high if guess_value > @secret_number
    :low
  end

  def obtain_one_guess
    print "Enter a number between #{RANGE.first} and #{RANGE.last}: "
    input = nil
    loop do
      input = gets.chomp.to_i
      break if (1..100).include? input
      print 'Invalid guess. '
    end
    input
  end

  def display_remaining_guesses(remaining)
    puts "You have #{remaining} guess#{remaining == 1 ? '' : 'es'} remaining."
  end
end

game = GuessingGame.new
game.play