class Oso{
  // cordenadas del oso
  float xo, yo;
  // imagen del oso
  PImage Osoo;
  // variable de sonido
  import processing.sound.*;
  SoundFile file;
  
  Oso(){
  xo= -300;
  yo= 500;
  Osoo = loadImage("Oso.png");
  //file= new SoundFile(this);
 // file = file.loadFile("Rugido.wav");
  // probe implementar el sonido de diferentes maneras y con diferentes bibliotecas 
  // pero no me reconoce las funciones, cuando en otro trabajo lo hice de la misma
  // manera y no me tiro ningun error. Tuve que eliminar el archivo de audio de la
  // carpeta data porque superaba los 25mb que permite subir github.
}

void osoImprimir(){
  imageMode(CENTER);
  image(Osoo, xo+100, yo, 500, 400);
  //file.play();
}
void osoCorre(){
  xo= xo+2;
  if(xo > 200){
    xo = xo +3;
  }
}
void osoColision(){
  if ((xo+270) >= x){
   N= 3;
  }
}

}
