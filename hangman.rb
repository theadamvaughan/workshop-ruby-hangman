class HangmanGame
  attr_reader :guesses, :max_turns

  def initialize(path: './dictionary.txt', turns: 10, word: nil)
    @word = (word || File.read(path).split("\n").sample).chars
    @guesses = []
    @max_turns = turns
  end

  def guess(letter)
    @guesses << letter
    @word.include?(letter)
  end

  def word
    @word.join
  end

  def show
    @word.map { |char| @guesses.include?(char) ? char : '_' }.join(' ')
  end

  def correct_guesses
    (@word & @guesses).size
  end

  def incorrect_guesses
    (@guesses - @word).size
  end

  def guesses_left
    @max_turns - incorrect_guesses
  end

  def complete?
    (@word - @guesses).size <= 0
  end

  def won?
    complete? && guesses_left > 0
  end

  def over?
    complete? || guesses_left <= 0
  end

  def lost?
    over? && !won?
  end

  def to_s
    "#{show}\n\nIncorrect Guesses: #{incorrect_guesses}\nCorrect Guesses: #{correct_guesses}\n\nGuesses Left: #{guesses_left}"
  end
end
