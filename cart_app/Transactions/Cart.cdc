import Cart from 0x05

transaction(product_id:Int, product_name:String, quantity:Int ) {
    prepare(acc: AuthAccount) {
        log(acc.address);
    }

    execute {
    Cart.addToCart(product_id: product_id, product_name:product_name, quantity:quantity);
    log("successfully added to cart")
    }
}
