require 'pry'
require 'pry-byebug'
require 'scratchpad'

#create an apartment class using OOP principles

class Apartment

  attr_accessor :price, :name, :location, :url

  def initialize(price, name, location, url)
    @price = price
    @name = name
    @location = location
    @url = url
  end

a = Apartment.new(1,2,3,4)
puts a
