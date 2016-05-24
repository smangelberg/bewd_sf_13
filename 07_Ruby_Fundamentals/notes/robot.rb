require 'pry'
require 'pry-byebug'

class Robot

# attr_accessor is a method that only takes in symbols and strings.
  attr_accessor :name, :type, :origin

# when specific attributes are REQUIRED, they must be passed in
# to create an instance of this class.
# The @variable is the instance variable and is accessible throughout
# the class. The "name" variable is a local variable only accessible
# in this method.
  def initialize(name, type="theta", origin="beta")
    @name = name #@name = instance variable, name = local variable
    @type = type
    @origin = origin
  end


  def flying_skills
    puts "#{name} can fly."
  end

end
