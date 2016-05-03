first_name = "Dave"
last_name = "Engelberg"
ga_class = "BEWD"
hex_code = "1234567890abcdef"

#.length calculates number of characters
puts "Dave is #{first_name.length} characters long."

#.prepend adds an object(s) to the beginning of the string
puts "Engelberg".prepend(first_name + "_")

#<< adds stuff to the end of a string
puts "#{first_name} #{last_name}" << " " + ga_class

#.strip removes 'Whitespace'
a = "   #{first_name} #{last_name}    "
puts a
puts "becomes"
puts "#{a.strip}"

#.chars creates an array of all characters in a given array
b = "#{first_name} #{last_name}"
puts "#{b.chars}"

#.hex converts hexadecimal into numbers
puts hex_code.hex

#.include checks for a given string or characters and returns true or false
puts ga_class.include? "WD"

#.index gives you the character number where the first instance is found
puts first_name.index('av')

#.swapcase
puts "#{first_name.swapcase} #{last_name.swapcase} is in #{ga_class.swapcase}"
