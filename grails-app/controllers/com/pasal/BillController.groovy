package com.pasal

import grails.converters.JSON

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

    def getProductJSON() {
        Product product = Product.findById(params?.id)

        def json = [
                'id' : product?.id,
                'name':product?.name,
                'description' : product?.description

        ]
        render json as JSON
        //println "product = " + product as JSON
        //render contentType: 'text/json',[{id:product.id, name : product?.name , description: product?.description}]'
    }
}
