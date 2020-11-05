class Estalactita{

 float xe1, ye1;
 PImage Estala;
 Estalactita(float xe, float ye){
 Estala = loadImage("Estalactita.png");
 this.xe1 = xe;
 this.ye1 = ye;
 
 
 }
void estalactitaImprimir(){
  image(Estala, xe1, ye1 - 50, 300, 300);
 
}
void estalactitaCaida(){
  if ((x > 170) || (ye1 < height)){
    ye1= ye1+1;
  }
}

void estalactitaColision(){
    if ((ye1+270 >= y) && (xe1+200 >= x)) {
      
    N = 3;

  }

}
}
