import wollok.game.*
import pgmProgram.*

object pacman {
	var image = "pacman.png"
	//var property position = game.origin()
var position=game.at(0,0)
method position(unaPosicion) {
  position = unaPosicion
}
method position()=position
method image() = image
method image(nuevaImagen) {
  image = nuevaImagen
}


method alternarPacman() {
if (image == "pacman.png"){
	image = "pacmanCopia.png"
} else {
image = "pacman.png"
}
}


}
