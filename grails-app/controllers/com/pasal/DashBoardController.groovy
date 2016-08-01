package com.pasal


class DashBoardController {

    def index() {

        params.offset = params.offset ?: 0
        params.max = params.max ?: 10
        render view : '../data/index' , model :[statement: Transaction.list(params), statementCount: Transaction.count(), page:'dash', caller:'index']

    }

    def list() {
        [statements: Transaction.list(params), statementCount: Transaction.count(), caller:'dash']
    }
}
