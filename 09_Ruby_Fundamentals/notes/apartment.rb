require 'pry'
require 'pry-byebug'

#starting off a class (should be camelcase)
class Apartment

# provides read/write access
  attr_accessor :name, :url, :price, :neighborhood

#this is constructor
  def initialize(name, url, price, neighborhood)
    @name = name
    @url = url
    @price = price
    @neighborhood = neighborhood
  end
end
