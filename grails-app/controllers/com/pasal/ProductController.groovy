package com.pasal


class ProductController {

    def productService


    def index() {
        def products = Product.findAll()
        def count = products.size()
        render view: 'index', model: [caller: 'index', page: 'product', products: products]
    }

    def edit() {
        def product = Product.findById(params.id)
        render view: 'edit', model: [caller: 'index', page: 'edit', product: product]
    }

    def show() {
        def product = Product.findById(params.id)
        render view: 'show', model: [caller: 'index', page: 'show', product: product]
    }

    def create() {
        params.page = 'product'
        params.caller = 'create'
        respond new Product(params), model: [caller: 'create', page: 'product']
    }

    def newProduct() {
        def addInstance = new Product(name: params.'product-name', price: Double.valueOf(params.'product-price'), description: params.'product-description')
        addInstance.save(flush: true, failOnError: true)
        redirect (action: 'index', id:"msgadd")
    }

    def update() {
        def productInstance = Product.findById(params.'product-id')
        productInstance.name = params.'product-name'
        productInstance.price = Double.valueOf(params.'product-price') //parse double value
        productInstance.description = params.'product-description'

        productInstance.save(flush: true, failOnError: true)
        flash.message = "Product updated successfully!" //todo add flash impl on edit/update
        redirect (action: 'index', id:"msgedt")
    }

    def delete() {
        def product = Product.findById(params.id)
        product.delete()

        redirect action: 'index'
    }

    def deleteProduct() {
        def productDelete = Product.findById(params.'product-id')
        productDelete.delete()
        redirect (action: 'index', id:"msgdel")
    }

    def demo() {
        def exp = '12/14/15'
        //def a = exp ? exp < '12/14/14' : false
    }
}
