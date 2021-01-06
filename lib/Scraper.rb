require 'open-uri'
require 'pry'
require 'nokogiri'

# class Scraper
#     attr_accessor :beer

#     def self.scrape_index_page(index_url)
#         html = open("https://www.lansingbrewingcompany.com/beer/")
#         page = Nokogiri::HTML("https://www.lansingbrewingcompany.com/beer/")

#         beers = []

#         page.css(div.beer).each do |beer|

#             beers << {
#             :name => beer.css("a.item-title-color").text,
#             :type => beer.css("span.beer-style").text,
#             :alcohol => beer.css("span.abv").text, 
#             :bitterness => beer.css("span.ibu").text

#         }
#         end
#         beers
#     end
# end

class Scraper
    attr_accessor :beer
    def scrape_beer
        doc = Nokogiri::HTML(open("https://www.lansingbrewingcompany.com/beer/"))
        beer_list = page.css(div.beer).css
        beer_list.each.with_index do |beer, i|
            new_beer = Beer.new
            new_beer.number = i
        end
        beer_list.each do |beer|
            hash = {:name =>, '', :type => '', :alcohol => '', :bitterness => ''}
            hash[:name] = beer.css("a.item-title-color").text
            hash[:type] = beer.css("span.beer-style").text
            hash[:alcohol] = beer.css("span.abv").text
            hash[:bitterness] = beer.css("span.ibu").text
            new_beer = Beer.new(hash)
            @@beer << new_beer
        end
    end
end

            
