require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper
    attr_accessor :beer

    def self.scrape_index_page(index_url)
        html = open("https://www.lansingbrewingcompany.com/beer/")
        page = Nokogiri::HTML("https://www.lansingbrewingcompany.com/beer/")

        beers = []

        page.css(div.beer).each do |beer|

            beers << {
            :name => beer.css("a.item-title-color").text,
            :type => beer.css("span.beer-style").text,
            :alcohol => beer.css("span.abv").text, 
            :bitterness => beer.css("span.ibu").text

        }
        end
        beers
    end
end
