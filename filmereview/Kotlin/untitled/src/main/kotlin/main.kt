import dao.UserDAO


fun main(args: Array<String>) {
    val usersDAO = UserDAO()

    //usersDAO.setOne(User("Ximbinha","chupajoelma@excalipso.com.br","voltajojo",0))
    usersDAO.del(3)

    var user = usersDAO.getAll()
    for(users in user){
        println(users)
    }

}


