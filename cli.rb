require './hangman.rb'

def play_game(game)
  puts game
  until game.over? do
    print "What's your next guess?: "
    print game.guess(gets.chomp) ? '✅' : '❌'
    puts "\n\n#{game}"
  end

  puts 'WOOOOOOOOOOOOO You Won!' if game.won?
  puts "Oh noes you lost!\nThe word was: #{game.word}" if game.lost?
end

play_game(HangmanGame.new)
