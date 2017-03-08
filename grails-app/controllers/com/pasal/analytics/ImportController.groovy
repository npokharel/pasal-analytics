package com.pasal.analytics

import grails.converters.JSON

class ImportController {
    def statementParserService

    def importStatements() {
        statementParserService.parseStatement()
        render {["Success" : true]} as JSON
    }
}
