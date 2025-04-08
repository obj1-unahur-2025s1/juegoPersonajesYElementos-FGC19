import personajes.*
import example.*


object ballesta {
   var estaCargada = true
   method potencia() = 4
   var cantidadFlechas = 10  
   method estaCargada() = cantidadFlechas > 0
   method usarArma() {
     cantidadFlechas = cantidadFlechas - 1
   }
}
object jabalina {
  var estaCargada = true
  method potencia() = 30  
  method estaCargada()= estaCargada 
  method usarArma() {
    estaCargada = false
  }
}

object castillo {
  method altura() = 20
  var defensa = 150  
  method recibirAtaque(arma) {
    defensa = defensa - arma.potencia()
  }
  method recibirTrabajo() {
    defensa = 200.min(defensa + 20)
  }
}
object aurora {
  method altura() = 1 
  var property estaViva = true 
  method recibirAtaque(arma) {
    estaViva = arma.potencia()<10
  }
  method darValor() = 15
  method recibirTrabajo() {
    
  }
}
object tipa {
  var property altura = 8 
  method recibirAtaque(arma) {
    }
    method darValor() = altura*2
    method recibirTrabajo() {
      altura += 1
    }
}