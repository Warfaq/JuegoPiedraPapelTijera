Jugador jugador;
Computadora computadora;
Resultado resultado;
Juego juego;

void setup() {
  size(600, 400);
  jugador = new Jugador("Jugador 1");
  computadora = new Computadora();
  resultado = new Resultado();
  juego = new Juego(jugador, computadora, resultado);

  juego.iniciarJuego();
}

void draw() {
  background(255);
  textSize(20);
  fill(0);

  // Mostrar puntos de vida y victorias
  text("Vidas: " + juego.vidasJugador, 50, 50);
  text("Puntos obtenidos: " + juego.victoriasJugador, 50, 80);
  text("Victorias Computadora: " + juego.victoriasComputadora, 50, 110);

  // Mostrar botones para elegir Piedra, Papel o Tijera
  fill(150);
  rect(50, 150, 100, 50);  // Botón Piedra
  rect(200, 150, 100, 50); // Botón Papel
  rect(350, 150, 100, 50); // Botón Tijera

  fill(255);
  text("Piedra", 75, 180);
  text("Papel", 225, 180);
  text("Tijera", 375, 180);

  // Mostrar resultado
  fill(0);
  if (juego.resultado != null) {
    text(juego.resultado.getResultado(), 50, 250);
  }
}

void mousePressed() {
  if (mouseX > 50 && mouseX < 150 && mouseY > 150 && mouseY < 200) {
    jugador.elegir("Piedra");
  } else if (mouseX > 200 && mouseX < 300 && mouseY > 150 && mouseY < 200) {
    jugador.elegir("Papel");
  } else if (mouseX > 350 && mouseX < 450 && mouseY > 150 && mouseY < 200) {
    jugador.elegir("Tijera");
  } else {
    return;  // No se ha presionado ningún botón válido
  }

  computadora.hacerEleccionAleatoria();

  println("Jugador elige: " + jugador.getEleccion());
  println("Computadora elige: " + computadora.getEleccion());

  juego.determinarGanador();
  juego.actualizarPuntos();
  juego.actualizarVidas();
}
