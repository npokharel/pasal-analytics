package com.pasal

import org.bson.types.ObjectId

class Product {
    ObjectId id
    String name
    Double price
    String description
    boolean deleted = false

    Date dateCreated
    Date lastUpdated
    static constraints = {
        description nullable: true, blank: true
    }
    static mapWith = "mongo"

    static def toList() {
        return list()
    }

    String toString() {
        return name
    }


}
