class Keyboard
  KEYMAP = { 'A' => '2', 'B' => '22', 'C' => '222',
             'D' => '3', 'E' => '33', 'F' => '333', 
             'G' => '4', 'H' => '44', 'I' => '444', 
             'J' => '5', 'K' => '55', 'L' => '555', 
             'M' => '6', 'N' => '66', 'O' => '666', 
             'P' => '7', 'Q' => '77', 'R' => '777', 'S' => '7777', 
             'T' => '8', 'U' => '88', 'V' => '888', 
             'W' => '9', 'X' => '99', 'Y' => '999', 
             ' ' => '0' }
             
  def write phrase
    code = ''
    words = phrase.split(//)
    
    words.each_with_index do |word, i|
      code += '_' if i > 0 && words[i - 1] == word
      code += KEYMAP[word.upcase]
    end
    
   code
  end
end