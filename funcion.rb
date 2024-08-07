def to_camel_case(text)
  return '' if text.empty?
   words = text.tr('-_', ' ').split  
  first_word = words.shift
  if first_word == first_word.upcase
    words.unshift(first_word.capitalize)
  else
    words.unshift(first_word.downcase)
  end
  words.map!(&:capitalize)
  words.join(' ')
end

puts to_camel_case('the-stealth-warrior')       
puts to_camel_case('The_Stealth_Warrior')     
puts to_camel_case('The_Stealth-Warrior')      
