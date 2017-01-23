package analytics

import grails.converters.JSON
import grails.transaction.Transactional

@Transactional
class ReportService {

    def topFiveExpenses() {

        HashMap<Object, String> jsonMap = new HashMap<>()

        def top = Statement.createCriteria().list() {
            maxResults(5)
            order( "debit", "desc")
        }

        jsonMap.data =  top.collect{
            return [value : it?.debit, name : it.description.toString()]
        }

        return jsonMap

    }

    def topFiveExpensesList() {
        HashMap<Object, String> jsonMap = new HashMap<>()

        def top = Statement.createCriteria().list() {
            maxResults(5)
            order( "debit", "desc")
        }

        jsonMap.data =  top.collect{
            return [name : it.description.toString()]
        }

        return jsonMap
    }
}
