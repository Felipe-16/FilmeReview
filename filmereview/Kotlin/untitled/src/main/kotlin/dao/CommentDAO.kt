package dao

import models.Comment


class CommentDAO:GenericDAO {

    override fun getOne(id: Int): Comment{
        val connection = ConnectionDAO()
        val resultSet = connection.queryExecute("SELECT * FROM comments WHERE id = ${id};")
        var comment:Comment = Comment(0,0,"",1,5)
        while (resultSet?.next()!!) {

            comment = Comment(
                    resultSet.getInt("id"),
                    resultSet.getInt("id_usuario"),
                    resultSet.getString("comentario"),
                    resultSet.getByte("voto"),
                    resultSet.getInt("id_filme")
                )

        }
        connection.close()
        return comment
    }

    override fun getAll(): List<Any> {
        val connection = ConnectionDAO()
        val resultSet = connection.queryExecute("SELECT * FROM comments;")
        val comment = mutableListOf<Comment>()
        while (resultSet?.next()!!) {
                comment.add(Comment(
                resultSet.getInt("id"),
                resultSet.getInt("id_usuario"),
                resultSet.getString("comentario"),
                resultSet.getByte("voto"),
                resultSet.getInt("id_filme")
            ))
        }
        connection.close()
        return comment
    }

    override fun setOne(obj: Any) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement("""
          INSERT INTO comments 
          (id_usuario, comentario, voto, id_filme)
          VALUES (?,?,?,?);""".trimMargin())
        val comment = obj as Comment
        preparedStatement?.setInt(1,comment.id_usuario)
        preparedStatement?.setString(2,comment.comentario)
        preparedStatement?.setByte(3,comment.voto)
        preparedStatement?.setInt(4,comment.id_filme)
        preparedStatement?.executeUpdate()
        connection.close()
    }

    override fun setAll(list: List<Any>) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement(
            """
          INSERT INTO comments 
          (id_usuario, comentario, voto, id_filme)
          VALUES (?,?,?,?);""".trimMargin()
        )
        for (obj in list) {
            val comment = obj as Comment
            preparedStatement?.setInt(1, comment.id_usuario)
            preparedStatement?.setString(2, comment.comentario)
            preparedStatement?.setByte(3, comment.voto)
            preparedStatement?.setInt(4, comment.id_filme)
            preparedStatement?.executeUpdate()
            connection.close()
        }
    }

    override fun att(obj: Any) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement("""
          UPDATE comments
          SET id_usuario = ?,  comentario = ?, voto = ?, id_filme = ?
          WHERE id = ?;""".trimMargin())
        val comment = obj as Comment
        preparedStatement?.setInt(1, comment.id_usuario)
        preparedStatement?.setString(2, comment.comentario)
        preparedStatement?.setByte(3, comment.voto)
        preparedStatement?.setInt(4, comment.id_filme)
        preparedStatement?.executeUpdate()
        connection.close()
    }

    override fun del(id: Int) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement("""
          DELETE FROM comments 
          WHERE id = ?;""".trimMargin())
        preparedStatement?.setInt(1,id)
        preparedStatement?.executeUpdate()
        connection.close()
    }
}