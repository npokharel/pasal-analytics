package com.pasal
import java.sql.Timestamp

class Bill {

    Timestamp dateCreated
    Timestamp lastUpdated
    Product product
    Double quantity
    static constraints = {
    }

    Double getAmount () {
        Double result = product.price * quantity
        return result
    }
}
