class Pantalla {

  //PROPIEDADES------------------------------------

  AudioPlayer perdiste;
  AudioPlayer ganaste;
  AudioPlayer mybeat2;

  Boton botonInicio = new Boton(0);
  Boton botonInstrucciones = new Boton(1);
  Boton botonJugando = new Boton(2);
  Boton botonGanaste = new Boton(3);
  Boton botonPerdiste = new Boton(4);
  Boton botonCreditos = new Boton(5);

  Bloque[] bloques;
  Pelota pelota;
  Paleta paleta;
  Puntaje puntaje;

  String nombreDePantalla = "inicio";
  PImage tiste, love;
  PFont fuente1, fuente2;

  //CONSTRUCTOR-----------------------------------

  Pantalla() {

    perdiste = minim.loadFile("perdiste.wav");
    ganaste = minim.loadFile("ganaste.wav");
    mybeat2 = minim.loadFile("mybeat2.wav");

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


    pelota = new Pelota(random (10, 590), 450, 0.2, 0.2, 0.32, 20);
    paleta = new Paleta(height-100, 120, 20);
    puntaje = new Puntaje();

    imageMode (CENTER);
    //gamesito = loadImage ("gamer.jpeg");
    tiste = loadImage ("triste.jpeg");
    love = loadImage ("love.jpeg");
  }

  //METODOS---------------------------------------------------------------

