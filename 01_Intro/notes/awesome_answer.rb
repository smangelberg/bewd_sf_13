require 'pry-byebug'
require 'pry'

def start
  puts "Do you want to look at a number? (Y or N)"
  answer = gets.chomp
  while answer = "Y"
    puts "what number?"
    number_for_awesome_seeker = gets.chomp.to_i
    awesome_seeker(number_for_awesome_seeker)
  end
end

def awesome(number)
  if number % 3 == 0 && number % 5 == 0
    return puts "#{number}: divisible by 3 and 5."
  elsif number % 3 == 0
    return puts "#{number}: divisible by 3."
  elsif number % 5 == 0
    return puts "#{number}: divisble by 5."
  elsif number.even?
    return puts "#{number}: even."
  else
    puts "#{number}: prime"
  end
end

def awesome_seeker(high_number)
  0.upto(high_number) do |number|
    awesome(number)
  end
end

start
