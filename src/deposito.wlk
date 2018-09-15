import transportes.*
import cargas.*

object deposito{
	
	var property deposito = []
	
	method recibir(cosa){
		
		deposito.add(cosa)
		
	}
	
	
	
	method llenarVehiculo(vehiculo){
		
		deposito.forEach{
			cosa => 
		
			if(vehiculo.cargaPodria(cosa)){
				
				vehiculo.cargar(cosa)
		
				deposito.remove(cosa)
			
			}
			
		
		
		}
				
	}
	
}
