class Customer

  attr_accessor :name, :restaurants, :reviews

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @restaurants = []
    @reviews = []
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |customer|
      customer.name == name
    end
  end

  def add_restaurant(restaurant_name)
    @restaurants << Restaurant.all.find do |restaurant|
      restaurant.name == restaurant_name
      restaurant.customers << self
    end
  end

  def add_review(text, restaurant_name)
    review = Review.new(text)
    review.customer = self
    review.restaurant = add_restaurant(restaurant_name)
#     Review.new(text, customer, restaurant)
    self.reviews << review
#     this is the same return value as add_restaurant(restaurant_name).
    restaurant = Restaurant.all.find do |restaurant|
      restaurant.name == restaurant_name
    end
    restaurant.reviews << review
  end

end

Customer.new('Jason')
jason = Customer.all.first
Customer.new('Sam')
Customer.new('Leigh')
Customer.new('Jeff')

# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer
