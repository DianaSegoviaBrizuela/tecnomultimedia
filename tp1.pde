//Trabajo práctico #1 - Animando con código.
/*
CONSIGNA: crear una animación con la secuencia de créditos(*) de una película o videojuego seleccionado. Al menos debe contener cinco secuencias de información. Por ejemplo:
 
 Título: una pantalla
 Protagonistas principales y secundarios: 2 o 3 pantallas
 Música y dirección: 2 o 3 pantallas.
 Sería importante respetar la estética de la obra seleccionada
 
 */
PImage imagencero, imagenuno, imagendos, imagentres, imagencuatro;
PFont LS;
color op1, op2, op3, op4, op5, op6, op7, op8, op9, op10, op11, op12, op13, op14;
float movimiento; 
float posicionX1, posicionX2, posicionX3;
float posicionY1, posicionY2, posicionY3;
float tiempo;
float suma;
float velocidad;
float tam;


void setup() {
  
  size(800, 600);
  textAlign(CENTER, CENTER);

  imagencero = loadImage("Cine.png");
  imagenuno = loadImage("The-Simpsons-Movie-PNG-Transparent-Image.png");
  imagendos = loadImage("pngegg.png");
  imagentres = loadImage("the-simpsons.png");
  imagencuatro = loadImage("Simpsons_cast.png");
  LS = createFont("txtsimps.ttf", 400); 
  op1 = 255;
  op2 = 0;
  op3 = 0; 
  op4 = 0;
  op5 = 0;
  op6 = 0;
  op7 = 0;
  op8 = 0;
  op9 = 0;
  op10 = 0;
  op11 = 0;
  op12 = 0;
  op13 = 0;
  op14 = 0;
  tiempo = 0; 
  suma = 5;
  posicionX1 = 300;
  posicionY1 = 150;
  posicionX2 = 250;
  posicionY2 = 750;
  posicionX3 = 100;
  posicionY3 = 40;
  velocidad = 10.0;
  tam = 100;
}

