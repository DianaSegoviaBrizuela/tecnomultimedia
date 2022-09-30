//MI CLASE PECERA
class Estanque { 

  //PROPIEDADES
  PImage water; 
  OndaExpansiva one;
  Pescado Mica, Sofi, Di, Nay, Eve, Naza;

  //CONSTRUCTOR
  Estanque () {
    water = loadImage("piedritas.jpg");
    one = new OndaExpansiva();
    Mica = new Pescado(-200, -200);
    Sofi = new Pescado(width/2, 200);
    Di = new Pescado (50, 400);
    Nay = new Pescado(-50, 50);
    Eve = new Pescado(width/2-100, 10);
    Naza = new Pescado (-10, -250);
  }



  //MÉTODOS
  void dibujar() {
    image(water, 0, 0);

    one.dibujar();
    Mica.dibujo();
    Sofi.dibujo();
    Di.dibujo();
    Nay.dibujo();
    Eve.dibujo();
    Naza.dibujo();

      if (keyPressed) {
        Mica.volver();
        Sofi.volver2();
      }
    }
  }
