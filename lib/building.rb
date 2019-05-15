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

  # This is very ugly but couldn't figure out a better way
  def renter_with_highest_rent
    all_renters = []
    @units.select do |unit|
      if unit.renter != nil
        all_renters << unit
      end
    end

    highest_rent = all_renters.max_by do |unit|
           unit.monthly_rent
         end
    highest_rent.renter
  end

  def annual_breakdown
    renter_breakdown = {}

    @units.each do |unit|
      if unit.renter != nil
          renter_breakdown[unit.renter.name] = unit.monthly_rent * 12
      end
    end
    renter_breakdown
  end

end
