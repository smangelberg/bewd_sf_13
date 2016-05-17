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
    puts "You created #{robot.name}, which is #{robot.type}. It was built in #{robot.origin}."
  end

  #depending on type of robot, they will have different attributes
  #instance methods can only be called by instances of a class
  def empathy
    if @name != "Destructoid"
      puts "*** COMMENCING HUG ***"
    end
  end

  #this is an instance method
  def kitten_skills
    if @name == "Kitten4000"
      puts "kitten town!"
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

Robot.make_robots(10)

#class methods can be called outside of the class like Robot.make_robots(number)
# for this class method, we just want to say, create as many robots as
# a user wants...
def make_robots(number)
  number.times do
    self.random_robot_maker
  end
end
