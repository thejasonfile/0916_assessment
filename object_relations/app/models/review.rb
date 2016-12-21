class Review

  attr_accessor :text, :restaurant, :customer

  @@all = []

  def initialize(text)
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
