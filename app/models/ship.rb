class Ship

    @@ships = []

    attr_accessor :type, :booty
    attr_reader :name

    def initialize(args)
        @name = args[:name]
        @type = args[:type]
        @booty = args[:booty]
        self.class.all << self
    end

    def self.all
        @@ships
    end

    def self.clear
        @@ships = []
    end
end