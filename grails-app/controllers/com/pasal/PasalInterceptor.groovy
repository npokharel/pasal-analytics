package com.pasal


class PasalInterceptor {

    def springSecurityService

    public PasalInterceptor(){
        matchAll()
    }

    boolean before() {
        session.user = springSecurityService?.currentUser?.username
        true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
