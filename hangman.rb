def pick_random_line
  chosen_line = nil
  File.open './dictionary.txt' do |file|
    file.each_with_index do |word, index|
      chosen_line = word if rand < 1.0/(index+1)
    end
    return chosen_line
  end
end

class Game
  @@turns = 10
  @@incorrect_guesses = 0
  @@correct_guesses = 0
  @word = []
  @@guesses = []
  @@guesses_left = 10

  attr_accessor :word, :guesses

  def initialize(word)
    @word = word
  end

  def print_word
    puts "Your word is #{word}"
  end

  def show
    @word.each_char {|letter| print "-", " "}
  end

  def to_s
    puts "#{show}"
    puts "#{guesses_left}#{incorrect_guesses}#{correct_guesses}"
  end

  def incorrect_guesses
    puts "Number of incorrect guesses: #{@@incorrect_guesses}"
  end

  def correct_guesses
    puts "Number of correct guesses: #{@@correct_guesses}"
  end

  def guesses_left
    puts "Number of guesses left: #{@@guesses_left}"
  end

    

  def guess(letter)
    @@guesses << letter
    puts "You have selected #{letter}"
    if @word.include?(letter) == true
      puts "That's in the word and Adam needs to figure out what to do next"
      @@correct_guesses += 1
    else
      puts "That's not in the word you dumb fuck"
      @@incorrect_guesses +=1
    end
  end

  def start
    puts "Can I have your guess"
    user_guess = gets.chomp!
    @@guesses_left -= 1
    guess(user_guess)
    puts "your guesses are #{@@guesses}"
    puts to_s
  end

end

game = Game.new(pick_random_line)

puts game.start