object sesionDeManejo {
	method afectarEvento(unosPajaros){
		unosPajaros.forEach( {pajaro => pajaro.tranquilizar()} )
	}	
}

class InvasionDeCerditos {
	var cerditosInvasores
	
	var cantidadDeEnojos = cerditosInvasores / 100
	
	method afectarEvento(unosPajaros){
		//REVISAR ITERACION
	}
}

object fiestaSorpresa{
	//Homenajeados??????
}

class EventosDesafortunados {
	var eventosAOcurrir
	
	method afectarEvento(unosPajaros){
		eventosAOcurrir.forEach( {evento => evento.afectarEvento(unosPajaros)} ) //SIMILAR AL FOLDL!
	}
}
