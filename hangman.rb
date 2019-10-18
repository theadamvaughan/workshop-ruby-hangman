class HangmanGame
  def initialise(path:=.dictionary.txt, turns:=10, :word)
    @path = path
    @turns = turns
    @word = word
  end
end
# # .............. End of Hangmnan Class ..................

correct_guesses = 0
incorrect_guess = 0
guesses = []


# def guesses(guesses)
#   puts guesses
# end

# def max_turns(turns)
# puts turns
# end

@word = "hello"


def guess(letter)
  if @words.contain?(letter) == true
    puts "That's in the word and Adam needs to figure out what to do next"
    correct_guesses += 1
  else
    puts "That's not in the word you dumb fuck"
    incorrect_guess += 1
  end
  # :turns -= 1
end

puts "please can I have your guess"
letter = gets.chomp

guess(letter)

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
