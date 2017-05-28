package com.pasal
import java.sql.Timestamp

class Bill {

    Timestamp dateCreated
    Timestamp lastUpdated
    static hasMany = [products : Product]
    static constraints = {
    }

    def amount = {
        products.price.sum()
    }
}
