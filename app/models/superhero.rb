class Superhero
  attr_accessor :name, :power, :bio
  @@all = []

  def initialize(opts={})
    @name = opts[:name]
    @power = opts[:power]
    @bio = opts[:bio]

    @@all << self
  end

  def self.all
    @@all
  end

end
