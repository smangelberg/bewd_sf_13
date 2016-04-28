require 'pry'
require 'pry-byebug'

def get_word
  print "What word would you like to reverse? "
  actual_word = gets.chomp
  word = actual_word.downcase.chars
  reversed_word = ""
  until word.length == 0
    reversed_word << word.pop
  end
  puts "The word is #{actual_word.capitalize}."
  puts "The reversed word is #{reversed_word.capitalize}."
  if actual_word == reversed_word
    puts "noice"
  else
    puts "nope"
  end
end

get_word


# def create_array
#
#
# def print_word
#   puts word
# end
#
# get_word
# print_word
