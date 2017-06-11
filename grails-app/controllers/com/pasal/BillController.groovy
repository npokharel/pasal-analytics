package com.pasal

import grails.converters.JSON

class BillController {

    def index() {
        def invoices = Invoice.findAll()
        def count = invoices?.size()

        render view: 'index', model: [caller:'index', page:'bill', invoices : invoices]
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

    def getProductJSON() {
        Product product = Product.findById(params?.id)

        def json = [
                'id' : product?.id,
                'name':product?.name,
                'description' : product?.description

        ]

        render json as JSON
    }

    def newBill( ) {
        Invoice invoice = new Invoice()

        for (int i =0; i < params.pids.size(); i++) {
            Bill bill = new Bill ( product: Product.findById(params.pids[i]), quantity: params.qty[i] )
            invoice.addToBills(bill)
        }

        invoice.save(flush:true, failOnError:true)
        flash.message = "Invoice with id ${invoice.id} created !"
        redirect  action:'index'
    }
}
