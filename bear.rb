class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_in_stomach
    return @stomach.length
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end

  def roar
    return "ROOAARR"
  end

end
