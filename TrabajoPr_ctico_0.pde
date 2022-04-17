//Trabajo Práctico 0
//Temática: muñeco de nieve.
//Propuesta: Calabaza maldita que se hace pasar por un muñeco de nieve. 
  

  void setup() {
    
    size (600, 600);
  colorMode (HSB, 100, 100, 100);
  
  
  }
  
  void draw() {
    
    background(0);
    
    println("x:");
    println(mouseX);
    println("y:");
    println(mouseY);
    
    //Trees:
    noStroke();
    fill(44, 98, 51, 80);
    
    beginShape();
    curveVertex(600, 600);
    curveVertex(600, 116);
    curveVertex(504, 18);
    curveVertex(480, 16);
    curveVertex(540, 244);
    curveVertex(478, 222);
    curveVertex(451, 245);
    curveVertex(534, 366);
    curveVertex(543, 539);
    curveVertex(600, 600);
    
    endShape(CLOSE);
    
    beginShape();
    curveVertex(455, 452);
    curveVertex(431, 270);
    curveVertex(433, 135);
    curveVertex(393, 153); 
    curveVertex(391, 250);
    curveVertex(374, 269);
    curveVertex(420, 420);
    curveVertex(455, 452);
    
    endShape(CLOSE);
    
    //Moon:
    
    strokeWeight(2);
    stroke(60, 5, 30);
    fill(40, 5, 70);
    circle(294, 78, 100);
    noStroke();
    fill(60, 5, 30, 100);
    circle(292, 45, 10);
    circle(270, 75, 7);
    circle(255, 99, 10);
    circle(317, 75, 10);
    circle(292, 99, 15);
    circle(327, 99, 7);
    circle(271, 99, 4);
    circle(310, 99, 4);
    circle(279, 62, 4);
    circle(307, 62, 4);
     strokeWeight(4);
    stroke(60, 5, 30, 100);
    line(292, 54, 292,87); 
    
    //líneas blancas de la calle:
    stroke(300, 0, 100);
    strokeWeight(4);
    
    line (0, 600, 300, 300);
    line (600, 600, 300, 300);
    line(47, 600, 265, 363);
    line(550, 600, 329, 363);
    
    //Sensores de la calle:
    strokeWeight(3);
    stroke(10, 100, 100);
    fill(15, 100, 200);
    
    rect(34, 577, 12, 12);
    rect(93, 517, 10, 10);
    rect(147, 465, 8, 8);
    rect(196, 415, 6, 6);
    rect(224, 385, 4, 4);
    
    rect(552, 577, 12, 12);
    rect(493, 517, 10, 10);
    rect(445, 465, 8, 8);
    rect(395, 415, 6, 6);
    rect(371, 389, 4, 4);
    
    //Cuadrado al costado:
    stroke (100, 100, 100, 70);
    line (350, 0, 350, 200);
    line(350, 200, 600, 200);
    fill(100, 100, 100, 70);
    rect(350, 0, 600, 200);
    
    //Parte inferior del muñeco dentro del cuadrado:
    fill(100, 100, 100);
    ellipse(480, 100, 150, 150);
    
    beginShape();
    
    curveVertex(480, 200);
    curveVertex(480, 170);
    curveVertex(410, 200);
    curveVertex(540, 200);
    curveVertex(410, 200);
    
    endShape(CLOSE);
    
    //Faros:
    
    strokeWeight(25);
    
    //Primer faro:
    stroke(0, 0, 80, 90);
    line(32, 535, 32, 76);
    noStroke();
    fill(0, 0, 80, 100);
    rect(8, 521, 50, 30);
    fill(0, 0, 80, 30);
    rect(8, 521, 50, 30);
    fill(0, 0, 80, 100);
    rect(35, 73, 70, 35);
    fill(0, 0, 100);
    rect(38, 107, 62, 6);
    fill(0, 0, 100, 30);
    beginShape();
    vertex(50, 106);
    vertex(28, 530);
    vertex(129, 530);
    vertex(86, 106);
    vertex(50, 106);
    endShape(CLOSE);
    
    //Segundo faro:
    stroke(0, 0, 80, 65);
    line(125, 449, 125, 132);
    noStroke();
    fill(0, 0, 100, 85);
    rect(108, 447, 38, 20);
    fill(0, 0, 100, 60);
    rect(128, 130, 60, 28);
    fill(0, 0, 100);
    rect(133, 157, 50, 6);
    fill(0, 0, 100, 30);
    beginShape();
    vertex(145, 160);
    vertex(125, 450);
    vertex(195, 450);
    vertex(169, 160);
    vertex(145, 160);
    endShape(CLOSE);
    
    //Tercer faro:
    stroke(0, 0, 80, 45);
    line(190, 382, 190, 215);
    noStroke();
    fill(0, 0, 100, 65);
    rect(174, 384, 35, 17);
    fill(0, 0, 100, 65);
    rect(192, 212, 38, 20);
    fill(0, 0, 100);
    rect(196.5, 229, 28, 6);
    fill(0, 0, 100, 28);
    beginShape();
    vertex(205, 232);
    vertex(201, 388);
    vertex(230, 391);
    vertex(220, 232);
    vertex(205, 232);
    endShape(CLOSE);
    
    //Cuarto faro:
    stroke(0, 0, 80, 40);
    line(247, 354, 247, 252);
    noStroke();
    fill(0, 0, 100, 65);
    rect(224, 360, 10, 10);
    
    
    //Brazos:
    strokeWeight(10);
    stroke(13, 100, 35);
    line(250, 360, 200, 310);
    line(350, 360, 397, 310);
    
    line(200, 310, 210, 295);
    line(200, 310, 178, 290);
    line(200, 310, 175, 316);
    
    line(399, 311, 389, 288);
    line(399, 311, 417, 291);
    line(399, 311, 426, 313);
    
    //Líneas amarillas de la calle:
    strokeWeight(20);
    stroke(15, 100, 100);
    line(300, 600, 300, 550);
    line(300, 500, 300, 450);
    rect(300, 550, 0.5, 3);
    rect(300, 500, 0.5, 3);
    
    //Adornos:
    
    strokeWeight(10);
    stroke(5, 100, 60, 100);
    line(300, 201, 300, 182);
    
  
    //Cuerpo del muñeco de nieve:
    strokeWeight(2);
    stroke(100, 100, 50);
    
    fill(100, 100, 100);
    ellipse(300, 380, 150, 150);
    ellipse(300, 260, 120, 120);
    ellipse (250, 460,50, 50);
    ellipse (350, 460,50, 50);
    
    //Un tipo de bufanda???
    strokeWeight(15);
    stroke(40, 30, 100);
    beginShape();
    curveVertex(332, 312);
    curveVertex(316, 319);
    curveVertex(303, 321);
    curveVertex(280, 317);
    curveVertex(267, 311);
    curveVertex(255, 316);
    curveVertex(352, 323);
    curveVertex(270, 331);
    curveVertex(296, 332);
    curveVertex(324, 332);
    curveVertex(350, 326);
    curveVertex(348, 322);
    curveVertex(332, 312);
    endShape(CLOSE);
    fill(40, 0, 100);
    circle(263, 338, 8);
    
    //Botones:
    noStroke(); 
    fill (0, 0, 0);
    ellipse(300, 380, 20, 20);
    ellipse(300, 350, 20, 20);
    ellipse(300, 410, 20, 20);
    
    //Sonrisa:
    strokeWeight(2);
    stroke(100, 100, 70);
    fill (41, 0, 99);
    arc(300, 280, 50, 50, 0, PI);
    noStroke();
    fill(0, 0, 0);
    triangle(280, 282, 291, 282, 286, 294);
    fill(100, 100, 100);
    triangle(283, 286, 289, 286, 286, 294);
    fill(0, 0, 0);
    triangle(308, 282, 319, 282, 314, 294);
    fill(100, 100, 100);
    triangle(310, 286, 316, 286, 314, 294);
    strokeWeight(1);
    stroke(100, 100, 50);
    circle(289, 295, 3);
    circle(283, 298, 3);
    circle(309, 299, 3);
    circle(319, 293, 3);
    
    
    //Sombra muñeco:
    noStroke();
    fill(15, 100, 100, 90);
    circle(300, 260, 105);
    circle(300, 380, 137);
    circle(250, 460, 43);
    circle(350, 460, 43);
    strokeWeight(3);
    stroke(15, 100, 100, 50);
    line(231, 341, 200, 310);
    line(368, 342, 397, 310);
    
    line(203, 306, 210, 295);
    line(198, 307, 178, 290);
    line(194, 312, 175, 316);
    
    line(396, 306, 389, 288);
    line(401, 308, 417, 291);
    line(404, 312, 426, 313);
    
    //Luces izquierdas auto:
    noStroke();
    fill(15, 70, 100, 70);
    
    beginShape();
    
    vertex(292, 357);
    vertex(198, 357);
    vertex(178, 610);
    vertex(220, 610);
    
    endShape(CLOSE);
    
    //Luces Derechas auto:
    beginShape();
    
    vertex(312, 357);
    vertex(412, 357);
    vertex(411,610);
    vertex(372, 610);
    
    endShape(CLOSE);
    
    //Luces, faros:
    
    fill(15, 100, 75);
    rect(170, 591, 65, 10);
    rect(358, 591, 65, 10);
    
    //Línea del labio superior:
    strokeWeight(2);
    stroke(100, 100, 70);
    line(275, 280, 324, 280);
    
    //Ojos:
    stroke(100, 100, 70);
    fill(0, 0, 0);
    triangle(276, 232, 259, 259, 295, 259);
    triangle(325, 232, 307, 259, 343, 259);
    
    fill(15, 100, 100);
    circle(273, 251, 10);
    circle(325, 247, 10);
    
    
    //Cejas:
    strokeWeight(3);
    stroke (0, 0, 0);
    line(297, 245, 280, 220);
    line(305, 245, 322, 220);
    
    //Cara del muñeco en cuadrado:
    stroke(100, 100, 85);
    fill(0, 0, 0);
    triangle(473, 110, 437, 57, 424, 105);
    triangle(491, 110, 527, 57, 537, 105);
    fill(15, 100, 100);
    circle(436, 97, 13);
    circle(522, 83, 13);
    
    stroke(100, 100, 60);
    line(464, 142, 517, 142);
    
    stroke(0, 0, 0);
    line(485, 99, 519, 45);
    line(475, 99, 443, 45);
    
    stroke(100, 100, 85);
    fill(10, 100, 100);
    triangle(481, 114, 466, 130,500, 130); 
    
    stroke(100, 100, 60);
    noFill();
    beginShape();
    vertex(463, 142);
    vertex(454, 133);
    vertex(435, 140);
    
    endShape(CLOSE);
    
    strokeWeight(2);
    stroke(100, 100, 83);
    fill(100, 100, 100);
    circle(461, 145, 7);
    circle(452, 146, 7);
    circle(452, 146, 7);
    circle(456, 154, 3);
    circle(443, 160, 3);
    circle(437, 143, 7);
    
    //Texto:
    stroke(100, 100, 50);
    textSize(55);
    text("Attention!", 5, 46);
    
    
    }
