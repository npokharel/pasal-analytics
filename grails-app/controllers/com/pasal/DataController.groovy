package com.pasal

class DataController {

    def index() {

        params.offset = params.offset ?: 0
        params.max = params.max ?: 10
        [statement: Transaction.list(params), statementCount: Transaction.count(), page:'data', caller:'index']

    }

    def list() {
        [statements: Transaction.list(params), statementCount: Transaction.count(), caller:'data']
    }


}
