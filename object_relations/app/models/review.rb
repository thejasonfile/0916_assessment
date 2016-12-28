class Review

  attr_accessor :text, :restaurant, :customer

  @@all = []

  def initialize(text)
#     could allow to pass through restaurant and customer objects into initialize
    @text = text
    @restaurant = nil
    @customer = nil
  end

  def self.all
    @@all
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

end
