package com.pasal


class ProductController {

    def productService


    def index() {
        params.offset = params.offset ?: 0
        params.max = params.max ?: 10
        def products = Product.findAll()
        def count= products.size()
        //
        render view: 'index', model: [caller:'index', page:'product', products : products,count:count ]
    }

    def create() {

        println "params = $params"
        params.page = 'product'
        params.caller = 'create'

        respond new Product(params), model: [caller:'create', page:'product']
    }

    def newProduct() {
        def instance = new Product(name: params.product_name, price: params.product_price)
        instance.save()
        redirect action:'index'
    }

    def demo () {
        def exp = '12/14/15'
        //def a = exp ? exp < '12/14/14' : false
    }
}
