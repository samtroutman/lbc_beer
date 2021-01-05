class Beer
    attr_accessor :name, :type, :alcohol, :bitterness

    @@all = []

    def initialize(beer_hash)
        @name = beer_hash[:name]
        @type = beer_hash[:type]
        @alcohol = beer_hash[:alcohol]
        @bitterness = beer_hash[:bitterness]
        beer_hash = self
        @@all << self
    end

    def self.create_from_collection(beer_array)
        beer_array.each do |beer|
            beer = beer.new(beer)
        end
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

end