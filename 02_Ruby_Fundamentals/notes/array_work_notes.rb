basketball = ["Dubs", "Blazers", "Sonics", "Wolves", "Hawks"]
movies = ["Top Gun", "Grosse Pointe Blank", "Pulp Fiction"]

#.size is an alias for length. Calculates total # of items in an Array
puts movies.size()

#<< shovels an item to the end of an Array
puts basketball << "Clips"

#.pop removes the last element of an Array
puts basketball.pop(3)

#.unshift prepends to the beginning of an Array
puts movies.unshift("Nets", "Knicks")

#.shift removes AND returns the thing you're removing
movie_abbreviated = movies.shift(2)
puts movie_abbreviated

#.uniq looks through an array
fruit = ["apple", "apple","banana","cherry"]
puts fruit.uniq
puts fruit

#.include? searches for a given value
puts basketball.include?("Dubs")

#.join returns a string of the Array
puts basketball.join
