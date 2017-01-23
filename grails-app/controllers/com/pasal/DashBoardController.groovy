package com.pasal

import analytics.Statement
import grails.converters.JSON


class DashBoardController {

    def reportService
    def index() {

        params.offset = params.offset ?: 0
        params.max = params.max ?: 10
        def rows = []
        def credits = []
        def debits = []
        //render view : '../data/index' , model :[statement: Transaction.list(params), statementCount: Transaction.count(), page:'dash', caller:'index']
        def statement = Statement.findAllByTxnValueDateGreaterThan( new Date("2017/01/11"))

        statement.each {
            rows << [it.txnValueDate.format("dd")]
            credits <<  it.credit
            debits << it.debit
        }

        def topExpenses = reportService.topFiveExpenses()
        def topExpensesName = reportService.topFiveExpensesList()

        def maxPie = topExpenses.data[0].value

        [statement: Statement.list(), xData : rows, xCredits : credits, xDebits: debits, maxCredits: credits.max(), maxDebits:debits.max(),
            jsonMap : topExpenses.data as JSON, maxPie : maxPie, topExpensesNameMap : topExpensesName.data as JSON
        ]

    }

    def list() {
        [statements: Transaction.list(params), statementCount: Transaction.count(), caller:'dash']
    }
}
