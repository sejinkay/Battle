class Player
  attr_reader :name
  attr_accessor :HP

  def initialize(name)
    @name = name
    @HP = 200
  end

  def get_attacked
    @HP -= 10
  end

end
