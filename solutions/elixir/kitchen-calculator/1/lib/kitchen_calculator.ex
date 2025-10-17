defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair,1)
  end
  def to_milliliter({:cup,volume}) do
    {:milliliter, volume * 240    }
  end
  
  def to_milliliter({:fluid_ounce,volume}) do
    {:milliliter, volume * 30    }
  end
  def to_milliliter({:teaspoon,volume}) do
    {:milliliter, volume * 5  }
  end
  def to_milliliter({:tablespoon,volume}) do
    {:milliliter, volume * 15}
  end
  def to_milliliter({:milliliter,volume}) do
    {:milliliter, volume}
  end



  def from_milliliter(volume_pair, :cup) do
    {:cup,elem(volume_pair,1)/240}
  end

  def from_milliliter(volume_pair, :fluid_ounce) do
    {:fluid_ounce,elem(volume_pair,1)/30}
  end

  def from_milliliter(volume_pair, :teaspoon) do
    {:teaspoon,elem(volume_pair,1)/5}
  end

  def from_milliliter(volume_pair, :tablespoon) do
    {:tablespoon,elem(volume_pair,1)/15}
  end

  def from_milliliter(volume_pair, :milliliter) do
    {:milliliter,elem(volume_pair,1)}
  end

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter({elem(volume_pair,0),elem(volume_pair,1)}),unit)
  end
end
