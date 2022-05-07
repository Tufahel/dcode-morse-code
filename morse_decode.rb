@morse_code = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(char)
  @morse_code[char]
  print @morse_code[char]
end

def decode_word(word)
  word.split.each { |char| decode_char(char) }
  print ' '
end

def decode(code)
  code.split('  ').each { |word| decode_word(word) }
  puts ' '
end

decode('- ..- ..-. .- .... . .-..')
# TUFAHEL

decode('-- .. -.-. .-. --- ...- . .-. ... .')
# MICROVERSE

decode('- ..- ..-. .- .... . .-..  .- -. -..  -- .. -.-. .-. --- ...- . .-. ... .')
# TUFAHEL AND MICROVERSE
