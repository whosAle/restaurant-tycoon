
class Location
  @@all = []

  def self.all
    @@all
  end

  def self.all_addresses
    self.all.map { |location| location.address }
  end

  attr_accessor :name, :restaurant, :address, :rent

  def initialize(restaurant, name, address, rent)
    @name = name
    @restaurant = restaurant
    @address = address
    @rent = rent
    @@all << self
  end

  def employees
    Employee.all.select {|employee| employee.location == self}
  end

  def hire_employee(name, pay)
    Employee.new(name, self, pay)
  end
end
