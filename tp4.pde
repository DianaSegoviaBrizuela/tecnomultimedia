//https://youtu.be/UiDKX2nZtHA

//Pantalla principal: declarar objetos.
Estanque Uno;

void setup(){
  size (800, 600);
  rectMode (CENTER);
  
  Uno = new Estanque ();
  
   
}

void draw(){
   
Uno.dibujar();

pushStyle();
noStroke();
fill (91, 153, 214, 75);
rect (width/2, height/2, 800, 800);
popStyle();
}
