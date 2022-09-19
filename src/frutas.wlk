import personas.*

object verde{}
object rojo{}
object naranja{}
object amarillo{}

object nullColor{}

object nullFruta {
	const property color = nullColor
	const property peso = 0
	const property esGrande = false
	const property energiaQueProvee = 0
	const property energiaQueResta = 0
	method madurar(){}
	method esDeColor(unColor) = false
	method leGusta(persona) = false
}

object manzana {
	var color = verde
	const property peso = 150
	method color() = color
	method esGrande() = peso > 70
	method energiaQueProvee()=if(self.esDeColor(verde)){5}else{14} 
	method energiaQueResta() = 5
	method madurar(){
		color=rojo
	}
	method esDeColor(unColor){
		return color==unColor
	}
	method leGusta(persona)= self.esDeColor(rojo)	
}

object mandarina {
	var peso = 60
	method color() = naranja 
	method peso() = peso
	method esGrande()=peso > 70
	method energiaQueProvee()= if(self.esGrande()){10}else{3}
	method energiaQueResta() = 8
	method madurar(){
		peso *= 1.4
	}
	method leGusta(persona)= self.esGrande()
}

object banana {
	method peso() = 0
	method color() = amarillo
	method esGrande()= false
	method energiaQueProvee()= 5
	method energiaQueResta() = 12
	method madurar(){}
	method leGusta(persona) = not persona.esFeliz()
}