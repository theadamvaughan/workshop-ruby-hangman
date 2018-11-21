# Hangman Game (Ruby)

## Part 1 - The HangmanGame Class

Build a `HangmanGame` class that implements the following interface. It should load a random word from the `dictionary.txt` file.

### `initialize(path:, turns:, :word)`

All arguments should be optional.

- Path: A path to a dictionary file to load. Defaults to `./dictionary.txt`.
- Turns: The number of turns the player has. Defaults to 10.
- Word: A word to play the game with. Defaults to a random word from the dictionary.

### `guesses`

Returns an array of all the guesses made so far.

### `max_turns`

Returns the number of turns the player starts with.

### `guess(letter)`

Takes a letter and makes a guess. Returns true if the guess is correct or false if it is not.

### `word`

The word, as a string.

### `show`

Returns a string representing the current word, with un-guessed letters appearing as underscores.

For example, if the word is "hello", with no correct gesses it should return:

```
'_ _ _ _ _'
```

With "h" and "l" correctly guessed, it should return:

```
`h _ l l _`
```

### `correct_guesses`

Returns the number of correct guesses so far.

### `incorrect_guesses`

Returns the number of incorrect guesses so far.

### `guesses_left`

Returns the number of guesses left before the end of the game.

### `complete?`

Returns true if the **word** has been completed, false if it has not.

### `won?`

Returns true if the game has been won, false if not.

### `over?`

Returns true if the game is over, false if not.

### `lost?`

Returns true if the game has been lost, false if not.

### `to_s`

Returns a representation of the game as a string, including the current state of the guessed word, the number of incorrect guesses, number of correct guesses and number of guesses left.

## Part 2 - Testing

If you haven't already, write unit tests for each of your methods.

## Part 3 - Refactoring

Refactor your code so that each instance of `HangmanGame` stores **only** three bits of state:

- The word to be guessed.
- The total number of turns, or guesses (this should never change after initialization)
- An array of all the guesses made.

Thsi will probably require some significant refactoring in your methods.

## Part 4 - The CLI

Implement a CLI that uses the `HangmanGame` class and allows users to play it without launching a REPL. Do not write tests for this.
