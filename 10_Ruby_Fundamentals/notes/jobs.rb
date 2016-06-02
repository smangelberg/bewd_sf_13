require 'pry'
require 'pry-byebug'

class Job
  attr_accessor :title, :url

  def initialize(title, url)
    @title = title
    @url = url
  end

end
