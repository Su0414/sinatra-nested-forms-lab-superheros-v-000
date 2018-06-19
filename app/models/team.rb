class Team
  attr_accessor :name, :motto
  @@teams = []

  def initialize(name, motto)
    @name = name
    @motto = motto
    save
  end

  def save
    @@teams << self
    @@teams
  end

  def self.all
    @@teams
  end

end
