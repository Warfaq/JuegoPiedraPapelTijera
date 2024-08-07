class Juego {
  int victoriasJugador = 0;
  int victoriasComputadora = 0;
  int vidasJugador = 3; // Vidas predeterminadas
  Jugador jugador;
  Computadora computadora;
  Resultado resultado;

  Juego(Jugador jugador, Computadora computadora, Resultado resultado) {
    this.jugador = jugador;
    this.computadora = computadora;
    this.resultado = resultado;
  }

  void iniciarJuego() {
    println("Bienvenido al juego de Piedra, Papel o Tijera");
    println("Tienes " + vidasJugador + " vidas");
  }

  void determinarGanador() {
    String eleccionJugador = jugador.getEleccion();
    String eleccionComputadora = computadora.getEleccion();

    if (eleccionJugador.equals(eleccionComputadora)) {
      resultado.setResultado("Empate");
    } else if ((eleccionJugador.equals("Piedra") && eleccionComputadora.equals("Tijera")) ||
               (eleccionJugador.equals("Papel") && eleccionComputadora.equals("Piedra")) ||
               (eleccionJugador.equals("Tijera") && eleccionComputadora.equals("Papel"))) {
      resultado.setResultado("Gana Jugador");
      victoriasJugador++;
    } else {
      resultado.setResultado("Gana Computadora");
      victoriasComputadora++;
      vidasJugador--;
    }

    resultado.mostrarResultado();
  }

  void actualizarPuntos() {
    println("Jugador: " + victoriasJugador + " | Computadora: " + victoriasComputadora);
  }

  void actualizarVidas() {
    if (vidasJugador <= 0) {
      println("Te has quedado sin vidas. Fin del juego.");
      iniciarJuego(); // Reiniciar el juego
    } else {
      println("Vidas restantes: " + vidasJugador);
    }
  }
}
