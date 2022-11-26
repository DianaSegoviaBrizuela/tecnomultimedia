//https://youtu.be/tOGcWq4_i7g 

import ddf.minim.*;

Minim minim;

Juego juego;

void setup() {

  minim = new Minim(this);
  juego = new Juego();
  

  size( 600, 800 );
  textAlign( CENTER );
  imageMode( CENTER );

 
}

void draw() {
  juego.dibujar();
}

void mouseMoved() {
  juego.mouseMoved();
}

void mouseClicked() {
  juego.mouseClicked();
  println(juego.estado);
}
