object olivia {
	var concentracion = 6
	method recibeMasajes(){
		concentracion += 3
	}
	method discute(){
		concentracion -= 1
	}
	method gradoDeConcentracion(){
		return concentracion
	}
	method banioVapor(){
		
	}
}
object bruno {
	var felicidad = true
	var sed = false
	var peso = 55000
	method recibeMasajes(){
		felicidad = true
	}
	method banioVapor(){
		peso -= 500
		sed = true
	}
	method tomarAgua(){
		sed = false
	}
	method comeFideos(){
		peso += 250
		sed = true
	}
	method corre(){
		peso -= 300
	}
	method noticiero(){
		felicidad = false
	}
	method estaPerfecto(){
		return felicidad and not sed and peso > 50000 and peso < 70000
	}
	method mediodiaEnCasa(){
		self.comeFideos()
		self.noticiero()
		self.tomarAgua()
	}
}
object ramiro {
	var nivelContractura = 0
	var pielGrasosa
	method recibeMasajes(){
		if (nivelContractura > 0){
			nivelContractura -= 1
		}
	}
	method banioVapor(){
		pielGrasosa = false
	}
	method comerBigmac(){
		pielGrasosa = true
	}
	method bajaFosa(){
		pielGrasosa = true
		nivelContractura += 1
	}
	method juegaPaddle(){
		nivelContractura += 3
	}
	method diaDeTrabajo(){
		self.bajaFosa()
		self.comerBigmac()
		self.bajaFosa()
	}
	method nivelContractura(){
		return nivelContractura
	}
	method pielGrasosa(){
		return pielGrasosa
	}
}

object spa{
	var ultimoCliente
	method atender(persona){
		persona.banioVapor()
		persona.recibeMasajes()
		if (ultimoCliente == persona){
			persona.recibeMasajes()
		}
		ultimoCliente = persona
	}
}

