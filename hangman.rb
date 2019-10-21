class HangmanGame
  
  def initialise(path:, turns: 10, word:)
    @path = path
    @turns
    @word = "hello"
  end
end

  @correct_guesses = 0
  @incorrect_guess = 0
  @guesses = []

  
  def guess(letter)
    if @word.include?(letter) == true
      puts "That's in the word and Adam needs to figure out what to do next"
      @correct_guesses += 1
    else
      puts "That's not in the word you dumb fuck"
      @incorrect_guess += 1
    end
    @guesses << letter
    puts @correct_guesses
    puts @incorrect_guess
    puts @guesses
  end

  @word = "hello"
  puts "please can I have your guess"
  letter = gets.chomp
  guess(letter)

# def guesses(guesses)
#   puts guesses
# end

# def max_turns(turns)
# puts turns
# end

  # # ............... need to edit this .............
  def show

  end
  # # ..............................................

  def correct_guesses(correct_guesses)
    puts "You have made #{correct_guesses} number of guesses"
  end

  def incorrect_guess(incorrect_guess)
    puts "You have made #{incorrect_guess} number of incorrect guesses"
  end

  def guesses_left

  end

  def complete?

  end

  def won?

  end

  def over?

  end

  def lost?

  end

  def to_s

  end


game = HangmanGame.new