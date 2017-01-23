package com.pasal


class ProductController {

    def productService


    def index() {


        def products = Product.findAll()
        def count= products.size()

        render view: 'index', model: [caller:'index', page:'product', products : products]
    }

    def create() {

        params.page = 'product'
        params.caller = 'create'
        respond new Product(params), model: [caller:'create', page:'product']
    }

    def newProduct() {
        def instance = new Product(name: params.'product-name', price: params.'product-price', description: params.'product-description')
        instance.save(flush:true, failOnError: true)
        redirect action:'index'
    }

    def demo () {
        def exp = '12/14/15'
        //def a = exp ? exp < '12/14/14' : false
    }
}
