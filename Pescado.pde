//MI CLASE PESCADO
class Pescado { 

  //PROPIEDADES
  int c;
  PImage [] pez = new PImage[3];
  float posX, posY;

  //CONSTRUCTOR
  Pescado(int x_, int y_) { 

    for (int p = 0; p < 3; p++) {
      pez[p] = loadImage ("pez" + p + ".png");
    }

    posX = x_;
    posY = y_;
    c = 0;
    frameRate(8);
  }

  //MÉTODOS

  void dibujo() {
    posX = posX+15;
    image (pez [c], posX, posY);
    c = (c+1) % pez.length;
  }
  
  void volver(){
    posX = -300;
    posY = 150;
    c = 0;
  }
  
  void volver2(){
    posX = -200;
    posY = -100;
    c = 0;
  }
}
