import models.Comentario
import java.sql.DriverManager

fun main(args: Array<String>) {
    //Criando conexão com o banco
    val connection = DriverManager.getConnection("jdbc:sqlite:popploc.db")

    //Criando caminho para realização de queries
    val sqlStatement = connection.createStatement()

    //Executando query
    val resultSet = sqlStatement.executeQuery("SELECT * FROM VW_Comentarios; SELECT * FROM movies;")

    while(resultSet.next()){
        val comentario = Comentario(
            resultSet.getString("nome_usuario"),
            resultSet.getString("comentario"),
            resultSet.getByte("voto"),
            resultSet.getInt("id_filme")
        )
        println("Dados do comentario: ${comentario}")
    }
    resultSet.close()
    connection.close()
}