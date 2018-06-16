require_relative "weather/version"

module Weather
  # Your code goes here...
end
require_relative './weather/cli'
require_relative './weather/scraper'
require_relative './weather/weather_main'

require 'Nokogiri'
require 'open-uri'
