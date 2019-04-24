class Team
  attr_reader :name,:motto

  def initialize(params)
    @name,@motto = params[:name],params[:motto]
  end

end
