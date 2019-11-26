class River

  attr_reader :name

  def initialize(name, fish_in_river)
    @name = name
    @fish_in_river = fish_in_river
  end

  def fish_in_river
    @fish_in_river.count
  end

  def find_fish_by_name(name_of_fish)
    for fish in @fish_in_river
      if fish.name == name_of_fish
        return fish
      end
    end
    return nil
    end

    def remove_fish(fish)
      @fish_in_river.delete(fish)
    end

    def bear_takes_fish_from_river(name_of_fish, bear)
      fish = find_fish_by_name(name_of_fish)
      bear.eat_fish(fish)
      remove_fish(name_of_fish)
    end

end
