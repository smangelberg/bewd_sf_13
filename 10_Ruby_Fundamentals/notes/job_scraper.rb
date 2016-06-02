require 'pry'
require 'pry-byebug'
require 'mechanize'
require 'CSV'
require_relative 'jobs.rb'


def create_scraper
  Mechanize.new
end

###

#original scraper method
def scrape_it(url, query, search_distance, postal)
  create_scraper.history_added = Proc.new {sleep 30}

  create_scraper.get(url) do |search_page|
    form_values = search_page.form_with(id: 'searchform') do |settable|
      settable['query'] = query
      settable['search_distance'] = search_distance
      settable['postal'] = postal
    end
    raw_results(form_values)
  end
end

def raw_results(form_values)
  raw_results = form_values.submit
  parse_results(raw_results.search('p.row'))
end

#the new scraper method
def deep_scrape(url)
  create_scraper.history_added = Proc.new {sleep 30}

  create_scraper.get(url) do |page|
    binding.pry
  end
end

def parse_results(raw_results)
  results = []
  results << ['Title', 'URL']

  raw_results.each do |result|
    raw_html = result.css('a')[1]
    title = raw_html.text.strip
    url = "http://sfbay.craigslist.org" + raw_html.attributes["href"].value
    #calling of the new scraper
    deep_scrape(url)
    new_job = Job.new(title, url)
    results << [new_job.title, new_job.url]
  end
  create_csv(results)
end

def create_csv(results)
  CSV.open("jobs_listing.csv", "w+") do |csv_file|
    results.each do |result|
      csv_file << result
    end
  end
end

###
url = 'https://sfbay.craigslist.org/search/sfc/jjj'
query = 'software'
search_distance = 10.to_i
postal = 94117.to_i

###
scrape_it(url, query, search_distance, postal)
