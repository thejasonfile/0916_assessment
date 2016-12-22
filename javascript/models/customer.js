const Customer = (function(){

  let customers = [];

    return class Customer{
      constructor(){

      }

      all(){
        customers.push(this);
      }

      hey(){
        return console.log('hey')
      }
  }
})()
