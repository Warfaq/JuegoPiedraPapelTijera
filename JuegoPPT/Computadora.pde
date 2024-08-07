class Computadora {
  String eleccion;
  String[] opciones = {"Piedra", "Papel", "Tijera"};

  Computadora() {
    this.eleccion = "";
  }

  void hacerEleccionAleatoria() {
    int indice = int(random(0, opciones.length));
    this.eleccion = opciones[indice];
  }

  String getEleccion() {
    return this.eleccion;
  }
}
