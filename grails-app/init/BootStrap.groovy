import com.pasal.Role
import com.pasal.User
import com.pasal.UserRole

class BootStrap {

    def init = { servletContext ->
        def user = User.findByUsername('b')
        if(!user) {
            println "Creating user b ..."
            user = new User(username: 'b', password: 'b').save(failOnError: true)
            UserRole.create(user, Role.findByAuthority('ROLE_ADMIN'))
        }

    }
    def destroy = {
    }
}
