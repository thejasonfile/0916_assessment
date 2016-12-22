const Customer = (function(){

  let all = [];

    return class Customer{
      constructor(name){
        this.name = name;
        all.push(this);
      }

      showAll(){
        return all;
      }

      findByName(name){

      }

      addReview(text, restaurant){

      }

      addRestaurant(name){

      }
  }
})()

var jason = new Customer('jason');
var katie = new Customer('katie');
