import plagas.*


class Hogar {
	var property nivelDeMugre = 0
	var property confort = 0
	
	method esBueno() { return nivelDeMugre <= (confort / 2) }
	method atacado(plaga) { nivelDeMugre += plaga.nivelDeDanio()  }
}

class Huerta {
	var property capacidadDeProduccion = 0
	
	method esBueno() { return capacidadDeProduccion > nivel.nivelSolicitado() }
	method atacado(plaga) { 
		capacidadDeProduccion -= (plaga.nivelDeDanio() * 0.10)
		if(plaga.transmiteEnfermedades()){ capacidadDeProduccion -= 10 }
	}
}

class Mascota {
	var property nivelDeSalud = 0
	
	method esBueno() { return nivelDeSalud > 250 }
	method ataque(plaga) { 
		if(plaga.transmiteEnfermedades()) { nivelDeSalud -= plaga.nivelDeDanio() }
	}
}

object nivel {
	var property nivelSolicitado = 100
}

class Barrio {
	var property elementos = [  ]
	
	method agregar(elemento) { elementos.add(elemento) }
	method sacar(elemento) { elementos.remove(elemento) }	
	method esBueno() { return self.elementosBuenos().size() > self.elementosMalos().size()  }
	method elementosBuenos() { return elementos.filter({ elemento => elemento.esBueno() }) }
	method elementosMalos() { return  elementos.filter({ elemento => not elemento.esBueno() }) }
}

