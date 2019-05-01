class Member 
  
  attr_accessor :name, :power, :bio, :team
  
  @@MEMBERS =[]
 
  def initialize(name:, power:, bio:)
    @name = name
    @power = power
    @bio = bio
    @team = nil
    @@MEMBERS << self
  end
  
  def self.all
    @@MEMBERS
  end
end