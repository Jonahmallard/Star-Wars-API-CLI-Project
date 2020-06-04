class Film
    attr_accessor :films
    @@all = []
    def initialize(films)
        @films = films
        @@all << self
    end

    def self.all 
        @@all
    end
end