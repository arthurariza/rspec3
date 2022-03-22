class Tea
  attr_reader :flavor

  def initialize(flavor)
    @flavor = flavor
  end

  def temperature
    flavor == :earl_grey ? 205.0 : 195.0
  end
end
