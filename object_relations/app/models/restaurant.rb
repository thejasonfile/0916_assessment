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
#     for the reviews, you should probably iterate through all of the reviews, and then find the one with who has as the restaurant 
#     the current object.
    @reviews
  end

end

Restaurant.new('Chipotle')
chipotle = Restaurant.all.first
Restaurant.new('Dig Inn')
Restaurant.new('Flavors')
