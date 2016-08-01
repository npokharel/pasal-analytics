package com.pasal

import org.bson.types.ObjectId

class Transaction {
    ObjectId id
    Integer txnSerialNo
    Date txnDate
    String description
    String checkNo
    String debit
    String credit
    String balance
    static constraints = {
    }
    static mapping  = {
        table 'import_com'
        version false
        id column: 'id'

    }
    static mapWith = "mongo"
}
