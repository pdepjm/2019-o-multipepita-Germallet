object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia += comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return energia.between(500, 1000)
	}
	
	method cuantoQuiereVolar() {
		var cuantoQuiereVolar = energia / 5
		
		if (energia.between(300, 400))
			cuantoQuiereVolar += 10
		if (energia % 20 == 0)
			cuantoQuiereVolar += 15
		
		return cuantoQuiereVolar
	}
	
	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras() {
		if (self.estaCansada())
			self.come(alpiste)
		if (self.estaFeliz())
			self.vola(8)
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var mojado
	
	method mojarse() {
		mojado = true
	}
	
	method secarse() {
		mojado = false
	}
	
	method energiaQueOtorga() {
		if (mojado)
			return 15
		else
			return 20
	}
}

object canalones {
	var tieneQueso
	var tieneSalsa
	
	method energiaQueOtorga() {
		var energiaQueOtorga = 20
		
		if (tieneSalsa)
			energiaQueOtorga += 5
		if (tieneQueso)
			energiaQueOtorga += 7
	}
	
	method agregarQueso () {
		tieneQueso = true
	}
	
	method sacarQueso () {
		tieneQueso = false
	}
	
	method agregarSalsa () {
		tieneSalsa = true
	}
	
	method sacarSalsa () {
		tieneSalsa = false
	}
}

object roque {
	
	method entrenar() {
		pepita.vola(10)
		pepita.come(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}
}
