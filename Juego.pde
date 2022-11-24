class Juego {

  Pantalla pantalla = new Pantalla();

  int estado = 0;
  //void miColor(r, g, b){
    
  //  this.r = r;
  //  this.g = g;
  //  this.b = b;
  //}

  Juego() {
  }

  void dibujar() {

    pantalla.dibujar();
  }

  void mouseMoved() {

    pantalla.mouseMoved();
  }

  void mouseClicked() {

    pantalla.mouseClicked();
  }
}
