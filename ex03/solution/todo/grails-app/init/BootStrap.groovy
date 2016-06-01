import todo.Role
import todo.Todo
import todo.User
import todo.UserRole

class BootStrap {

    def init = { servletContext ->

        Role admin = new Role("ROLE_ADMIN").save()
        User user = new User("user", "pass").save()
        UserRole.create(user, admin, true)

        5.times { new Todo(description: "Todo ${it+1}").save() }
    }
    def destroy = {
    }
}
