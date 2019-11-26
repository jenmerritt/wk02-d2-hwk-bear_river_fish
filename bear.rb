class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_in_stomach
    @stomach.count
  end

  def take_fish_from_river
    
  end



end
