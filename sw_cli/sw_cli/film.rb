class Film
    attr_accessor :title, :episode_id, :url, :opening_crawl, :director, :producer, :release_date
    @@all = []
    def initialize(title, episode_id, url)
        @title = title
        @episode_id = episode_id
        @url = url
        @opening_crawl = opening_crawl
        @director = director
        @producer = producer
        @release_date = release_date
        @@all << self
    end

    def self.find_by_id(episode_id)
      index = episode_id.to_i - 1
      all[index]
    end

    def has_details?
      self.director && self.producer && self.release_date && self.opening_crawl
    end

    def update(opening_crawl, director, producer, release_date)
      self.opening_crawl = opening_crawl
      self.director = director
      self.producer = producer
      self.release_date = release_date
    end

    def self.all 
        @@all
    end
end