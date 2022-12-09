//Riglos Llano Micaela (91342/2) y Segovia Brizuela Diana Aidee (91381/9)
//https://youtu.be/XuYl6uZfDrA  

import ddf.minim.*;

Minim minim;

Juego arkanoid;

  void setup() {

  minim = new Minim(this);
  arkanoid = new Juego();


  size( 600, 800 );
  textAlign( CENTER );
  imageMode( CENTER );
}

void draw() {
  arkanoid.dibujar();
}

void keyPressed() {
  arkanoid.keyPressed();
}

void mouseClicked() {
  arkanoid.mouseClicked();
}
