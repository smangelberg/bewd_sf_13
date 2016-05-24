require 'pry'
require 'pry-byebug'
# because robot + android are in the same directory
# we can put require_relative
require_relative 'robot'

class Android < Robot

  attr_accessor :name, :origin, :type

  def initialize(name, type, origin = "android")
    super #means that it will do everything that the superclass does
  end

  def writing_skills
    puts "I am a #{@name.class} and I have writing skills"
  end

  def self_driving_skills
    puts "I am a #{Android.class} and I have self driving skills."
  end

end

android = Android.new("z","y")
android.writing_skills
android.self_driving_skills
