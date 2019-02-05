class Show
  attr_reader :name

  @@all =[]

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.on_the_big_screen()
    tvMovies = []
    self.all.each do |show|
      Movie.all.each do |movie|
        if movie.name.downcase.include?  show.name.downcase
          tvMovies << show
        end
      end
    end
    tvMovies
  end

end
