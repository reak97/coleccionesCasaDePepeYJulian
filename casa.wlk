import cosas.*

object casa {
  const cosas= []
  method comprar(cosa){
    cosas.add(cosa)
  }

  method cantidadDeCosasCompradas(){
    return cosas.size()
  }
  
  method tirar(cosa){
    cosas.remove(cosa)
  }

  method tieneComida() {
    return cosas.any({c => c.esComida()})
  }

  method vieneDeEquiparse() {
    return self.ultimoElemento().esElectrodomestico()
  }

  method ultimoElemento() {
    return cosas.last()
  }

  method esDerrochona() {
    return self.precioTotalDeCosasCompradas() >= 90000
  }

  method precioTotalDeCosasCompradas() {
    return cosas.sum({c => c.precio()})
  }

  method compraMasCara() {
    return cosas.max({c => c.precio()})
  }

  method precioDeLaCosaMasCara() {
    return self.compraMasCara().precio()
  }
  
  method electrodomesticosComprados() {
    return cosas.filter({c => c.esElectrodomestico()})
  }

  method malaEpoca() {
    return cosas.all({c => c.esComida()})
  }

  method queFaltaComprar(lista) {
    return lista.filter({elemento => not self.fueComprado(elemento)})
  }

  method fueComprado(unaCosa) {
    return cosas.contains(unaCosa)
  }


}