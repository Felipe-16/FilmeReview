package controller

import dao.CommentDAO
import dao.MovieDAO
import dao.UserDAO
import models.Comment
import models.Movie
import models.User


//------------------------------------------------------

class GetUserByEmail{
    private var userDAO:UserDAO = UserDAO()
    fun run(email: String): User{
        val user = userDAO.getOne(3)
        return user
    }
}

class GetMovieByName{
    var movieDAO:MovieDAO = MovieDAO()
    fun run(nome: String): Movie{
        val movie = movieDAO.getOne(3)
        return  movie
    }
}

class GetCommentByUserId{
    var commentDAO:CommentDAO = CommentDAO()
    fun run(id_filme: String): Comment{
        val comment = commentDAO.getOne(3)
        return comment
    }
}