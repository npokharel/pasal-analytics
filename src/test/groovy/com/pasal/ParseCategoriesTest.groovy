package com.pasal

/**
 * Created by niraj on 1/6/17.
 */
import spock.lang.Specification

class ParseCategoriesTest extends Specification{
    def "someLibraryMethod returns true"() {
        setup:
        //Library lib = new Library()
        ParseCategories p = new ParseCategories()
        when:
        //def result = lib.someLibraryMethod()
        //def result = lib.buildExcludeQuery()
        p.parseStatement()

        then:
        //result == true
        1 == 1
    }
}
