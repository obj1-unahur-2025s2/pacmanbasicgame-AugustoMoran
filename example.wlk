import wollok.game.*

object pacman {
	var image = "pacman.png"
	//const property image = "pacman.png"
	//var property position = game.origin()
var position=game.at(0,0)
method position(unaPosicion) {
  position = unaPosicion
}
method position()=position

method image() = image
}
