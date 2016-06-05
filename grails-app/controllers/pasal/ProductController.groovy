package pasal

import com.pasal.Product

class ProductController {

    def index() {
        render view: 'index', model: [caller:'product']
    }

    def create() {
        println "Product new."
        Product p = new Product()
        p.name = params.product_name
        p.price = params.product_price
        p.save()
        println "params = $params"
    }
}
