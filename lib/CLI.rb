class CLI
    attr_accessor :beer, :type, :alcohol

    def call
        input = gets.strip

        if input != exit
            puts "Welcome to Lansing Brewing Company Beers!"
            puts "To list all of the current beers, enter 'all beer'."
            puts "To list all of the beers by type, enter 'list types'."
            puts "To quit, type 'exit'."
            puts "What would you like to do?"

                case input 
                when "all beer"
                    all_beer
                when "list types"
                    list_types
                end
            end
        end

    def all_beer
        Beer.all.sort{|a, b| a.name <=> b.name}.each_with_index 
    end

    def list_types
        puts "Please enter the type of beer:"
        input = gets.strip

        if type = Type.find_by_name(input)
            type.beers.sort{|a, b| a.name <=> b.name}.each_with_index do |beer, type|
                puts "#{beer.name} - #{type.name}"
            end
        end
    end



end