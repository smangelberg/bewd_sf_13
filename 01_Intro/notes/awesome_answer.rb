require 'pry-byebug'
require 'pry'

def start
  print "Prime-finder. Do you want to try (Y or N)? "
  answer = gets.chomp
  if answer == "Y"
    print "This will find all prime numbers from 0 to whatever number you enter: "
    number = gets.chomp.to_i
    awesome_seeker(number)
  else
    puts "Shutting down"
  end
end

def loop_start
  start
end

def awesome(number)
  while number > 0
    number 
    return
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
loop_start
