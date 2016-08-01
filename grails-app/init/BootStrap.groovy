import com.pasal.*
class BootStrap {

    def init = { servletContext ->
        def user = User.findByUsername('b')
        def userA = User.findByUsername('a')
        def roleAdmin = Role.findByAuthority('ROLE_ADMIN')
        def roleUser = Role.findByAuthority('ROLE_USER')

        if(!roleAdmin) {
            roleAdmin = new Role(authority: 'ROLE_ADMIN')
            roleAdmin.save(failOnError: true)
        }
        if(!roleUser) {
            roleUser = new Role(authority: 'ROLE_USER')
            roleUser.save(failOnError: true)
        }

        if(!user) {
            println "Creating user b ..."
            user = new User(username: 'b', password: 'b').save(failOnError: true)
            UserRole.create(user, Role.findByAuthority('ROLE_ADMIN'))
            UserRole.create(user, Role.findByAuthority('ROLE_USER'))
        }

        if(!userA) {
            println "Creating user A ..."
            userA = new User(username: 'a', password: 'a').save(failOnError: true)
            UserRole.create(userA, Role.findByAuthority('ROLE_USER'))
        }


    }
    def destroy = {
    }
}
