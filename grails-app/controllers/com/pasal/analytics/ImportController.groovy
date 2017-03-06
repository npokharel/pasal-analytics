package com.pasal.analytics

class ImportController {
    def statementParserService

    def importStatements() {
        statementParserService.parseStatement()
        render {["Success" : true]} as JSON
    }
}
