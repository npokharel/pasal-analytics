package com.pasal

import org.bson.types.ObjectId

class Product {
    ObjectId id
    String name
    String price
    static constraints = {
    }
    static mapWith = "mongo"

}
