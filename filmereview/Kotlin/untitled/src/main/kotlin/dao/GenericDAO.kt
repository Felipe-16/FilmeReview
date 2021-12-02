package dao

interface GenericDAO {
    //Pegar
    fun getOne(id:Int): Any
    fun getAll(): List<Any>
    //Inserir
    fun setOne(obj:Any): Unit
    fun setAll(list:List<Any>): Unit
    //Update
    fun att(obj: Any): Unit
    fun del(id:Int):Unit
}