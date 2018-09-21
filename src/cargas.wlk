object knightRider {
	
	const pesoBase = 500
	const peligro = 10
	
	method peligro() = peligro
	
	method peso() = pesoBase
	
}

object bumlbebee{
	
	const 	pesoBase = 800
	// TODO ok, pero auto y robot deberían ser objetos en lugar de strings
	// tratamos de usar strings poco y nada
	// de hecho si fueran objetos podes poner ahi la responsabilidad de saber ellos la peligrosidad
	// y desde acá preguntarles directamente a ellos
	var property transformacion = "auto"
	
	
	method peligro(){

		if (transformacion == "auto"){
		
			return 15
		
		}else{
			
			return 30
		
		}
		
	}
	
	
	
	method peso() = pesoBase
			
}

object ladrillos{
	
	const pesoCadaUno = 2
	var property cantidadLadrillos = 10
	var property peligro = 2
	
	method peligro() = peligro
		
	method peso(){
		
		return (cantidadLadrillos * pesoCadaUno)
		
	}
	
	
}

object contenedorPortuario{
	
	var property cosas = []	//Interpreto del enunciado que las cosas que se contendrá	
							//serán Kight Rider, Bumblebee, etc.
							// TODO SI. Y también, bien podrían ser otros contenedores :) 
	const pesoBase = 100	


	method peso(){
		
		return (pesoBase + cosas.sum{cosa => cosa.peso()})
		
	}
	
	method peligro(){
		// TODO
		// por un lado, si lo escribis así, te queda un toque mas corto :)
		// return if(cosas.size() != 0) cosas.max{cosa => cosa.peligro()} else 0
		// por otro lado:
		// si te aseguras de que peligro siempre devuelva un valor, te podrías tmb ahorrar el else
		if (cosas.size() != 0){
		
			return cosas.max{cosa => cosa.peligro()}
		
		}else{
			
			return 0
			
		}
	
	}


}


object embalaje{
	
	var property contiene = knightRider //Supongo que solo puede contener una cosa a la vez
	
	method peso(){
		
		return (contiene.peso())
		
	}
	
	
	method peligro(){
		
		return (contiene.peligro()/2)
		
	}
	
}
	
