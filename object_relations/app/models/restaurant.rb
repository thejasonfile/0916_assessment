class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @customers = []
    @reviews = []
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def customers
    @customers
  end

  def reviews
    @reviews
  end

end

Restaurant.new('Chipotle')
chipotle = Restaurant.all.first
Restaurant.new('Dig Inn')
Restaurant.new('Flavors')
