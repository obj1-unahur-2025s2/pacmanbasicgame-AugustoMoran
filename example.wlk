import wollok.game.*
object pacman {
	var property image = "pacman.png"
	var property position = game.origin()
	var vidas = 3
    method cambiarPacman() {
	  if(image == "pacman.png"){
		image = "pacman2.png"
	  } else {
		image = "pacman.png"
	  }
	}
	method perderVida() {
		vidas = vidas - 1
		position = game.origin()	
	}
	
	method juegoTerminado() = vidas == 0
}
object sonidoPacman {
  method play() {
	game.sound("sonidoPacman.mp3").play()
  }
}
object cherry {
	var property image = "cherry.png"
	var property position = game.center()
}

object fantasmaRojo {
  var property image = "rival1.png"
  var property position = game.at(7,4)

  method moverHaciaArriba() {
	if(self.position().y() == game.height()-1){
		self.position(game.at(self.position().x(),0))
	} else{
		self.position(self.position().up(1))
	}
  }
  method moverHaciaDerecha() {
	if(self.position().x() == game.width()-1){
		self.position(game.at(0,self.position().y()))
	}else{
       self.position(self.position().right(1))
	}
  }
  method moverHaciaIzquierda() {
	if(self.position().x() == 0){
	 self.position(game.at(game.width()-1,self.position().y()))
	}else {
		self.position(self.position().left(1))
	}
  }
method moverHaciaAbajo() {
   if (self.position().y() == 0) {
      self.position(game.at(self.position().x(), game.height()-1))
   } else {
      self.position(self.position().down(1))
   }
}

  method moverAleatoriamente() {
	const direccion = (0..3).anyOne()
	if (direccion == 0){
		self.moverHaciaArriba()
	}else if(direccion == 1){
		self.moverHaciaDerecha()
	}else if(direccion == 2){
		self.moverHaciaIzquierda()
	} else {
		self.moverHaciaAbajo()
	}
  }
} 
object fantasmaAzul {
  var property image = "rival2.png"
  var property position = game.at(8,4)
    method moverHaciaArriba() {
	if(self.position().y() == game.height()-1){
		self.position(game.at(self.position().x(),0))
	} else{
		self.position(self.position().up(1))
	}
  }
  method moverHaciaDerecha() {
	if(self.position().x() == game.width()-1){
		self.position(game.at(0,self.position().y()))
	}else{
       self.position(self.position().right(1))
	}
  }
  method moverHaciaIzquierda() {
	if(self.position().x() == 0){
	 self.position(game.at(game.width()-1,self.position().y()))
	}else {
		self.position(self.position().left(1))
	}
  }
method moverHaciaAbajo() {
   if (self.position().y() == 0) {
      self.position(game.at(self.position().x(), game.height()-1))
   } else {
      self.position(self.position().down(1))
   }
}

  method moverAleatoriamente() {
	const direccion = (0..3).anyOne()
	if (direccion == 0){
		self.moverHaciaArriba()
	}else if(direccion == 1){
		self.moverHaciaDerecha()
	}else if(direccion == 2){
		self.moverHaciaIzquierda()
	} else {
		self.moverHaciaAbajo()
	}
  }

}
object gameOver {
  var property image = "gameOver.jpg"
  var property position = game.center()
   method moverHaciaArriba() {
	if(self.position().y() == game.height()-1){
		self.position(game.at(self.position().x(),0))
	} else{
		self.position(self.position().up(1))
	}
  }
  method moverHaciaDerecha() {
	if(self.position().x() == game.width()-1){
		self.position(game.at(0,self.position().y()))
	}else{
       self.position(self.position().right(1))
	}
  }
  method moverHaciaIzquierda() {
	if(self.position().x() == 0){
	 self.position(game.at(game.width()-1,self.position().y()))
	}else {
		self.position(self.position().left(1))
	}
  }
method moverHaciaAbajo() {
   if (self.position().y() == 0) {
      self.position(game.at(self.position().x(), game.height()-1))
   } else {
      self.position(self.position().down(1))
   }
}

  method moverAleatoriamente() {
	const direccion = (0..3).anyOne()
	if (direccion == 0){
		self.moverHaciaArriba()
	}else if(direccion == 1){
		self.moverHaciaDerecha()
	}else if(direccion == 2){
		self.moverHaciaIzquierda()
	} else {
		self.moverHaciaAbajo()
	}
  }
}