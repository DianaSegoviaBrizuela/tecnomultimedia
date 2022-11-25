class Pantalla {

  //PROPIEDADES------------------------------------

  String nombreDePantalla = "inicio";
  PImage tiste, love, instruccion, win, volver;
  PFont fuente1, fuente2;
  boolean perdio = false; 
  boolean gano = false;

  AudioPlayer perdiste;
  AudioPlayer ganaste;
  AudioPlayer mybeat2;

  Boton botonInicio = new Boton(0);
  Boton botonInstrucciones = new Boton(1);
  Boton botonCreditos = new Boton(5);

  Bloque[] bloques;
  Pelota pelota;
  Paleta paleta;
  Puntaje puntaje;

  //CONSTRUCTOR-----------------------------------

  Pantalla() {

    perdiste = minim.loadFile("perdiste.wav");
    ganaste = minim.loadFile("ganaste.wav");
    mybeat2 = minim.loadFile("mybeat2.wav");

    imageMode (CENTER);
    tiste = loadImage ("triste.png");
    love = loadImage ("love.png");
    instruccion = loadImage ("inst.png");
    win = loadImage ("winner.png");
    volver = loadImage ("credit.png");
    fuente1 = createFont( "iomanoid.ttf", 65 );
    fuente2 = createFont( "pixel.TTF", 20 );

    bloques = new Bloque [24];

    //fila 1
    bloques [0] = new Bloque (30, 200, 1);
    bloques [1] = new Bloque(120, 200, 1);
    bloques [2] = new Bloque (210, 200, 1);
    bloques [3] = new Bloque (300, 200, 1);
    bloques [4] = new Bloque (390, 200, 1);
    bloques [5] = new Bloque (480, 200, 1);
    //fila 2
    bloques [6] = new Bloque (30, 250, 2);
    bloques [7] = new Bloque(120, 250, 2);
    bloques [8] = new Bloque (210, 250, 2);
    bloques [9] = new Bloque (300, 250, 2);
    bloques [10] = new Bloque (390, 250, 2);
    bloques [11] = new Bloque (480, 250, 2);
    //fila 3
    bloques [12] = new Bloque (30, 300, 3);
    bloques [13] = new Bloque(120, 300, 3);
    bloques [14] = new Bloque (210, 300, 3);
    bloques [15] = new Bloque (300, 300, 3);
    bloques [16] = new Bloque (390, 300, 3);
    bloques [17] = new Bloque (480, 300, 3);
    //fila 4
    bloques [18] = new Bloque (30, 350, 4);
    bloques [19] = new Bloque(120, 350, 4);
    bloques [20] = new Bloque (210, 350, 4);
    bloques [21] = new Bloque (300, 350, 4);
    bloques [22] = new Bloque (390, 350, 4);
    bloques [23] = new Bloque (480, 350, 4);

    pelota = new Pelota(random (10, 590), 450, 0.2, 0.2, 0.2, 20);
    paleta = new Paleta(height-100, 120, 20);
    puntaje = new Puntaje();
  }

  //METODOS---------------------------------------------------------------

  void dibujar() {

    if (juego.estado == 0) {
      this.dibujarInicio();
    }
    if (juego.estado == 1) {
      this.dibujarInstrucciones();
    }
    if (juego.estado == 2) {
      this.dibujarJugando();
    }
    if (juego.estado == 2 && gano==true) {
      juego.estado = 3;
      this.dibujarGanaste();
    }
    if (juego.estado == 2 && perdio==true) {
      juego.estado = 4;
      dibujarPerdiste();
    }
    if ((juego.estado == 3 || juego.estado == 4) && key == ' ') {
      juego.estado = 5;
      this.dibujarCreditos();
    }
  }

  void mouseMoved() {
    if (juego.estado == 0) {
      botonInicio.mouseMoved();
    }
    if (juego.estado == 1) {
      botonInstrucciones.mouseMoved();
    }
    if (juego.estado == 5) {
      botonCreditos.mouseMoved();
    }
  }

  void mouseClicked() {
    if (juego.estado == 0) {
      botonInicio.mouseClicked();
    }
    if (juego.estado == 1) {
      botonInstrucciones.mouseClicked();
    }
    if (juego.estado == 5) {
      botonCreditos.mouseClicked();
    }
  }

  void MiTexto ( String texto, float tam, float x, float y, int MiColor ) {

    pushStyle();
    textAlign( CENTER );
    textSize( tam );
    fill ( MiColor );
    text( texto, x, y );
    popStyle();
  }

  //INICIO--------------------------------------------------------

  void dibujarInicio() {
    pushStyle();
    background(160, 33, 63);

    for ( int i = 0; i < 10; i ++ ) { 
      float tam =  random ( 20, 40 );
      noStroke();
      fill(255, random( 215, 217 ), random( 235, 237), random (144, 146));
      rect ( random(width), random( height ), tam, tam);
    }

    textFont(fuente1);
    MiTexto( "ARKAND", 100, width/2, 125, color (204, 255, 51) );
    MiTexto( "ARKAND", 100, width/2+2, 127, color (204, 255, 51) );
    MiTexto( "HIT IT HARD", 100, width/2, 205, color (204, 255, 51) );
    MiTexto( "HIT IT HARD", 100, width/2+2, 207, color (204, 255, 51) );
    image( love, width/2, height/2, 300, 300);
    textFont( fuente2 );
    popStyle();

    botonInicio.dibujar(width/2-30, height/2+200, 100, "rect", "COMENZAR");
    mybeat2.play();
  }

  //INSTRUCCIONES----------------------------------------------------

  void dibujarInstrucciones() {
    background(242, 92, 84);
    for ( int i = 0; i < 10; i ++ ) { 
      float tam =  random ( 20, 40 );
      noStroke();
      fill(181, 228, 140, 70);
      rect ( random(width), random( height ), tam, tam);
      fill( 244, 132, 95, 60 );
      rect( 50, 100, 500, 600 );
      image( instruccion, width/2, 100, 150, 150);
    }

    textFont( fuente2 );
    MiTexto( "INSTRUCCIONES", 40, width/2, height/2-200, color( 160, 33, 63) );
    MiTexto( "MUEVE EL MOUSE \nPARA GOLPEAR LA\nPELOTA", 20, width/2, random( height/2-113, height/2-110 ), color (204, 255, 51) );
    if ( dist( mouseX, mouseY, width/2, height/2+200) <= 50 ) {
      fill( 181, 228, 140 );
      circle( width/2, height/2+200, 100 );
      MiTexto( "start", 20, width/2, height/2+206, color ( 255, 8, 74 ) );
    }

    MiTexto( "rompe todos\nlos bloques y\nNO LA DEJES\nCAER!", 30, width/2, height/2, color ( 160, 33, 63 ) );
    botonInstrucciones.dibujar(width/2-50, height/2+150, 100, "rect", "START");
  }

  //JUGANDO------------------------------------------------------------

  void dibujarJugando() {
    pushStyle();
    background(10);
    stroke(181, 228, 140);
    strokeWeight(10);
    fill(208, 0, 0);
    rect(0, height-(width+150), width, width+150);
    popStyle();

    for (int i = 0; i < bloques.length; i++) {

      if (bloques[i] != null) {

        bloques[i].dibujar();

        if (bloques[i].tocado(pelota.getX(), pelota.getY())) {
          pelota.invertir();
          bloques[i] = null;
          puntaje.aumentar();
        }
      }

      pelota.dibujar();
      pelota.rebotar();
      pelota.reiniciar();
      paleta.dibujar();
      puntaje.dibujar();
      mybeat2.pause();

      if (pelota.getY() >= height-60) {
        perdio = true;
      }
      if (puntaje.punto == 24) { //modifico el puntaje necesario para ganar
        gano = true;
      }
    }
  }

  //GANASTE--------------------------------------------------------------

  void dibujarGanaste() {
    background( 255, 72, 0 );
    for ( int i = 0; i < 100; i ++ ) { //video, fondo de pantalla de inicio e instrucciones
      float tam =  random ( 20, 40 );
      noStroke();
      fill(255, 234, 0, 70);
      rect ( random(width), random( height ), tam, tam);
    }
    textFont( fuente2 );
    MiTexto( "Ganaste!", 80, width/2, 200, color ( 204, 255, 51 ) );
    MiTexto( "PRESIONE LA BARRA \nESPACIADORA PARA VER \nLOS CREDITOS", 25, width/2, random ( height/2+260, height/2+263 ), color ( 204, 255, 51 ) );
    image( win, 200, height/2, 500, 500);

    mybeat2.pause();
    ganaste.play();
  }

  //PERDISTE---------------------------------------------------------

  void dibujarPerdiste() {   
    background( 0, 89, 129 );

    for ( int i = 0; i < 100; i ++ ) { 
      float tam =  random ( 5, 50 );
      noStroke();
      fill(112, 214, 255, 70);
      rect ( random(width), random (height), 5, tam);
    }

    textFont( fuente2 );
    MiTexto( "Perdiste!", 80, width/2, 200, color ( 54, 191, 252 ) );
    MiTexto( "PRESIONE LA BARRA \nESPACIADORA PARA VER \nLOS CREDITOS", 25, width/2, random ( height/2+260, height/2+263 ), color ( 54, 191, 252 ) );
    image( tiste, width/2, height/2, 300, 300);

    ganaste.pause();
    mybeat2.pause();
    perdiste.play();
  }

  //CREDITOS-------------------------------------------------------------

  void dibujarCreditos() {
    background(160, 33, 63);

    textFont(fuente2);
    MiTexto("GRACIAS POR ELEGIRNOS COMO\nTU FORMA DE ENTRETENIMIENTO", 20, width/2, 55, color (242, 92, 84));

    image(volver, 530, 160, 120, 120);

    textFont(fuente1);
    MiTexto("ARKAND", 100, width/2, 200, color (204, 255, 51));
    MiTexto("ARKAND", 100, width/2+2, 202, color (204, 255, 51));
    MiTexto("HIT IT HARD", 100, width/2, 280, color (204, 255, 51));
    MiTexto("HIT IT HARD", 100, width/2+2, 282, color(204, 255, 51));

    textFont(fuente2);
    MiTexto("HECHO POR:", 13, width/2, 340, color (242, 92, 84));
    MiTexto("RIGLOS LLANO MICAELA Y\nSEGOVIA BRIZUELA DIANA", 17, width/2, 360, color (217, 237, 146));
    MiTexto("TECNO MULTIMEDIA 1, 2022", 20, width/2, 420, color (204, 255, 51));
    MiTexto("PROFESOR, FUENTE DE CONOCIMIENTO Y RECURSOS:", 13, width/2, 450, color (242, 92, 84));
    MiTexto("MATIAS JAUREGUI LORDA", 17, width/2, 470, color (217, 237, 146));
    MiTexto("TOBIAS ALBIROSA", 17, width/2, 490, color (217, 237, 146));
    MiTexto("BASADO EN EL JUEGO", 13, width/2, 530, color (242, 92, 84));
    MiTexto("''ARKANOID BREAK BREAKER''", 17, width/2, 550, color (217, 237, 146));
    MiTexto("IMAGENES OBTENIDAS DE:", 13, width/2, 590, color (242, 92, 84));
    MiTexto("https://www.freepng.es/hd-png/cat-pixel-art.html", 11, width/2, 610, color (217, 237, 146));
    MiTexto("TIPOGRAFIAS OBTENIDAS DE:", 13, width/2, 650, color (242, 92, 84));
    MiTexto("https://www.dafont.com/es/04b-30.font\nhttps://www.dafont.com/es/arkanoid.font", 11, width/2, 662, color (217, 237, 146));

    botonCreditos.dibujar(width/2-30, 690, 100, "rect", "VOLVER");

    perdiste.pause();
    ganaste.pause();
    mybeat2.play();
  }
}
