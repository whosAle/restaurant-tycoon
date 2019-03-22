class Employee
  @@all = []

  def self.all
    @@all
  end

  def self.average_pay
    self.all.sum { |employee| employee.address }/self.all.length.to_f
  end

  attr_accessor :name, :location, :pay

  def initialize(name, location, pay)
    @name = name
    @location = location
    @pay = pay
    @@all << self
  end
end
