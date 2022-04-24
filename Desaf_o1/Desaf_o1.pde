/* 
 Desafío 1: Animación de nombre propio. 
 
 - utilizar al menos 3 variables,
 - hacer uso de text() y figuras primitivas,
 - animar: posición, tamaño, color.
 */

String n = "Diana";
String n2 = "D\ni\na\nn\na";
String a = "S.B";
float r = random (100, 590);
float variable = 10; 
PFont fuenteNueva;

void setup() {

  size(600, 600);
  colorMode(RGB);

  println (n);
  println (n2);
  println (r);
  println (a);
  
  fuenteNueva = loadFont("AgencyFB-Bold-45.vlw");
  
  frameRate (30);
  
}

void draw() {

  background(0); 
  
  variable = random (10, height);
  
  strokeWeight(2);
  stroke(r);
  
  fill (frameCount, 100, 100, 50);
  
  triangle (0, 0, 0, 100, variable, variable);
  triangle (600, 0, 600, 100, variable, variable);
  triangle (200, 0, 400, 0, variable, variable);
  
  triangle (0, 600, 0, 500, variable, variable);
  triangle (600, 600, 600, 500, variable, variable);
  triangle (200, 600, 400, 600, variable, variable);

  
  
  
  textSize(random (15, 25));
  fill(frameCount, r, r, 50);
  
  textFont(fuenteNueva); 
  
  text(n2, 50, 220);
  text(n2, 60, 220);
  text(n2, 70, 220);
  
  text(n2, 530, 220);
  text(n2, 540, 220);
  text(n2, 550, 220);
  
  text(n, 100, 35);
  text(n, 110, 45);
  text(n, 100, 55);
  
  text(n, 450, 50);
  text(n, 460, 60);
  text(n, 450, 70);
  
  text(n, 100, 570);
  text(n, 110, 580);
  text(n, 100, 590);
  
  text(n, 410, 550);
  text(n, 420, 560);
  text(n, 410, 570);
  
  
  textSize(100);
  text(a, 0.9, frameCount);
  text(a, 100, frameCount);
  text(a, 200, frameCount);
  text(a, 300, frameCount);
  text(a, 400, frameCount);
  text(a, 500, frameCount);
  text(a, 600, frameCount);
  
  
}
