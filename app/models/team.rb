class Team 
  
  attr_accessor :name, :motto, :members
  
  @@TEAMS =[]
  
  def initialize(name:, motto:)
    @name = name
    @motto = motto
    @members = []
    @@TEAMS << self
  end
  
  def self.all
    @@TEAMS
  end  
end