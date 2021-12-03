package models

data class User(
    val nome:String,
    val email: String,
    //private?
    val senha: String,
    val id: Int
)

