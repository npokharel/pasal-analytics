package com.pasal

class Transaction {

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
        table 'txn'
        version false
        id column: 'id'

    }
}
