package com.pasal

class BillController {

    def index() {
        def bills = Bill.findAll()
        def count = bills?.size()

        render view: 'index', model: [caller:'index', page:'bill', bills : bills]
    }


    def create() {

        def products = Product.findAll()
        params.page = 'bill'
        params.caller = 'create'
        respond new Bill(params), model: [caller:'create', page:'bill', products:products]

    }

    def getProductPrice() {
        Product product = Product.findById(params?.id)
        render product?.price
    }
}
