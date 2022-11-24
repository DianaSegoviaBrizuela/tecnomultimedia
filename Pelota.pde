class Pelota {
  
  AudioPlayer pop;
  
  //PROPIEDADES
  float x;
  float y;
  float vel;
  float velX;
  float velY;
  int tam;
  
  //CONSTRUCTOR
  Pelota(float x, float y, float vel, float velX, float velY, int tam) {
    
    pop = minim.loadFile("pop.wav");
    this.x = x; // random( width );
    this.y = y; // height-200;
    this.vel = vel;
    this.velX = velX;
    this.velY = velY;
    this.tam = tam; // 20;
  }

  //METODOS
  void rebotar() {

    //bordes 
    
    if (x >= width-13) {
      velX = - vel;
      pop.play();
    }

    if (x <= 13) {
      velX = + vel;
      pop.play();
    }
 
    if (y >= height-7) {
      velY = - vel;
      pop.play();
    }

    if (y <= 65) {
      velY = + vel;
      pop.play();
    }

    //paleta
    if (x + 10 >= mouseX && x + 10 <= mouseX + 120 && y + 10 >= height-100 && y + 10 <= height-100 + 20 || y >= height-20){
      velY = - vel;
      pop.play();
    }
    
    x+= velX ;
    y+= velY ;

  }

  void dibujar() {
    pushStyle();
    noStroke();
    fill(verde);
    circle(x, y, tam);
    popStyle();
  }
  
  void reiniciar() {
    if (keyPressed && key == ' ') {
      vel = 0.2;
      velX = 0.2;
      velY = 0.2;
      x = random (10, 590);
      y = 450;
    }  
  }    
  
 void invertir(){
      
      velX = 0.2;
      velY = 0.2;
      velX = -0.2;
      velY = -0.2;
      
}

float getX(){
  return x;
}

float getY(){
  return y;
}


}
