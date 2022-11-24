void MiTexto ( String texto, float tam, float x, float y, int MiColor ) {

  pushStyle();
  textAlign( CENTER );
  textSize( tam );
  fill ( MiColor );
  text( texto, x, y );
  popStyle();
}
