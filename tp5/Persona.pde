class Persona{
  //variables tamaño
  float tam;
  //Imagen de la persona
  PImage Personita;
  //constructor
  Persona(){
  Personita = loadImage("Tipito.png");
  }
  //movimiento
  void Izquierda(){
  if (keyCode == LEFT)
  x -= 3;
  }
  void Derecha(){
  if (keyCode == RIGHT)
  x+= 3;

}
void Saltar(){
  if(keyCode == UP){
    if (y > 200){
      y -= 5;
    }
      else if (y <= 200){
         y= y+5;
      }      
    }
    else
    {
    y=450;
    }
  }
void personaImprimir(){
  imageMode(CENTER);
  image(Personita, x, y, 400, 300);
}
void personaEscapa(){
  if(x > width){
    N=2;
  }
}
}
