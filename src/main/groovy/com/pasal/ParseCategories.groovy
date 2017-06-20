package com.pasal

import analytics.Statement
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.nodes.Element
import org.jsoup.select.Elements

import java.text.SimpleDateFormat

/**
 * Created by niraj on 9/30/16.
 */
class ParseCategories {

    public void parseStatement() {
        File input = new File ("/home/niraj/Downloads/Statement.html")
        Document doc = Jsoup.parse(input, "UTF-8", "http://nibl.com.np/")

        for (Element table : doc.select ("table")){
            for (Element row : table.select("tr .row2")) {
                Elements tds = row.select("td")
                //println "tds = ${tds.text()}"
                if (tds.size() > 6){
                    //println(tds.get(0).text() +  tds.get(1).text() +"  -- " + tds.get(2).text()+"  -- " + tds.get(3).text()+"  -- " + tds.get(4).text()+"  -- " + tds.get(5).text()+ "  -- " +tds.get(6).text() +"-- " + tds.get(7).text() )

                    SimpleDateFormat localDateFormat = new SimpleDateFormat("dd/MM/yy")
                    Date date = new Date(localDateFormat.parse(tds.get(0).text()).getTime())
                    Date txValueDate = new Date(localDateFormat.parse(tds.get(6).text()).getTime())

                    Statement statement = new Statement(
                            date: date,
                            description: tds.get(1).text(),
                            checkNumber: tds.get(2).text(),
                            debit: tds.get(3).text(),
                            credit: tds.get(4).text(),
                            balance: tds.get(5).text(),
                            txnValueDate: txValueDate,
                            txnId: tds.get(7).text()
                    )
                    println statement.properties
                    statement.save(failonError: true, flush: true)

                }

            }
        }

    }
}
