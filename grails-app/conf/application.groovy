// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.pasal.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.pasal.UserRole'
grails.plugin.springsecurity.authority.className = 'com.pasal.Role'
grails.plugin.springsecurity.logout.postOnly = false
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
        [pattern: '/',               access: ['permitAll']],
        [pattern: '/error',          access: ['permitAll']],
        [pattern: '/index',          access: ['ROLE_ADMIN']],
        [pattern: '/data/**',        access: ['ROLE_ADMIN', 'ROLE_USER']],
        [pattern: '/import/**',      access: ['ROLE_ADMIN']],
        [pattern: '/product/**',     access: ['ROLE_ADMIN']],
        [pattern: '/dashBoard/**',   access: ['ROLE_ADMIN','ROLE_USER']],
        [pattern: '/login/auth',     access: ['permitAll']],
        [pattern: '/logout',         access: ['permitAll']],
        [pattern: '/index.gsp',      access: ['permitAll']],
        [pattern: '/shutdown',       access: ['permitAll']],
        [pattern: '/assets/**',      access: ['permitAll']],
        [pattern: '/**/js/**',       access: ['permitAll']],
        [pattern: '/**/css/**',      access: ['permitAll']],
        [pattern: '/**/images/**',   access: ['permitAll']],
        [pattern: '/**/favicon.ico', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
        [pattern: '/assets/**',      filters: 'none'],
        [pattern: '/**/js/**',       filters: 'none'],
        [pattern: '/**/css/**',      filters: 'none'],
        [pattern: '/**/images/**',   filters: 'none'],
        [pattern: '/**/favicon.ico', filters: 'none'],
        [pattern: '/**',             filters: 'JOINED_FILTERS']
]
grails.plugin.springsecurity.adh.errorPage = null


