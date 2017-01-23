package com.pasal

import analytics.Statement
import grails.converters.JSON
import grails.plugins.jodatime.JodaTimeUtils

class DataController {

    def index() {

        params.offset = params.offset ?: 0
        params.max = params.max ?: 10
        [statement: Statement.list(params), statementCount: Statement.count(), page:'data', caller:'index']

    }

    def list() {
        [statements: Statement.list(params), statementCount: Statement.count(), caller:'data']
    }

    def objects () {

        def finalResults = []
        def data = Statement.list(params)

        println Statement.list()

        data.each{

            def results = [:]
            results.description = it?.description
            results.balance = it?.balance
            results.checkNumber = it?.checkNumber
            results.credit = it?.credit
            results.date = it?.txnValueDate?.format("MM/dd/yyyy")
            results.debit = it?.debit
            finalResults.add(results)

        }
        def result = [
                data : finalResults
        ]

        println "result = $result"

        render result as JSON
    }


}
