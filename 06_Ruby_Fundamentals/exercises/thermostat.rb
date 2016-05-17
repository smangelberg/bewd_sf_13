# pull in all temps
# create a reading for each temp in the array using Thermostat.new
# create instance method that compares temp using a conditional
# call another method that changes the temperature if needed

# A class is special because it has...
# state = attibutes and values
# behavior = methods, things that it can do
# identity = an object identifier

require 'pry'
require 'pry-byebug'

class Thermostat

  #creates getter && setter methods for each attribute
  attr_accessor :current_temp
  attr_reader :target

#instance_factory to support creating a new thermostat using Thermostat.new
  def initialize(current_temp, target)
    @current_temp = current_temp
    @target = target
  end

 #self.target , @target and target are all the same inside of this instance method
#use a conditional to calibrate the temperature
  def calibrate_temp
    if current_temp > target
      "too hot"
    elsif current_temp < target
      "too cold"
    else
      "just right"
    end
  end

  def self.detect_temperature(all_temps, target_temp)
    all_temps.each do |temp|
    reading = Thermostat.new(temp, target_temp)
    reading.calibrate_temp
  end
end
    #loop through all temps, detect the temperature, then calibrate it
end

# The temperature is being read externally somewhere, so let's just create an array of those readings
# and pass them into our class method Thermostat.detect_temperature(all_temps, target_temp)

#array_to_temperatures
all_temps = [45,65,85,95, 66, 99, 75, 12, 22, 45, 65, 75, 70, 100, 10, 52, 22]
#set by user
target_temp = 75

Thermostat.detect_temperature(all_temps, target_temp)
