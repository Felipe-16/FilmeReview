package plugins


import controller.GetUserByEmail
import io.ktor.application.*
import io.ktor.routing.*
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import com.google.gson.*
import io.ktor.features.*



fun main() {
    embeddedServer(Netty, port = 80, host = "127.0.0.1") {
        install(ContentNegotiation){

        }
        routing {
            get("/") {

                val email = call.request.queryParameters["email"] as String
                var  getuserbyemail:GetUserByEmail = GetUserByEmail()
                return gson(getuserbyemail.run(email))
            }
        }
    }.start(wait = true)
}





