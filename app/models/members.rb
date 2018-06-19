class Members 
  attr_accessor :name, :power, :bio 

  @@members = []
  
  def initialize(name, power, bio)
    @name = name 
    @power = power 
    @bio = bio
    save 
  end 

  def save 
    @@members << self 
    @@members
  end 

  def self.all 
    @@members 
  end 

  
end 