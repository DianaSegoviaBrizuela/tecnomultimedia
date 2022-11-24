class Paleta {
  
  //PROPIEDADES
  float y;
  int alto;
  int largo;
  
  //CONSTRUCTOR
  Paleta(float _y, int _alto, int _largo) {
    y = _y; //height-100
    alto = _alto; //120
    largo = _largo; //20
  }
  
  //METODOS
  void dibujar() {
    pushStyle();
    noStroke();
    fill(verde);
    rect(mouseX, y, alto, largo);
    popStyle();
  }
}
