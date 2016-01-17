require 'httparty'

class Recipe
  include HTTParty
  puts 'inside recipe'

  base_uri 'http://food2fork.com/api'
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for search
  	puts 'looking for '+search 
    get("/search", query: { q: search})["recipes"]
  end
end
