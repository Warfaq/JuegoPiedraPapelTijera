class Jugador {
  String nombre;
  String eleccion;

  Jugador(String nombre) {
    this.nombre = nombre;
    this.eleccion = "";
  }

  void elegir(String opcion) {
    this.eleccion = opcion;
  }

  String getEleccion() {
    return this.eleccion;
  }
}
