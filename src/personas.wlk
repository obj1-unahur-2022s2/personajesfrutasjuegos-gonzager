import frutas.*
object martin {
	var ultimaFrutaComprada = nullFruta
	var edad = 14
	var energia = 15
	var cantidadDeVecesRealizoDeporte = 0
	
	method ultimaFrutaComprada() = ultimaFrutaComprada
	method edad() = edad
	method energia() = energia
	method cantidadDeVecesRealizoDeporte() = cantidadDeVecesRealizoDeporte
	method comprar(unaFruta){
		ultimaFrutaComprada = unaFruta
	}
	
	method restarEnergia(unaCantidad){
		energia = 0.max(energia - unaCantidad)
	}
		
	method hacerDeporte(unDeporte){
		cantidadDeVecesRealizoDeporte++
		self.restarEnergia(unDeporte.energiaQueResta(self))
	}
			
	method esAdulto()= edad >= 18
	
	method tieneBajaEnergia()=
		(self.esAdulto() and energia <=2) or
		(!self.esAdulto() and energia <= 5)	
	
	method esFeliz() = 
		cantidadDeVecesRealizoDeporte >= 2
		and not self.tieneBajaEnergia()
	
	method cumplirAnios() {
		edad++
	}
	
	method comerFruta(){
		if(ultimaFrutaComprada.leGusta(self)) {
			energia += ultimaFrutaComprada.energiaQueProvee()
			ultimaFrutaComprada = nullFruta
		}
	}
	
	method esDeportista() = cantidadDeVecesRealizoDeporte.even()
}


object juana {
	var energia = 45
	var endorfina = 0
	var ultimaFrutaComprada = nullFruta
	
	method energia() = energia
	method endorfina()= endorfina
	method ultimaFrutaComprada() = ultimaFrutaComprada
	
	method comprar(unaFruta){
		ultimaFrutaComprada = unaFruta
	}
	method restarEnergia(unaCantidad){
		energia = 0.max(energia - unaCantidad)
	}
	
	method hacerDeporte(unDeporte){
		endorfina += 5
		self.restarEnergia(unDeporte.energiaQueResta(self))
	}
	
	method tieneBajaEnergia()= energia < 25

	method esFeliz() = energia / 2 < endorfina * 2
	
	method esDeportista() = 
		self.esFeliz() 
		and not self.tieneBajaEnergia() 
}

object pepe {
	var ultimaFrutaComprada = nullFruta
	var energia = 25
	var fuerza = 0
	var peso = 80
	
	method energia()= energia
	method fuerza()= fuerza
	method peso() = peso
	method ultimaFrutaComprada() = ultimaFrutaComprada
	method comprar(unaFruta){
		ultimaFrutaComprada = unaFruta
	}
	
	method restarEnergia(unaCantidad){
		energia = 0.max(energia - unaCantidad)
	}
	
	method hacerDeporte(unDeporte){
		fuerza = 10.min(fuerza + 3)
		self.restarEnergia(unDeporte.energiaQueResta(self))
		peso = 0.max(peso -1)
	}
	
	method tieneBajaEnergia()= true

	method esFeliz() = peso < 75 and fuerza > 5
	
	method esDeportista() = true
}