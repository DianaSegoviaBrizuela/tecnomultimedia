/* https://youtu.be/jBGvGf_Prh4

Trabajo práctico #2 - Ilusión óptica Interactiva:
 
 CONSIGNA: crear una ilusión óptica* interactiva** con estructuras repetitivas (ciclos for) y funciones propias.
 
 OBJETIVO: Comprender las estructuras repetitivas en Processing a través de la visualización de patrones de repetición, modulables por la apropiación de los índices (variable de la repetición).
 
 CONTENIDOS OBLIGATORIOS:
 
 -Estructuras repetitivas (ciclos for): simples o anidados.
 -Funciones propias con y sin parámetros
 -Condicionales (if - else): interactuar con los índices.
 -Eventos (mouse y/o teclado): modificación de variables.
 -Algunas funciones matemáticas: dist(), map(), random().
 -Reiniciar el programa: volver variables a estado original.
 
 -Peso máximo 10 MB.*/

int ancho;
int cant;
int tam;
int p;
float x, y, x1, y1;

void setup() {
  size(800, 600);

  ancho = 25;
  cant  = 50;
  tam   = width/cant;
  x = 200;
  y = 150;
}

void draw() {

  background(random (0, 255));
  strokeWeight(3);
  float idk = map (mouseX, 400, 800, 200, random (200, 300));

  noFill();
  for (int x=0; x<cant; x+=1) {
    for (int y=0; y<cant; y+=1) {
      float d = dist(mouseX, mouseY, x*tam, y*tam);
      float tono = d*255/dist(width, height, 0, 0);
      fill(255, 50, 50, tono);
      rect(x*tam, y*tam, random (10, 50), random (10, 50));
    }
  }

  for (int c= 200; c>0; c-=15) {
    if ((c)%4==0) {
      fill(255, 0, 0, 100);
    } else if ((c)%2==0) {
      fill(206, 124, 0, 50);
    }
    noStroke(); 
    ellipse(mouseX, mouseY, c, idk);
  }

  for (int i=0; i<height; i+=ancho) {
    stroke(0);
    line (i, random (0, 10), random (795, 800), i);
  }

  for (int i=0; i<width; i+=ancho) {
    stroke(0);
    line (i, random (580, 600), random (0, 20), i);
  }

  if (key == ' ') {
    miCuadradito();
  }

}

void keyPressed() {
  noFill();
  for (int x=0; x<cant; x+=2) {
    for (int y=0; y<cant; y+=2) {
      if ((x+y)%3==0) {
        fill(5, 65, 255, 200);
      } else {
        fill(255, 112, 5, 200);
      }
      stroke(255);
      ellipse(x*tam, y*tam, random (10, 50), random (10, 50));
    }
  }
}


void mousePressed() {
  reiniciar();
}

void reiniciar() {
   ancho = 25;
  cant  = 50;
  tam   = width/cant;
  x = 200;
  y = 150;
  background(255);
}

void miCuadradito() {
  fill(255, 3, 255, 155);
  x+= random(3, -width/2);
  y+= random (3, -height/2);
  rect(x, y, 55, 55);
}
