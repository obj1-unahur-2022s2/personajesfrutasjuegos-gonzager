object equipo {
	var delanteroIzquierdo
	var delanteroDerecho
	var defensor
	
	method delanteroIzquierdo()= delanteroIzquierdo
	method delanteroDerecho()=delanteroDerecho
	method defensor() = defensor
	
	method asignarJugadores(_delanteroIzquierdo,_delanteroDerecho,_defensor){
		delanteroIzquierdo= _delanteroIzquierdo
		delanteroDerecho = _delanteroDerecho
		defensor = _defensor
	}
	
	method esEquipoDeportista() =
		delanteroIzquierdo.esDeportista()
		and delanteroDerecho.esDeportista()
		and defensor.esDeportista()

	method rotarPosiciones(){
		self.asignarJugadores(defensor , delanteroIzquierdo, delanteroDerecho)
	}
	
	method jugadorConMasEnergiaConColecciones() {
		return [delanteroIzquierdo,delanteroDerecho,defensor].max( {j => j.energia()})
	}
	
	method jugadorConMasEnergia() {
		if( delanteroIzquierdo.energia() > delanteroDerecho.energia() and 
		    delanteroIzquierdo.energia() > defensor.energia())
			return delanteroIzquierdo
		
		
		if( delanteroDerecho.energia() > delanteroIzquierdo.energia() and 
			delanteroDerecho.energia() > defensor.energia())
			return delanteroDerecho
			
		return defensor
		
	}		

}

