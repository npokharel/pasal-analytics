package com.pasal


class ProductController {

    def productService


    def index() {
        def products = productService.getActiveProducts()
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
        flash.message = "New Product has been added !"
        redirect (action: 'index')
    }

    def update() {
        def productInstance = Product.findById(params.'product-id')
        productInstance.name = params.'product-name'
        productInstance.price = Double.valueOf(params.'product-price') //parse double value
        productInstance.description = params.'product-description'

        productInstance.save(flush: true, failOnError: true)
        flash.message = "Product updated successfully!"
        redirect (action: 'index')
    }

    def delete() {
        /*def product = Product.findById(params.id)
        product.delete()*/
        boolean result = productService.deleteProduct(params.id)
        if(result){
            flash.error = "Product has been deleted !"
            redirect (action: 'index')
        }else {
            flash.message = "Product could not be deleted!"
            redirect action: "index"
        }

    }

    //this is not used as product is directly delted
//    def deleteProduct() {
//        def productDelete = Product.findById(params.'product-id')
//        productDelete.delete()
//        redirect (action: 'index', id:"msgdel")
//    }

    def demo() {
        def exp = '12/14/15'
        //def a = exp ? exp < '12/14/14' : false
    }
}
