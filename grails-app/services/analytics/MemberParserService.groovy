package analytics

import grails.transaction.Transactional

import java.text.DateFormat
import java.text.SimpleDateFormat


@Transactional
class MemberParserService {

    void importMembers ( ) {

        long now = System.currentTimeMillis();
//def reader = new File ("/home/niraj/Desktop/xcend/pasal/sampleData.csv")
        //.toCsvReader(['skipLines':1]) .eachLine {tokens ->

        def reader = new File ("/home/niraj/Desktop/xcend/pasal/FakeNameGenerator.com_322953e6/FakeNameGenerator.com_322953e6.csv")
                                .toCsvMapReader().eachLine {tokens ->

            createOrUpdateMembers( tokens )
        }

        println(">>>>>>>>>>>>>>>>>Import JOB END in <<<<<<<<<<<<<<<<<<<<"+ ((System.currentTimeMillis() - now)/(1000*60)) + " minutes" );

    }

    void createOrUpdateMembers (def token) {
        //println "token = $token"
        Member member = Member.findByGUID ( token?.gUID)

        if(member) {
            updateMemberData(member, token)
        }else {
            insertMemberData(token)
        }
    }

    void updateMemberData ( Member member, def data) {
        Member memberData = createMember ( data )
        println "memberData = ${memberData.properties}"
        println "member = ${member.properties}"
        if(member.gUID == memberData.gUID) {
            println "Skipping =================>" + data.GUID + " Identical data"
            return
        }else {
            member.properties = memberData.properties
            println "Updating member data ====> " + data.GUID + " Data has changed."
            member.save(flush: true, failOnError : true)

        }

    }

    Member createMember (def token ) {

        DateFormat format = new SimpleDateFormat("M/d/yyyy", Locale.ENGLISH)
        DateFormat expiresFormat = new SimpleDateFormat("M/yyyy", Locale.ENGLISH)

        println "token create = $token"
        println "token Number = ${token.MemberId}"
        println "token Gender = ${token.Gender}"

        Member member = Member.newInstance()

        member.memberId =  token?.MemberId //Double.valueOf(token?.Number)//token?.Number
        member.gender = token?.Gender
        member.nameSet = token?.NameSet
        member.title = token?.Title
        member.givenName = token?.GivenName
        member.middleInitial = token?.MiddleInitial
        member.surname = token?.Surname
        member.streetAddress = token?.StreetAddress
        member.city = token?.City
        member.state = token?.State
        member.stateFull = token?.StateFull
        member.zipCode = Integer.parseInt(token?.ZipCode)
        member.country = token?.Country
        member.countryFull = token?.CountryFull
        member.emailAddress = token?.EmailAddress
        member.username = token?.Username
        member.password = token?.Password
        member.browserUserAgent = token?.BrowserUserAgent
        member.telephoneNumber = token?.TelephoneNumber
        member.telephoneCountryCode = Integer.parseInt(token?.TelephoneCountryCode)
        member.mothersMaiden = token?.MothersMaiden
        member.birthday = format.parse(token?.Birthday)
        member.age = Integer.parseInt(token?.Age)
        member.tropicalZodiac = token?.TropicalZodiac
        member.cCType = token?.CCType
        member.cCNumber = Double.valueOf(token?.CCNumber)
        member.cVV2 = Double.valueOf(token?.CVV2)
        member.cCExpires = expiresFormat.parse(token?.CCExpires)
        member.nationalID = token?.NationalID
        member.uPS = token?.UPS
        member.westernUnionMTCN = Double.valueOf(token?.WesternUnionMTCN)
        member.moneyGramMTCN = Double.valueOf(token?.MoneyGramMTCN)
        member.color = token?.Color
        member.occupation = token?.Occupation
        member.company = token?.Company
        member.vehicle = token?.Vehicle
        member.domain = token?.Domain
        member.bloodType = token?.BloodType
        member.pounds = Double.valueOf(token?.Pounds)
        member.kilograms = Double.valueOf(token?.Kilograms)
        member.feetInches = token?.FeetInches
        member.centimeters = Integer.parseInt(token?.Centimeters)
        member.gUID = token?.GUID
        member.latitude = Double.valueOf(token?.Latitude)
        member.longitude = Double.valueOf(token?.Longitude)

        return member
    }

    void insertMemberData(def token ) {
        println "Creating merchant ---- > " + token.GUID

        Member member = createMember(token)
        member.save(flush: true, failOnError : true)
    }
}