void draw() { 

   println("x:", mouseX);
   println("y:", mouseY);
   println(tiempo);
  
  background(0);
  
  tiempo = tiempo+suma;
  textFont(LS, 45);
  
  //primera aparición de texto
  fill(237, 199, 45, op1);
  text("a TWENTIETH CENTURY FOX\nPresentation", 400 ,285);
  //próximas apariciones de texto
  fill(237, 199, 45, op2);
  text("a GRACIE FILMS Production", 400, 285);
  fill(237, 199, 45, op3);
  text("a MATT GROENING Production", 400 ,285);
  fill(237, 199, 45, op4);
  text("directed by\nDAVID SILVERMAN", 400, 285);
  fill(237, 199, 45, op5);
  text("starring", 400, 285);
  
  if(tiempo < 200){
    op1 = 0;
    
  } else if (tiempo == 300){ 
    op1 = 255;
    
  } else if (tiempo == 350){
    op1 = 0;
    
  } else if (tiempo == 400){
    op2 = 255;
    
  } else if (tiempo == 450){
    op2 = 0;
    
  } else if (tiempo == 500){
    op3 = 255;
    
  } else if (tiempo == 550){
    op3 = 0;
    
  } else if (tiempo == 600){
    op4 = 255;
    
  } else if (tiempo == 650){
    op4 = 0;
    
  } else if (tiempo == 700){
    op5 = 255;
    
  } else if (tiempo == 750){
    op5 = 0;
  }
    
    if (tiempo >= 800){
    image(imagentres, posicionX2, posicionY2-frameCount, 300, 300);
    fill(237, 199, 45);
    text("SIMPSONS COMMUNITY", 400, 690-frameCount);
  }
  
  if (tiempo >= 2750){
    text("DAN CASTELLANETA as", 500, 1255-frameCount);
    text("Homer", 500, 1285-frameCount);
    text("Grampa", 500, 1315-frameCount);
    text("Krusty", 500, 1345-frameCount);
    text("Groundskeeper Wille", 500, 1375-frameCount);
    text("Mayor Qumby", 500, 1405-frameCount);
    text("Sideshow Mel", 500, 1435-frameCount);
    text("Mr.Teeny", 500, 1465-frameCount);
    text("EPA Official", 500, 1495-frameCount);
    text("Itchy", 500, 1525-frameCount);
    text("Barney", 500, 1555-frameCount);
    
    text("JULIE  KAVNER as", 250, 1600-frameCount);
    text("Marge", 250, 1635-frameCount);
    text("Selma", 250, 1665-frameCount);
    text("Patty", 250, 1695-frameCount);
    
    text("NANCY CARTWRIGHT as", 500, 1745-frameCount);
    text("Bart", 500, 1775-frameCount);
    text("Ralph", 500, 1805-frameCount);
    text("Todd", 500, 1835-frameCount);
    text("Nelson", 500, 1865-frameCount);
    
    text("YEARDLEY SMITH as", 250, 1915-frameCount);
    text("Lisa", 250, 1945-frameCount);
    
    text("HANK AZARIA as", 500, 1995-frameCount);
    text("Moe", 500, 2025-frameCount);
    text("Chief Wiggum", 500, 2055-frameCount);
    text("Cletus", 500, 2085-frameCount);
    text("Prof. Frink", 500, 2115-frameCount);
    text("Apu", 500, 2145-frameCount);
    text("Lou", 500, 2175-frameCount);
    text("Comic Book Guy", 500, 2205-frameCount);
    text("Sea Caotain", 500, 2235-frameCount);
    text("Bumblebee Man", 500, 2265-frameCount);
    text("Dr. Nick", 500, 2295-frameCount);
    
    text("HARRY SHEARER as", 250, 2345-frameCount);
    text("Mr. Burns", 250, 2375-frameCount);
    text("Smithers", 250, 2405-frameCount);
    text("Ned Flanders", 250, 2435-frameCount);
    text("Rev. Lovejoy", 250, 2465-frameCount);
    text("Lenny", 250, 2495-frameCount);
    text("Pres. Arnold Schwarzenegger", 300, 2525-frameCount);
    text("Principal Skinner", 250, 2555-frameCount);
    text("Kent Brockman", 250, 2585-frameCount);
    text("Dr. Hibbert", 250, 2615-frameCount);
    text("Otto", 250, 2645-frameCount);
    
    text("PAMELA HAYDEN as", 500, 2695-frameCount);
    text("Milhouse", 500, 2745-frameCount);
    text("Rod Flanders", 500, 2775-frameCount);
    text("Jimbo", 500, 2805-frameCount);
    
    text("TRESS MacNEILLE as", 250, 2855-frameCount);
    text("Medicine Woman", 250, 2885-frameCount);
    text("Mrs. Skinner", 250, 2925-frameCount);
    text("Cat Lady", 250, 2955-frameCount);
    text("Colin", 250, 2985-frameCount);
    text("Cookie Kwan", 250, 3015-frameCount);
    
    text("and A.BROOKS as", 500, 3065-frameCount);
    text("Russ Cargill", 500, 3095-frameCount);
    
  }
  
  //primera aparición de texto
  fill(237, 199, 45, op6);
  text("Also Starring\nKarl Wiedergott as\nEPA Driver\nMan", 400 ,285);
  //próximas apariciones de texto
  fill(237, 199, 45, op7);
  text("MARCIA WALLACE as\nMrs.Krabappel", 400, 285);
  fill(237, 199, 45, op8);
  text("RUSSI TAYLOR as\nMartin", 400 ,285);
  fill(237, 199, 45, op9);
  text("MAGGIE ROSWELL as\nHelen Lovejoy", 400, 285);
  fill(237, 199, 45, op10);
  text("PHIL ROSENTHAL as\nTV Dad", 400, 285);
  fill(237, 199, 45, op14);
  text("BILLIE JOE ARMSTRONG", 400 ,285);
  fill(237, 199, 45, op11);
  text("FRANK EDWIN WRIGHT III", 400, 285);
  fill(237, 199, 45, op12);
  text("MICHAEL PRITCHARD", 400, 285);
  text("JOE MANTEGNA as\nFat Tony", 400 ,285);
  fill(237, 199, 45, op13);
  text("Tom Hanks as\nHimself", 400, 285);
  
  
  if (tiempo < 15294.0){
    op6 = 0;
    
  } else if (tiempo == 15295.0){ 
    op6 = 255;
    
  } else if (tiempo == 15395.0){
    op6 = 0;
    
  } else if (tiempo == 15495.0){
    op7 = 255;
    
  } else if (tiempo == 15595.0){
    op7 = 0;
    
  } else if (tiempo == 15695.0){
    op8 = 255;
    
  } else if (tiempo == 15795.0){
    op8 = 0;
    
  } else if (tiempo == 15895.0){
    op9 = 255;
    
  } else if (tiempo == 15995.0){
    op9 = 0;
    
  } else if (tiempo == 16005.0){
    op10 = 255;
    
  } else if (tiempo == 16105.0){
    op10 = 0;
    
  } else if (tiempo == 16205.0){
    op14 = 255;
    
  } else if (tiempo == 16305.0){
    op14 = 0;
    
  } else if (tiempo == 16405.0){
    op11 = 255;
    
  } else if (tiempo == 16505.0){
    op11= 0;
    
  } else if (tiempo == 16605.0){
    op12 = 255;
    
  } else if (tiempo == 16705.0){
    op12 = 0;
    
  } else if (tiempo == 16805.0){
    op13 = 255;
    
  } else if (tiempo == 16905.0){
    op13 = 0;
  }
  
  image(imagencuatro, 100, 3705-frameCount, 600, 300);
  
  image(imagendos, mouseX, mouseY, 150, 150);
  
  //imagenes de entrada
  image(imagenuno, posicionX1, posicionY1-frameCount, 200, 150);
  
  if (tiempo >= 295){
  posicionX1 = posicionX1 - velocidad;
  } 
  if (tiempo >= 395){
  posicionX1 = posicionX3;
  }
  
  image(imagencero, -35, 0, 850, 700);
  
}
