package com.pasal



class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller : 'dashBoard', action : 'index' )
       // "/logout" controller: grails.plugin.springsecurity.LogoutController , action:'index'
        "500"(view:'/error')
        "403" (view: '/login/denied')
        "404"(view:'/notFound')
    }
}