  void dibujar() {

   // println("Estado: ", juego.estado);
    if (juego.estado == 0) {
      this.nombreDePantalla = "inicio";
      this.dibujarInicio();
    }
    if (juego.estado == 1) {
      this.nombreDePantalla = "instrucciones";
      this.dibujarInstrucciones();
    }
    if (juego.estado == 2) {
      this.nombreDePantalla = "jugando";
      this.dibujarJugando();
    }
    if (juego.estado == 3) {
      this.nombreDePantalla = "ganaste";
      this.dibujarGanaste();
    }
    if (juego.estado == 4) {
      this.nombreDePantalla = "perdiste";
      this.dibujarPerdiste();
    }
    if (juego.estado == 5) {
      this.nombreDePantalla = "creditos";
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
    if (juego.estado == 2) {
      botonJugando.mouseMoved();
    }
    if (juego.estado == 3) {
      botonGanaste.mouseMoved();
    }
    if (juego.estado == 4) {
      botonPerdiste.mouseMoved();
    }
    if (juego.estado == 5) {
      botonCreditos.mouseMoved();
    }
  }
  void mouseClicked() {
    
  //  println(juego.estado);
    if (juego.estado == 0) {
      botonInicio.mouseClicked();
    }

    if (juego.estado == 1) {
      botonInstrucciones.mouseClicked();
    }
    if (juego.estado == 2) {
      botonJugando.mouseClicked();
    }
    if (juego.estado == 3) {
      botonGanaste.mouseClicked();
    }
    if (juego.estado == 4) {
      botonPerdiste.mouseClicked();
    }
    if (juego.estado == 5) {
      println("est 5");
      botonCreditos.mouseClicked();
    }

    //if (juego.estado == 0) {
    //  botonInicio.mouseClicked();

      switch(juego.estado) {
       
       case 0:
  //     juego.estado = 1;
       break;
       
       case 1:
 //      juego.estado = 2;
       break;
       
       case 2:
//       juego.estado = 3;
       break;
       
       case 3:
  //     juego.estado = 4;
       break;
       
       case 4:
    //   juego.estado = 5;
       break;
       
       case 5:
      // juego.estado = 0;
       break;

      default:
       break;
    }
  }

  //INICIO--------------------------------------------------------

  void dibujarInicio() {
    pushStyle();
    background(azulmarino);
    
    for ( int i = 0; i < 10; i ++ ) { //video, fondo de pantalla de inicio e instrucciones
    float tam =  random ( 20, 40 );
    noStroke();
    fill(255, random( 215, 217 ), random( 235, 237), random (144, 146));
    rect ( random(width), random( height ), tam, tam);
  }
  
    textFont(fuente1);
    MiTexto( "ARKAND", 100, width/2, 125, verde );
    MiTexto( "ARKAND", 100, width/2+2, 127, verde );
    MiTexto( "HIT IT HARD", 100, width/2, 205, verde );
    MiTexto( "HIT IT HARD", 100, width/2+2, 207, verde );

    textFont( fuente2 );
    MiTexto( "HAGA CLICK PARA COMENZAR\nEL JUEGO", 20, width/2, random( height/2+200, height/2+203 ), verde);
    //ID en el ultimo parametro
    popStyle();
    botonInicio.dibujar(width/2, height/2, 40, "rect", "comenzar");

    mybeat2.play();
  }

  //INSTRUCCIONES----------------------------------------------------

  void dibujarInstrucciones() {
    background(turquesa);
    for ( int i = 0; i < 10; i ++ ) { //video, fondo de pantalla de inicio e instrucciones
      float tam =  random ( 20, 40 );
      noStroke();
      fill(verde, 70);
      rect ( random(width), random( height ), tam, tam);
      //image (gamesito, 300, 400, 500, 600);
      fill( turquesa, 150 );
      rect( 50, 100, 500, 600 );
    }

    //textFont( fuente2 );
    MiTexto( "holi", 40, width/2, height/2-200, verde );
    MiTexto( "MUEVE EL MOUSE \nPARA GOLPEAR LA\nPELOTA", 20, width/2, random( height/2-113, height/2-110 ), verde );
    if ( dist( mouseX, mouseY, width/2, height/2+200) <= 50 ) {
      fill( verde );
      circle( width/2, height/2+200, 100 );
      MiTexto( "start", 20, width/2, height/2+206, color ( 255, 8, 74 ) );
    } else {
      fill( 255, 8, 74 );
      circle( width/2, height/2+200, 100 );
      MiTexto( "start", 20, width/2, height/2+206, verde );
    }

    MiTexto( "rompe todos\nlos bloques y\nNO LA DEJES\nCAER!", 30, width/2, height/2, color ( 255, 8, 74 ) );
    //ID en el ultimo parametro
    botonInstrucciones.dibujar(width/2, height/2, 40, "rect", "start");
  }

  //JUGANDO------------------------------------------------------------

  void dibujarJugando() {

    pushStyle();
    background(10);
    stroke(verde);
    strokeWeight(10);
    fill(azulmarino);
    rect(0, height-(width+150), width, width+150);
    popStyle();

    for (int i = 0; i < bloques.length; i++) {

      if (bloques[i] != null) {

        bloques[i].dibujar();

        if (bloques[i].tocado(pelota.getX(), pelota.getY())) {

          fill (azulmarino); //desaparece el bloque = se pinta de color
          pelota.invertir();
         //pelota.picar();
          bloques[i] = null;
          puntaje.aumentar();
          
        } 
        
      }


      pelota.dibujar();
      pelota.rebotar();
      pelota.reiniciar();
      paleta.dibujar();
      puntaje.dibujar();

      //bloques();
      //ID en el ultimo parametro
      botonJugando.dibujar(width/2, height/2, 40, "rect", "game");
    

      //mybeat2.pause();
      
      //boolean perdio = false; 
      
      //if (pelota.getY() >= height-60) {
      //  perdio = true;
      //}
      
      //if (perdio == true) {
      //  this.nombreDePantalla = "perdiste";
      //  this.dibujarPerdiste();
      //}
    }
  }

  //GANASTE--------------------------------------------------------------

  void dibujarGanaste() {

    background( 217, 237, 146 );
    textFont( fuente2 );
    MiTexto( "Ganaste!", 80, width/2, 200, color ( 255, 69, 152 ) );
    MiTexto( "HAGA CLICK PARA VER LOS\nCREDITOS", 25, width/2, random ( height/2+260, height/2+263 ), color ( 255, 69, 152 ) );
    image( love, width/2, height/2, 300, 300);
    
    //ID en el ultimo parametro
    botonGanaste.dibujar(width/2, height/2, 40, "rect", "continuarG");

    mybeat2.pause();
    ganaste.play();
  }

  //PERDISTE---------------------------------------------------------

  void dibujarPerdiste() {
    
    background( 0, 89, 129 );
  textFont( fuente2 );
  MiTexto( "Perdiste!", 80, width/2, 200, color ( 54, 191, 252 ) );
  MiTexto( "HAGA CLICK PARA VER LOS\nCREDITOS", 25, width/2, random ( height/2+260, height/2+263 ), color ( 54, 191, 252 ) );
  image( tiste, width/2, height/2, 300, 300);
  
    //ID en el ultimo parametro
    botonPerdiste.dibujar(width/2, height/2, 40, "rect", "continuarP");
    ganaste.pause();

    mybeat2.pause();
    perdiste.play();
  }

  //CREDITOS-------------------------------------------------------------

  void dibujarCreditos() {

    background(200);
    //ID en el ultimo parametro
    botonCreditos.dibujar(width/2, height/2, 40, "rect", "continuarC");

    perdiste.pause();
    ganaste.pause();

    mybeat2.play();
  }
}
