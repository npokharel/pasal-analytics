package com.pasal.analytics

import grails.converters.JSON

class ImportController {
    def statementParserService
    def memberParserService
    def importStatements() {
        statementParserService.parseStatement()
        render {["Success" : true]} as JSON
    }

    def importMembers() {
        memberParserService.importMembers()
        def json = [ success: true]
        render json as JSON
    }
}
