const Restaurant = (function(){

    return class Restaurant{
      constructor(name){
        this.name = name;
        all[0].restaurants.push(this);
      }

      findByName(name){
        all[0].restaurants.filter(function(restaurant){
          return restaurant.name === name;
        })
      }

      customers(){
        
      }

      reviews(){

      }
  }
})()
