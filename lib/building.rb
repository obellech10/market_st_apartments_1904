class Building
  attr_accessor :units

  def initialize
    @units = []
  end

  def add_unit(apartment)
    @units << apartment
  end

  def average_rent
    total_rent = 0
    @units.each do |apt|
      total_rent += apt.monthly_rent
    end
    total_rent.to_f / @units.count
  end

end
