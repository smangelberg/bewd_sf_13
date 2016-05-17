#Classes have state and behavior
#State & Object Factory: factory that creates and instiantes robots
#Behavior: Collection of class methods, instance methods, instance variable, local variables, constants etc.,
#Create a robot factory

# First let's just see if I can get an instance of class Robot.
# Okay, that's not too hard. setting a variable lets me create an instance
# of class Robot.
# I can pretty easily get it to print stuff too - just a.name/type/origin.
# I think I'm gonna need #array.sample to grab
# Okay, we know how to apply attributes as well. That's the whole
# instance thing. We basically just want to make sure that if we call
# one of the instance methods on one of the robots created, we can handle whether
# it does or doesn't have the attribute.

require 'pry'
require 'pry-byebug'

class Robot

  #creates getter && setter methods for each attribute
  attr_accessor :name, :type, :origin

 #instance_factory to support creating a new robot using Robot.new
  def initialize(name, type, origin)
    @name = name
    @type = type
    @origin = origin
  end

  def self.random_robot_maker
    #randomly select name, type, origin, from three different arrays
    @name = ["Destructoid", "Kitten4000", "Hooman"].sample
    @type = ["four wheel","two wheel", "upright"].sample
    @origin = ["Belize", "China", "Canada"].sample
    robot = Robot.new(@name,@type,@origin)
    return robot
  end

  #depending on type of robot, they will have different attributes
  #instance methods can only be called by instances of a class
  def empathy
    if @name != "Destructoid"
      puts "*** COMMENCING HUG ***"
    else
      puts "No hugs bro!"
    end
  end

  #this is an instance method
  def kitten_skills
    if @name == "Kitten4000"
      puts "kitten town!"
    else
      puts "dogs for you"
    end
  end

  def fourty_mph_skills
    if @type = "four wheel" || @type = "two wheel"
      puts "your robot can move pretty fast."
    else
      puts "no dice broheim."
    end
  end

end

puts "Welcome to the Robot Haus. How many robots do you need?"
number_of_robots_requested = gets.chomp.to_i

robot_array = []

number_of_robots_requested.times do
  robot_array.push(Robot.random_robot_maker)
end

robot_array.each do |robot|
  puts "You created #{robot.name}, which is #{robot.type}. It was built in #{robot.origin}."
  robot.empathy
  robot.kitten_skills
  robot.fourty_mph_skills
end
