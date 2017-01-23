package analytics

import grails.transaction.Transactional
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.nodes.Element
import org.jsoup.select.Elements

import javax.swing.plaf.nimbus.State
import java.text.NumberFormat
import java.text.SimpleDateFormat

@Transactional
class StatementParserService {

    public static void parseStatement() {

        //File input = new File ("/home/niraj/workspace/baTests/src/test/resources/statement.html")
        File input = new File ("/home/niraj/Desktop/xcend/pasal/Jan_Statement.html")
        Document docc = Jsoup.parse(input, "UTF-8", "http://nibl.com.np/")
        int count = 0
        for (Element table : docc.select("table")){
            for (Element row : table.select("tr .row2")) {
                Elements tds = row.select("td")
                //println "tds = ${tds.text()}"
                if (tds.size() > 6){

                    createOrUpdateStatements(tds)
                    count++
                    println "count = $count"
                    //println(tds.get(0).text() +  tds.get(1).text() +"  -- " + tds.get(2).text()+"  -- " + tds.get(3).text()+"  -- " + tds.get(4).text()+"  -- " + tds.get(5).text()+ "  -- " +tds.get(6).text() +"-- " + tds.get(7).text() )

                    //println statement.properties
                    //statement.save(failonError: true, flush: true)
                }
            }
        }
    }

    def static convertStringToDouble(String s) {

        s=s.replaceAll("\\s", "")
        if((s == "") || (s == null)) return 0
        def str = s.replaceAll(",","")

        Double aDouble
        try{
            aDouble= Double.parseDouble(str)
        }catch (NumberFormatException e){
            return 0
        }

        return aDouble

    }

    def static createOrUpdateStatements(Elements tds) {
        String txnId = tds.get(7).text()
        String description = tds.get(1).text()

        Statement statement = Statement.findByTxnIdAndDescription(txnId, description)

        if(statement){
            updateStatement(tds, statement)
        }else{
            insertStatement(tds)
        }
    }

    def static updateStatement(Elements tds, Statement statement) {
        Statement statementFromData = createStatement(tds)
        println "statementFromData = " + statementFromData.properties
        if(statementFromData.properties == statement.properties) {
            println "Skipping Data has not changed" + statement.id
            return
        }
        statement.properties = statementFromData.properties
        println "Updating data" + statement.id
        statement.save(flush:true, failOnError:true)
    }

    def static insertStatement(Elements tds) {
        println "Creating statement"
        Statement statement = createStatement(tds)
        statement.save(flush:true, failOnError:true)
    }

    static Statement createStatement(Elements tds) {
        String balanceString = tds.get(5).text()
        balanceString = balanceString.substring(0,balanceString.length()-5)

        SimpleDateFormat localDateFormat = new SimpleDateFormat("dd/MM/yy")
        Date date = new Date(localDateFormat.parse(tds.get(0).text()).getTime())
        Date txValueDate = new Date(localDateFormat.parse(tds.get(6).text()).getTime())
        Double debit = convertStringToDouble(tds.get(3).text().trim())
        Double credit =  convertStringToDouble(tds.get(4).text().trim())
        Double balance =  convertStringToDouble(balanceString)

        //println "balance = $balance"
        Statement statement = new Statement(
                date: date,
                description: tds.get(1).text(),
                checkNumber: tds.get(2).text(),
                debit: debit,
                credit: credit,
                balance: balance,
                txnValueDate: txValueDate,
                txnId: tds.get(7).text()
        )

        return statement
    }
}

