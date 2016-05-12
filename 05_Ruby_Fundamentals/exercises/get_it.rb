#1 - Pull the json from the reddit API via
  # http://www.reddit.com/.json
  # http://mashable.com/stories.json
#2 - Parse it using the JSON library
#3 - Find the stories based on techniques used in the code_along (max of 25 provided)
#4 - Create a new story hash out of each story with the following keys :title, :upvotes (ups) and :category (subreddit)
    #title, #category and #upvotes may not be the names use
#5 - Add each story to an array
#6 - Print each story from the array on your "Front Page"
#7 - BONUS ### create an 'csv' file using the api data & Ruby's CSV library
     # -> http://ruby-doc.org/stdlib-2.2.2/libdoc/csv/rdoc/CSV.html
         #title, upvote, category are the required columns



require 'typhoeus'#library that faciltates http requests
require 'pry'
require 'pry-byebug'
require 'json'

def connect_to_api(url)
  response = Typhoeus.get(url)
  JSON.parse(response.body)
end

def stories(json_response)
  stories = json_response["data"]["children"]
  stories.each do |story|
    create_story_hash(story["data"])
  end
end

def create_story_hash(story)
  story_hash = { title: story["title"], upvote: story["ups"], category: story["subreddit"] }
  create_array(story_hash)
end

def create_array(story_hash)
  story_array = []
  story_array.push(story_hash)
  front_page(story_array)
end

def front_page(story_array)
  puts story_array
end
#story_array = json_response["data"]["children"][0]["data"]


url ='http://www.reddit.com/.json'
json_response = connect_to_api(url)


stories(json_response)
