class PajaroComun{
	var ira
	
	method fuerza(){
		return ira *2
	}
	
	method enojarse(){
		ira = ira * 2
	}
	
	method esFuerte(){
		return self.fuerza() > 50
	}
	
	method tranquilizar(){
		ira -= 5
	}
	
	//PUNTO 3.A
	method puedeDerribar(unObstaculo){
		return self.fuerza() > unObstaculo.resistencia()
	}
}

class Red inherits PajaroComun{
	var cantidadEnojos
	
	override method fuerza(){
		return 10 * cantidadEnojos * ira
	}
	
	override method enojarse(){
		super()
		cantidadEnojos++
	}
}

class Bomb inherits PajaroComun{
	override method fuerza(){
		return super().min(9000)
	}
}

class Chuck inherits PajaroComun{
	var velocidadActual
	
	override method fuerza(){
		if(velocidadActual > 80)
		{
			return 150 + 5*(velocidadActual - 80)
		}
		else
		{
			return 150
		}
	}
	
	override method enojarse(){
		velocidadActual = velocidadActual * 2
	}
	
	override method tranquilizar(){
		
	}
}

class Terence inherits Red {
	var multiplicador
	
	override method fuerza(){
		return super() * multiplicador
	}
}

class Matilda inherits PajaroComun {
	var huevos //En KG
	
	override method fuerza(){
		return huevos.sum( {huevo => huevo.fuerzaHuevo()} )
	}
	
	override method enojarse(){
		super()
		huevos.add(new Huevo(fuerzaHuevo = 2))
	}
}

//-----------------------------------------------------
class Huevo{
	var property fuerzaHuevo
}
