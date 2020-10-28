class Obstaculo {
	
}

class Pared inherits Obstaculo {
	var anchoPared
	
	method resistencia(){
		return 1
	}
}

class ParedVidrio inherits Pared {
	 override method resistencia(){
		return 10 * anchoPared
	}
}

class ParedMadrea inherits Pared {
	override method resistencia(){
		return 25 * anchoPared
	}
}

class ParedPiedra inherits Pared {
	override method resistencia(){
		return 50 * anchoPared
	}
}

class Cerdito inherits Obstaculo{
	method resistencia(){
		return 1
	}
}

class CerditoCasco inherits Cerdito{
	var resistenciaCasco
	
	override method resistencia(){
		return 10 * resistenciaCasco
	}
}

class CerditoEscudo inherits Cerdito{
	var resistenciaEscudo
	
	override method resistencia(){
		return 25 * resistenciaEscudo
	}
}
