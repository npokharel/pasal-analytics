package com.pasal

class BillController {

    def index() {
        def bills = Bill.findAll()
        def count = bills?.size()

        render view: 'index', model: [caller:'index', page:'bill', bills : bills]
    }


    def create() {

        def products = Product.findAll()
        println "products = $products"
        params.page = 'bill'
        params.caller = 'create'
        respond new Bill(params), model: [caller:'create', page:'bill', products:products]

    }
}
