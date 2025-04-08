import elementos.*
object luisa {
  var personajeActivo = floki
  
  method personajeActivo(personaje) { 
    personajeActivo = personaje
  }
  method personajeActivo() = personajeActivo 
  
  method aparece(elemento) {
    personajeActivo.encontrar(elemento)
  } 
}
object floki {
    const armaEquipada = jabalina
    method armaEquipada() = armaEquipada  
  method encontrar(elemento) {
         if (armaEquipada.estaCargada()){
    self.armaEquipada().usarArma()
    elemento.recibirAtaque(self.armaEquipada().potencia())
        }
    }
}
object mario {
    var valorRecolectado = 0
    var ultimoElementoEncontrado = null

  method encontrar(elemento) {
    valorRecolectado = valorRecolectado + elemento.darValor()
    elemento.recibirTrabajo()
    ultimoElementoEncontrado = elemento
    }
    method esFeliz() = valorRecolectado >= 50 || ultimoElementoEncontrado.altura() >= 10
}
