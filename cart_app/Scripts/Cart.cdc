import Cart from 0x05

pub fun main(product_id:Int): Cart.CartOrder? {
  return  Cart.getCartOrder(product_id: product_id)
}
