import transportes.*
import cargas.*

object deposito{
	
	var property deposito = []
	
	method recibir(cosa){
		
		deposito.add(cosa)
		
	}
	
	method llenarVehiculo(transporte){
		
		deposito.forEach{
			cosa => 
		
		if (transporte.cargaPodria(cosa)){	
			transporte.cargar(cosa)
		
			deposito.remove(cosa)
			
		}
		
		
		}
				
	}
	
}
