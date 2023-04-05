MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
  '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
  '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
  '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
}.freeze

def decode_morse(morse_code)
  morse_code
    .strip
    .split('  ')
    .map do |word|
      word
        .split
        .map { |char| MORSE_CODE[char] } # look up each letter in the MORSE_CODE hash
        .join
    end
    .join(' ')
end

puts decode_morse('-- -.--   -. .- -- .')
puts decode_morse('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# => "MY NAME"
# => "A BOX FULL OF RUBIES"
