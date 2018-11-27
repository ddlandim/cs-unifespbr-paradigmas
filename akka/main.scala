import akka.actor.{Actor, ActorLogging, ActorRef, ActorSystem,Props}

case object PING println ("recebi PING")
case object PONG println("recebi PONG")

object Main extends App{
	val system = ActorSystem("Actor")
	val ator = system.actorOf(Props[Ator], name = "Ator")

	ator ! Start("Caminho")
	ator ! PING
	ator ! PONG
}

"""
case class Start (secondPath : String)

class First extends Actor {
	def receove { 
		case "hello" => println("Hello World")
		case msg: String => println("msg = " + msg+ "enviado de " + sender)
		case _ => println("ERROR") 
	}
}

object Server extends App{
	val system = ActorSystem("Primeiro")
	val primeiro = system.actor0f(Props[First], name = "primeiro")
	println("Caminho = " + primeiro.path)
	primeiro ! "hello"
	primeiro ! "tchau"
	primeiro ! "123"
"""

}

