package com.pasal

import org.bson.types.ObjectId

class Product {
    ObjectId id
    String name
    Double price
    String description

    Date dateCreated
    Date lastUpdated
    static constraints = {
    }
    static mapWith = "mongo"

    static def toList() {
        return list()
    }

    String toString() {
        return name
    }

}
