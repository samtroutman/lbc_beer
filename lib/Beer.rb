class Beer
    attr_accessor :number, :name, :type, :alcohol, :bitterness

    @@all = []

    def initialize(number = 1, name = "", type = "", alcohol = "")
        # @name = beer_hash[:name]
        # @type = beer_hash[:type]
        # @alcohol = beer_hash[:alcohol]
        # @bitterness = beer_hash[:bitterness]
        # beer_hash = self
        @number = number
        @name = name
        @type = type
        @alcohol = alcohol
        @@all << self
    end

    # def self.create_from_collection(beer_array)
    #     beer_array.each do |beer|
    #         beer = beer.new(beer)
    #     end
    # end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.find_beer_by_name(name)
        Beer.all.find {|beer| beer.name == name}
    end

    def self.find_beer_by_number(number)
        Beer.all.find {|beer| beer.number == number}
    end


end