
class Hogar inherits Elemento{
  var nivelDeMugre
  var confort

  method nivelDeMugre() = nivelDeMugre
  method confort() = confort

  method esBueno()= nivelDeMugre <= (confort / 2)

}

class Huerta {
  var capacidadDeProduccion
  var nivelDeProduccion // es fijo para todas las huertas, VER ACA

  method  capacidadDeProduccion() =  capacidadDeProduccion
  method nivelDeProduccion() = nivelDeProduccion
  method esBueno()= capacidadDeProduccion > nivelDeProduccion
}

class Mascota {
  var nivelDeSalud 

  method nivelDeSalud() = nivelDeSalud
  method esBueno() =nivelDeSalud > 250

}

class Barrio {
  var elementos = []

  method elementos() = elementos.asList()

  method agregarUnElemento (unElemento) {
    elementos.add(unElemento)
  }

  method cantDeElemBuenos() = elementos.count({e =>e.esBueno()})
  method esCopado() = self.cantDeElemBuenos() > (elementos.size() / 2)
  
}