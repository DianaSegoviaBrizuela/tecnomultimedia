class Puntaje {

  int punto;

  Puntaje() {

    punto = 0;
  }
  
  void dibujar(){
    
    String texto = " 0";
    texto = ""+nf(punto);
    fill(verde);
    textSize(20);
    text("Puntaje: " + texto, 100, 35);
    
  }
  
  void aumentar(){
    
    punto++;
    
  }
  
}
