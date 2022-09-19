import personas.*
import frutas.*

object voley {
	method esJugadoPor(persona){
		persona.hacerDeporte(self)
	}
	
	method energiaQueResta(persona){
		return persona.ultimaFrutaComprada().energiaQueResta()
	}

}

object futbol {
	method esJugadoPor(persona){
		persona.hacerDeporte(self)
	}
	method energiaQueResta(persona){
		return if(not persona.tieneBajaEnergia())
			10
		else
			4
	}
}

object basquet {
	method esJugadoPor(persona){
		persona.hacerDeporte(self)
	}
	method energiaQueResta(persona)=3
	
}
