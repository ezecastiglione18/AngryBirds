object islaPajaro {
	var pajarosHabitantes
	
	//PUNTO 1.C
	method pajarosFuertes(){
		return pajarosHabitantes.filter( {pajaro => pajaro.esFuerte()} )
	}
	
	//PUNTO 1.D
	method fuerzaDeLaIsla(){
		return self.pajarosFuertes().sum( {pajaro => pajaro.fuerza()} )
	}
	
	//PUNTO 2
	method ocurreEvento(unEvento){
		unEvento.afectarIsla(pajarosHabitantes)
	}
	
	//PUNTO 3.B
	method atacarLaIslaCerdito(){
		var obstaculoDefensor = islaCerdito.obstaculoMasCercano()
		var pajaroAtacante = pajarosHabitantes.head()
		
		if(pajaroAtacante.fuerza() >= obstaculoDefensor.resistencia()){
			islaCerdito.eliminarObstaculo(obstaculoDefensor)
		}
		self.pajaroVuelveALaFila(pajaroAtacante)
		self.atacarLaIslaCerdito() //Recursividad
	}	
	
	method pajaroVuelveALaFila(unPajaro){
		pajarosHabitantes.remove(unPajaro)
		pajarosHabitantes.add(unPajaro) //Lo elimina y lo vuelve a agregar al fondo de la lista asi ataca el segundo pajaro y asi
										//sucesivamente
	}
	
	//PUNTO 3.C
	method seRecuperaronLosHuevos(){
		return islaCerdito.quedoLibreDeObstaculos()
	}
}

//----------------
object islaCerdito {
	var obstaculos
	
	method obstaculoMasCercano(){
		return obstaculos.head()
	}
	
	method eliminarObstaculo(unObstaculo){
		obstaculos.remove(unObstaculo)
	}
	
	method quedoLibreDeObstaculos(){
		return obstaculos.isEmpty()
	}
}
