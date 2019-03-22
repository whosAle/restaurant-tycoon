class Restaurant
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end
  
  attr_accessor :name

  def locations
    Location.all.select {|location| location.restaurant == self}
  end

  def total_rent
    #locations.reduce(0) {|sum, location| sum + location.rent}
    locations.sum {|location| location.rent}
  end

  def create_location(city, address, rent)
    Location.new(self, city, address, rent)
  end

  def employees
    locations.map {|location| location.employees}.flatten
  end

  def total_pay
    employees.sum {|employee| employee.pay}
  end

  def total_expenses
    total_rent + total_pay
  end
end
