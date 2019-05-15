class Building
  attr_accessor :units

  def initialize
    @units = []
  end

    def add_unit(apartment)
      @units << apartment
    end

end
