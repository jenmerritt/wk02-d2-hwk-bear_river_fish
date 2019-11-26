class River

  attr_reader :name

  def initialize(name, fish_in_river)
    @name = name
    @fish_in_river = fish_in_river
  end

  def fish_in_river
    @fish_in_river.count
  end

end
