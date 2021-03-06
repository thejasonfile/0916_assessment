let all = [{customers: [], restaurants: [], reviews: []}]

const Customer = (function(){

    return class Customer{
      constructor(name){
        this.name = name;
        all[0].customers.push(this);
      }

      findByName(name){
        all[0].customers.filter(function(customer){
          return customer.name === name;
        })
      }

      addReview(text){
        new Review(text)
      }

      addRestaurant(name){
        new Restaurant(name)
      }
  }
})()
