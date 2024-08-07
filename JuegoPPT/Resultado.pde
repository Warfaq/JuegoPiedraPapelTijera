class Resultado {
  String resultado;

  Resultado() {
    this.resultado = "";
  }

  void setResultado(String resultado) {
    this.resultado = resultado;
  }

  String getResultado() {
    return this.resultado;
  }

  void mostrarResultado() {
    println(this.resultado);
  }
}
