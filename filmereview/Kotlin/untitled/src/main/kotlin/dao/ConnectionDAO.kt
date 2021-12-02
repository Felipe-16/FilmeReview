package dao

import java.sql.*

class ConnectionDAO {
    val connection: Connection
    var statement: Statement?
    var preparedStatement : PreparedStatement?
    var resultSet: ResultSet?

    init {
        this.connection = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Danie\\Documents\\GitHub\\FilmeReview\\filmereview\\sql\\popploc.db")
        this.statement = null
        this.resultSet = null
        this.preparedStatement = null

    }

    fun queryExecute(sqlString: String):ResultSet? {
        this.statement = connection.createStatement()
        this.resultSet = this.statement?.executeQuery(sqlString)
        return this.resultSet
    }

    fun close(){
        this.resultSet?.close()
        this.statement?.close()
        this.preparedStatement?.close()
        this.connection.close()
    }
    //Função para Inserção
    fun getPreparedStatement(sqlString: String): PreparedStatement? {
        this.preparedStatement = this.connection?.prepareStatement(sqlString)
        return this.preparedStatement

    }

    fun commit() {
        this.connection?.commit()
    }
}
