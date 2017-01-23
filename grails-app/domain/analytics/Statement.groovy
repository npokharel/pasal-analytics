package analytics
import org.bson.types.ObjectId

class Statement {

    ObjectId id
    Date date
    String description
    String checkNumber
    Double debit
    Double credit
    Double balance
    Date txnValueDate
    String txnId
    static constraints = {
    }

    static mapWith = "mongo"
}
