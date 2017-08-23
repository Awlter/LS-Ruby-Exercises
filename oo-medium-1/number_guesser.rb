class GuessingGame
  def initialize
    @left_chances = 7
    @target = (1..100).to_a.sample
    @guess_number = 0
  end

  def play
    loop do
      display_remaining
      get_guess_number
      compare
      break if won? || lose?
      @left_chances -= 1
    end
    display_result
  end

  private

  def display_result
    puts won? ? 'You win!' : 'You are out of guesses. You lose.'
  end

  def lose?
    @left_chances == 0
  end

  def won?
    @target == @guess_number
  end

  def compare
    if @target > @guess_number
      puts 'Your guess is too low.'
    elsif @target < @guess_number
      puts 'Your guess is too high.'
    end
  end

  def get_guess_number
    print 'Enter a number between 1 and 100: '
    input = nil
    loop do
      input = gets.chomp.to_i
      break if (1..100).include? input
      print 'Invalid guess. '
    end
    @guess_number = input
  end

  def display_remaining
    puts "You have #{@left_chances} guess#{@left_chances == 1 ? '' : 'es'} remaining."
  end
end

game = GuessingGame.new
game.play