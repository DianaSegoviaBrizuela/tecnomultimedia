class Paleta {

  //PROPIEDADES
  float y;
  int alto;
  int largo;

  //CONSTRUCTOR
  Paleta(float y, int alto, int largo) {
    this.y = y;
    this.alto = alto;
    this.largo = largo;
  }

  //METODOS
  void dibujar() {
    pushStyle();
    noStroke();
    fill(255, 255, 63);
    rect(mouseX, y, alto, largo);
    popStyle();
  }
}
