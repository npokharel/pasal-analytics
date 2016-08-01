package com.pasal

import com.pasal.Product

class ProductController {

    def index() {
        render view: 'index', model: [caller:'index', page:'product']
    }

    def create() {
        /*println "Product new."
        Product p = new Product()
        p.name = params.product_name
        p.price = params.product_price
        p.save()

        []*/
        println "params = $params"
        params.page = 'product'
        params.caller = 'create'
        respond new Product(params), model: [caller:'create', page:'product']
    }

    def demo () {
        def exp = '12/14/15'
        //def a = exp ? exp < '12/14/14' : false
    }
}
