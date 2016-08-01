package com.pasal



class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller : 'data', action : 'index' )
       // "/logout" controller: grails.plugin.springsecurity.LogoutController , action:'index'
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
