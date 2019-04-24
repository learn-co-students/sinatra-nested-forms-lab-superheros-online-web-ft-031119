class Superhero
  attr_reader :name,:power,:bio

  def initialize(args)
    @name,@power,@bio = args[:name],args[:power],args[:bio]
  end

end
