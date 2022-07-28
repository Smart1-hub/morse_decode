MORSE_CODE = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

# Create a method to decode a Morse code character, takes a string parameter, and return the corresponding character in uppercase.

def decode_char(char)
  MORSE_CODE[char].capitalize
end

# Create a method to decode an entire word in Morse code, takes a string parameter, 
# and return the string representation. 
# Every character in a word will be separated by a single space.

def decode_word(word)
  result = ''
  word.split.each do |morse_char|
    decoded_char = decode_char(morse_char)
    result += decoded_char.to_s
  end
  result
end

# Create a method to decode the entire message in Morse code, takes a string parameter,
# and return the string representation. Every word will be separated by 3 spaces

def split_phrase(phrase)
    phrase.split('   ')
end

def decode(phrase)
  words = split_phrase(phrase)
  phrase_decode = ''
  words.each do |word|
    word_decode = decode_word(word)
    phrase_decode += "#{word_decode} "
  end
  phrase_decode.strip
end

# Tests
decode_char('.-') #=> A
decode_word('-- -.--') # => MY
decode('-- -.--   -. .- -- .') # => MY NAME
message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decode(message) # => A BOX FULL OF RUBIES
