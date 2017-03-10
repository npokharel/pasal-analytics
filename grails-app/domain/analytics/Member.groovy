package analytics

import org.bson.types.ObjectId

class Member {
    ObjectId id

    Double number
    String gender
    String nameSet
    String title
    String givenName
    String middleInitial
    String surname
    String streetAddress
    String city
    String state
    String stateFull
    Integer zipCode
    String country
    String countryFull
    String emailAddress
    String username
    String password
    String browserUserAgent
    String telephoneNumber
    Integer telephoneCountryCode
    String mothersMaiden
    Date birthday
    Integer age
    String tropicalZodiac
    String cCType
    Double cCNumber
    Double cVV2
    Date cCExpires
    String nationalID
    String uPS
    Double westernUnionMTCN
    Double moneyGramMTCN
    String color
    String occupation
    String company
    String vehicle
    String domain
    String bloodType
    Double pounds
    Double kilograms
    String feetInches
    Integer centimeters
    String gUID
    Double latitude
    Double longitude


    static constraints = {
        number nullable: true, blank : true
        gender nullable: true, blank : true
        nameSet nullable: true, blank : true
        title nullable: true, blank : true
        givenName nullable: true, blank : true
        middleInitial nullable: true, blank : true
        surname nullable: true, blank : true
        streetAddress nullable: true, blank : true
        city nullable: true, blank : true
        state nullable: true, blank : true
        stateFull nullable: true, blank : true
        zipCode nullable: true, blank : true
        country nullable: true, blank : true
        countryFull nullable: true, blank : true
        emailAddress nullable: true, blank : true
        username nullable: true, blank : true
        password nullable: true, blank : true
        browserUserAgent nullable: true, blank : true
        telephoneNumber nullable: true, blank : true
        telephoneCountryCode nullable: true, blank : true
        mothersMaiden nullable: true, blank : true
        birthday nullable: true, blank : true
        age nullable: true, blank : true
        tropicalZodiac nullable: true, blank : true
        cCType nullable: true, blank : true
        cCNumber nullable: true, blank : true
        cVV2 nullable: true, blank : true
        cCExpires nullable: true, blank : true
        nationalID nullable: true, blank : true
        uPS nullable: true, blank : true
        westernUnionMTCN nullable: true, blank : true
        moneyGramMTCN nullable: true, blank : true
        color nullable: true, blank : true
        occupation nullable: true, blank : true
        company nullable: true, blank : true
        vehicle nullable: true, blank : true
        domain nullable: true, blank : true
        bloodType nullable: true, blank : true
        pounds nullable: true, blank : true
        kilograms nullable: true, blank : true
        feetInches nullable: true, blank : true
        centimeters nullable: true, blank : true
        gUID nullable: true, blank : true
        latitude nullable: true, blank : true
        longitude nullable: true, blank : true
    }
    static mapWith = "mongo"
}
