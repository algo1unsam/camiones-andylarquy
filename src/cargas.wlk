object knightRider {
	
	const peso = 500
	const peligro = 10
	
	method peligro() = peligro
	
	method peso() = peso
	
}

object bumlbebee{
	
	const 	peso = 800
	var property transformacion = "auto"
	
	
	method peligro(){

		if (transformacion == "auto"){
		
			return 15
		
		}else{
			
			return 30
		
		}
		
	}
	
	
	
	method peso() = peso
			
}

object ladrillos{
	
	var property pesoCadaUno = 2
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
	const pesoBase = 100	


	method peso(){
		
		return (pesoBase + cosas.sum{cosa => cosa.peso()})
		
	}
	
	method peligro(){
		
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
	
