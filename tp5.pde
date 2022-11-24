import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioPlayer pop;


int verdeclaro, verde, turquesa, azul, azulmarino;
//int victorias, derrotas;

//int tamRect; //BLOQUES
//int cant = 7; //BLOQUES
//color [][] celda; //BLOQUES

Juego juego;
void setup() {
   
  minim = new Minim(this);
  juego = new Juego();
  player = minim.loadFile("mybeat.wav");
 

  size( 600, 800 );
  textAlign( CENTER );
  imageMode( CENTER );

  //COLORES
  verdeclaro = color( 217, 237, 146 );
  verde = color( 181, 228, 140 );
  //verde = color( 118, 200, 147 );
  turquesa = color( 52, 160, 164 );
  azul = color( 26, 117, 159 );
  azulmarino = color( 24, 78, 119 );



  //VICTORIAS Y DERROTAS
  //victorias = derrotas = 0;

  //  celda = new color [cant][cant];

  //  tamRect = width/cant;
  //  for ( int x=0; x<cant; x++ ) { //pinta de un color aleatorio los bloques, esta en el setup para que solo se pinten una vez
  //    for (int y=0; y<cant; y++) {

  //      celda[x][y] = color( random( 130, 140 ), random (200, 255), random (150, 250) );
  //    }
  //  }
}

void draw() {

  juego.dibujar();
  //player.play();

}


  void mouseMoved() {
    juego.mouseMoved();
  }
  void mouseClicked() {
    juego.mouseClicked();
    println(juego.estado);
  }
