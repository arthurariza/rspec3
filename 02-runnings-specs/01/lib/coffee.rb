class Coffee
  def ingridients
    @ingridients ||= []
  end

  def color
    ingridients.include?(:milk) ? :light : :dark
  end

  def temperature
    ingridients.include?(:milk) ? 190.0 : 205.0
  end

  def add(ingridient)
    ingridients << ingridient
  end

  def price
    1.00 + ingridients.size * 0.25
  end
end
