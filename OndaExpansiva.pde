//MI CLASE ONDAEXPANSIVA
class OndaExpansiva {

  //PROPIEDADES
  int cant= 10;
  boolean click;
  int tam = 50;

  //CONSTRUCTOR ONDA EXPANSIVA
  OndaExpansiva () {
    noFill();
    strokeWeight(2);
    stroke(91, 153, 214, 25);
    for (int a=0; a < cant; a++) {

      tam++;
      circle(mouseX, mouseY, tam);
      circle(mouseX, mouseY, 55-tam+0.6);
      circle(mouseX, mouseY, 100-tam+0.4);
      circle(mouseX, mouseY, 150-tam+0.2);
    }
  }
  

  //MÉTODOS
  void dibujar() {

    if (  mousePressed ) {
      click = true;
    }

    if ( click == true && tam >= 50 && tam <= 600) {

      for (int a=0; a < cant; a++) {
        tam++;
        circle(mouseX, mouseY, tam);
        circle(mouseX, mouseY, 55-tam+0.6);
        circle(mouseX, mouseY, 100-tam+0.4);
        circle(mouseX, mouseY, 150-tam+0.2);
      }
    }
    
    if ( mousePressed && click == true) {
      tam = 50;
    }
  }
}
