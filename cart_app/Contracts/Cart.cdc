pub contract Cart {
    pub let cartOrders: {Int: CartOrder}

    pub struct CartOrder {
      pub let product_id: Int;
      pub let product_name: String;
      pub let quantitiy: Int;

      init(_product_id:Int, _product_name:String,_quantity:Int){
        self.product_id = _product_id;
        self.product_name = _product_name;
        self.quantitiy = _quantity
      }
    }

    pub fun addToCart(product_id:Int, product_name:String,quantity:Int){
      let newOrder = CartOrder(_product_id:product_id, _product_name:product_name, _quantity:quantity)
      self.cartOrders[product_id] = newOrder;
    }

    pub fun getCartOrder(product_id:Int):CartOrder?{
      return self.cartOrders[product_id];
    }

    init(){
      self.cartOrders = {}
    }
}
