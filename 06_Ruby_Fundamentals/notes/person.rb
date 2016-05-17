require 'pry'
require 'pry-byebug'

class Person
  #getter/setter property
  attr_accessor :name, :age, :home_town

  # Creation of the blueprint, factory, whatever you call it
  def initialize(name, age, home_town)
    # instance variable!!! available everywhere within the class
    @name = name
    @age = age
    @home_town = home_town
  end

# This is an instance method, which means we can pass @name, @age
# into this without having to redefine.
  def to_s
    "Hey I'm a Person. My name is #{self.name}. I am from #{self.home_town}."
  end

  def coding_skills
    if @home_town == "San Francisco"
      "I have coding skills"
    else
      "no skillz"
    end
  end

# self means that this is a CLASS method. An instance
# can't call this.
  def self.assess_skills(people)
    people.each do |person|
      puts "#{person.name}"
      puts person.coding_skills
    end
  end

end


person = Person.new("Dave", 34, "Laurelhurst")
person2 = Person.new("Remi", 30, "Seattle")
person_supreme = Person.new("Rebecca", 38, "Mercer Island")
person3 = Person.new("Jane", 97,"San Francisco")
people = [person, person2, person3, person_supreme]

#This is how you call a CLASS method
Person.assess_skills(people)
