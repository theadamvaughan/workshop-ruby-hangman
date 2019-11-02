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
  @word = []
  @@guesses = []

  attr_accessor :word, :guesses

  def initialize(word)
    @word = word
  end

  def print_word
    puts "Your word is #{word}"
  end

  def print_out
    @word.each_char {|letter| print "-", " "}
    puts
  end

  def to_s
    return "(Thing.to_s):: The #{@name} is #{@description}"
  end

  def guess(letter)
    @@guesses << letter
    puts "You have selected #{letter}"
    if @word.include?(letter) == true
      puts "That's in the word and Adam needs to figure out what to do next"
    else
      puts "That's not in the word you dumb fuck"
    end
  end

  def start
    puts "Can I have your guess"
    user_guess = gets.chomp!
    guess(user_guess)
    puts "your guesses are #{@@guesses}"
    puts @word
  end
end

game = Game.new(pick_random_line)

puts game.start