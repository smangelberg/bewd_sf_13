require 'pry'
require 'pry-byebug'

#add binding.pry anywhere to stop and examine code

def my_reverse(word)
  the_word = word.strip.downcase.chars
  binding.pry
end

word = "DoRItos   "
puts my_reverse(word)
