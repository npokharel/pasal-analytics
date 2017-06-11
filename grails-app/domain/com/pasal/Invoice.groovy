package com.pasal

import org.bson.types.ObjectId

class Invoice {
    ObjectId id
    static hasMany = [bills : Bill]
    Double amount

    Date dateCreated
    Date lastUpdated

    static constraints = {
        amount nullable: true
    }
    static mapWith = "mongo"

    def getTotalAmount = {
        /*return product.price * quantity*/
        def result = 0
        this.bills.each {
            result += it.amount
        }
        return result
    }

    def getTotal() {
        Double result = 0.0
        this.bills.each {
            result += it.amount
        }
        return result
    }
}
