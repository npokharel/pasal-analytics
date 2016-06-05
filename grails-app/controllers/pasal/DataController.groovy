package pasal

import com.pasal.Transaction

class DataController {

    def index() {

        params.offset = params.offset ?: 0
        params.max = params.max ?: 10
        [statement: Transaction.list(params), statementCount: Transaction.count()]

    }

    def list() {
        [statements: Transaction.list(params), statementCount: Transaction.count()]
    }


}
