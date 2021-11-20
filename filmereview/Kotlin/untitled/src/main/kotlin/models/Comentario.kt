package models;

    data class Comentario (
        val nome_usuario:String,
        val comentario:String,
        val voto:Byte,
        val id_filme:Int
        )