package dao

import models.User

class UserDAO:GenericDAO {

    override fun getOne(id: Int): User {
        val connection = ConnectionDAO()
        val resultSet = connection.queryExecute("SELECT * FROM usuario WHERE id = ${id};")
        var user:User = User("","","",0)
        while (resultSet?.next()!!) {

            user = User(
                    resultSet.getString("nome"),
                    resultSet.getString("email"),
                    resultSet.getString("senha"),
                    resultSet.getInt("id")
            )
        }
        connection.close()
        return user
    }

    override fun getAll(): List<Any> {
        val connection = ConnectionDAO()
        val resultSet = connection.queryExecute("SELECT * FROM usuario;")
        val users = mutableListOf<User>()
        while (resultSet?.next()!!) {
            users.add(
                User(
                resultSet.getString("nome"),
                resultSet.getString("email"),
                resultSet.getString("senha"),
                resultSet.getInt("id")
            ))
        }
        connection.close()
        return users
    }

    override fun setOne(obj: Any) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement("""
          INSERT INTO usuario 
          (nome, email, senha)
          VALUES (?,?,?);""".trimMargin())
        val user = obj as User
        preparedStatement?.setString(1,user.nome)
        preparedStatement?.setString(2,user.email)
        preparedStatement?.setString(3,user.senha)
        preparedStatement?.executeUpdate()
        connection.close()
    }

    override fun setAll(list: List<Any>) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement(
            """
          INSERT INTO usuario 
          (nome, email, senha)
          VALUES (?,?,?);""".trimMargin()
        )
        for (obj in list) {
            val user = obj as User
            preparedStatement?.setString(1, user.nome)
            preparedStatement?.setString(2, user.email)
            preparedStatement?.setString(3, user.senha)
            preparedStatement?.executeUpdate()
            connection.close()
        }
    }

    override fun att(obj: Any) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement("""
          UPDATE usuario 
          SET nome = ?, email = ?, senha = ?
          WHERE id = ?;""".trimMargin())
        val user = obj as User
        preparedStatement?.setString(1,user.nome)
        preparedStatement?.setString(2,user.email)
        preparedStatement?.setString(3,user.senha)
        preparedStatement?.setInt(4,user.id)
        preparedStatement?.executeUpdate()
        connection.close()
    }

    override fun del(id: Int) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement("""
          DELETE FROM usuario 
          WHERE id = ?;""".trimMargin())
        preparedStatement?.setInt(1,id)
        preparedStatement?.executeUpdate()
        connection.close()
    }
}