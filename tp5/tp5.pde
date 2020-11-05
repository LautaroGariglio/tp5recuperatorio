 // llamo la clase juego
 Juego Jueguito;
 // escenario
 PImage Cueva;
 // posision de la persona 
 float   x= 100;
 float   y= 550;
 // navegador de estado
 int N;
 // biblioteca de sonido

 
 void setup(){
   size(1024,768);
   Jueguito= new Juego(0);
   Cueva = loadImage("Cueva.jpg");  
   N = 0;
 } 
 void draw(){
   background(Cueva);
   if (N==0){
   Jueguito.Menu();
   }
   else if (N == 1){
   Jueguito.Arranca();
   Jueguito.Moverse();
   }
   else if (N == 2){
   Jueguito.Victoria();
   }
   else if (N == 3){
   Jueguito.Derrota();
   }
 }
 void mousePressed(){
   Jueguito.clickJugar();
 }
