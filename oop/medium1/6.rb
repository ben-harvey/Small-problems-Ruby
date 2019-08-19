=begin

-has 7 guesses between 1 and 100
-returns invalid guess if out of range or NAN
-increments guesses and displays remaining guesses
-tells whether guess is too low/high
-displays win/loss message
-each call to play generates a new number

=end

class GuessingGame
  GUESSES = 7
  RANGE = [*1..100]

  def display_guesses(guesses)
    puts "You have #{guesses} guesses remaining."
  end

  def play
    number = RANGE.sample
    guesses = GUESSES
    win = nil
    loop do
      display_guesses(guesses)
      guess = get_guess
      guesses -= 1
      if winner?(guess, number)
        win = true
        break
      end
      evaluate_guess(guess, number)
      break if guesses == 0
    end
    puts win ? "You win!" : "Out of guesses, you lose. The number was #{number}!"
  end

  def evaluate_guess(guess, number)
    evaluation = guess > number ? "high" : "low"
    puts "Your guess is too #{evaluation}."
  end

  def winner?(guess, number)
    guess == number
  end

  def get_guess
    guess = nil
    puts "Enter a number between 1 and 100: "
    loop do
      guess = gets.chomp.to_i
      break if RANGE.include?(guess)
      puts "Invalid guess. Enter a number between 1 and 100: "
    end
    guess
  end
end

GuessingGame.new.play
GuessingGame.new.play