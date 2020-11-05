class Juego{

//estado del juego(navegador)
int n; 
// perseonaje del jugador
Persona Hombre;
//enemigo (el oso)
Oso Osito;
// Obstaculo 1 (Estalactita)
Estalactita Estalactitaa;
// cuadro del boton
PImage Boton;

Juego(int N){
  this.n = N;
  N=0;
  Hombre = new Persona();
  Osito = new Oso();
  Estalactitaa = new Estalactita(600,-30);
  Boton = loadImage("Boton.jpg");
  
}
// Menu principal
void Menu(){   
   background(Cueva);
   image(Boton, width/2 - 100, height/2 +100, 200, 100);
   textSize(48);
   fill(0);
   text("JUGAR" ,width/2 , height/2 +170);
   textAlign(CENTER);
   fill(255);
   text("ESCAPA DE LA CUEVA", width/2, height / 2 -100 );
 }
void Arranca(){     
    Hombre.personaImprimir();
    Osito.osoImprimir();
    Estalactitaa.estalactitaImprimir();   
}
void Moverse(){
  Hombre.Derecha();
  Hombre.Izquierda();
  //Hombre.Saltar();
  Hombre.personaEscapa();
  Osito.osoCorre();
  Osito.osoColision();
  Estalactitaa.estalactitaCaida();
  Estalactitaa.estalactitaColision();
}
void clickJugar(){
  if ((mouseX >width/2 - 100) && (mouseX <width/2 + 100) && (mouseY >height/2 +100) && (mouseY < height/2 +200)) {
    N=1;
  }
}
void Victoria(){
  background(Cueva);
  fill(255);
  text("¡¡GANASTE!!", width/2, height/2);
}
void Derrota(){
  background(Cueva);
  fill(255);
  text("¡¡PERDISTE!!", width/2, height/2);
}
}
