import elementos.*

class Plaga {
	var property poblacion = 0
	var property poblacionMinima = 10
	
	method transmiteEnfermedades() { return poblacionMinima >= 10 } 
	  
}

class Cucaracha inherits Plaga {
	var property pesoPromedio = 0
	
	method nivelDeDanio() { return poblacion / 2 }
	/* OBLIGATORIO poner "override"
	 * si repito en la subclase un metodo que tengo en la superclase 
	 */
	override method transmiteEnfermedades() { return super() and pesoPromedio >= 10 }
	method atacar(elemento) { poblacion *= 1.10; pesoPromedio += 2; elemento.atacado(self) }
}

class Pulga inherits Plaga {
	
	method nivelDeDanio() { return poblacion * 2 }
}

class Mosquito inherits Plaga {
	
	method nivelDeDanio() { return poblacion }
	override method transmiteEnfermedades() { return poblacion % 3 == 0 and super() }
}