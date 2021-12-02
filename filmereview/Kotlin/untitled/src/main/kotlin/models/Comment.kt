package models;

    data class Comment (
        val id: Int,
        val id_usuario: Int,
        val comentario:String,
        val voto:Byte,
        val id_filme:Int
        )