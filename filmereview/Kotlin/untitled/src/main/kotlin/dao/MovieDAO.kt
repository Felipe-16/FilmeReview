package dao

import models.Movie


class MovieDAO:GenericDAO {

    override fun getOne(id: Int): Movie {
        val connection = ConnectionDAO()
        val resultSet = connection.queryExecute("SELECT * FROM movies WHERE id = ${id};")
        var movie:Movie = Movie("","","","",0)
        while (resultSet?.next()!!) {

            movie = Movie(
                    resultSet.getString("nome"),
                    resultSet.getString("sinopse"),
                    resultSet.getString("ficha_tecnica"),
                    resultSet.getString("ano"),
                    resultSet.getInt("id")

            )
        }
        connection.close()
        return movie
    }

    override fun getAll(): List<Any> {
        val connection = ConnectionDAO()
        val resultSet = connection.queryExecute("SELECT * FROM movies;")
        val movie = mutableListOf<Movie>()
        while (resultSet?.next()!!) {
            movie.add(
                Movie(
                    resultSet.getString("nome"),
                    resultSet.getString("sinopse"),
                    resultSet.getString("ficha_tecnica"),
                    resultSet.getString("ano"),
                    resultSet.getInt("id")
                )
            )
        }
        connection.close()
        return movie
    }

    override fun setOne(obj: Any) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement("""
          INSERT INTO movies
          (nome, sinopse, ficha_tecnica, ano)
          VALUES (?,?,?,?,?);""".trimMargin())
        val movie = obj as Movie
        preparedStatement?.setString(1,movie.nome)
        preparedStatement?.setString(2,movie.sinopse)
        preparedStatement?.setString(3,movie.ficha_tecnica)
        preparedStatement?.setString(4,movie.ano)
        preparedStatement?.setInt(5,movie.id)
        preparedStatement?.executeUpdate()
        connection.close()
    }

    override fun setAll(list: List<Any>) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement("""
          INSERT INTO movies
          (nome, sinopse, ficha_tecnica, ano)
          VALUES (?,?,?,?,?);""".trimMargin())
        for (obj in list) {
        val movie = obj as Movie
        preparedStatement?.setString(1,movie.nome)
        preparedStatement?.setString(2,movie.sinopse)
        preparedStatement?.setString(3,movie.ficha_tecnica)
        preparedStatement?.setString(4,movie.ano)
        preparedStatement?.setInt(5,movie.id)
        preparedStatement?.executeUpdate()
        connection.close()
    }
    }

    override fun att(obj: Any) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement("""
          UPDATE movies
          SET nome = ?, sinopse = ?, ficha_tecnica = ?, ano = ?
          WHERE id = ?;""".trimMargin())
        val movie = obj as Movie
        preparedStatement?.setString(1,movie.nome)
        preparedStatement?.setString(2,movie.sinopse)
        preparedStatement?.setString(3,movie.ficha_tecnica)
        preparedStatement?.setString(4,movie.ano)
        preparedStatement?.setInt(5,movie.id)
        preparedStatement?.executeUpdate()
        connection.close()
    }

    override fun del(id: Int) {
        val connection = ConnectionDAO()
        val preparedStatement = connection.getPreparedStatement("""
          DELETE FROM movies
          WHERE id = ?;""".trimMargin())
        preparedStatement?.setInt(1,id)
        preparedStatement?.executeUpdate()
        connection.close()
    }
}