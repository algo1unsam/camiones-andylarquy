import cargas.*

object camion{
	
	var property cargaMaxima = 1000
	
	
	var property carga = []
	
	method cargar(cosa){
		
			carga.add(cosa)			
	}
	
	method descargar(cosa){
		
		carga.remove(cosa)
		
	}
	
	method tenesEsto(cosa){
		
		return (carga.contains(cosa))
		
	}
	
	method cargaActual(){
		
		return carga.sum{cosa => cosa.peso()}		
	}
	
	method cargaDisponible(){
		
		return (cargaMaxima - self.cargaActual())
		
	}
	
	method cargaPodria(cosa){
		
		return (cosa.peso() <= self.cargaDisponible())
		
	}
	
	method cosaMasPeligrosa(){
		
		carga.max{cosa => cosa.peligro()}
		
	}
	
	method puedeCircularConPeligro10(){
		
		return (carga.all{cosa => cosa.peligro() < 10})
		
	}
	
}


object motoneta{
	
	const cargaMaxima = 100
	const peligroMaximo = 5
	
	var property carga = []
	
	
	method cargar(cosa){
		
		if(self.cargaPodria(cosa)){
		
		carga.add(cosa)			//Este chequeo es redundante si se ejecuta deposito.llenarVehiculo()
								//Pero por las dudas lo agrego
		}else{
			
			error.throwWithMessage("Se esta intentando cargar mas de lo posible y/o con un peligro mayor de lo admitido")
			
		}
		
	}
	
	method cargaPodria(cosa){
		
		return ((cosa.peso() <= self.cargaDisponible()) && (cosa.peligro() <= peligroMaximo))
		
	}
	
	method cargaDisponible(){
		
		return (cargaMaxima - self.cargaActual())
		
	}
	
	method cargaActual(){
		
		return carga.sum{cosa => cosa.peso()}
		
	}
	
	
}
